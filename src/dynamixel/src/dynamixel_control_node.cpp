#ifdef __linux__
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#elif defined(_WIN32) || defined(_WIN64)
#include <conio.h>
#endif

#include "../include/dynamixel/dynamixel_interface.h"
#include <dynamixel_sdk/dynamixel_sdk.h>                                  // Uses DYNAMIXEL SDK library

// Control table address
#define ADDR_PRO_TORQUE_ENABLE          512                 // Control table address is different in Dynamixel model
#define ADDR_PRO_GOAL_POSITION          564
#define ADDR_PRO_PRESENT_POSITION       580

// Data Byte Length
#define LEN_PRO_GOAL_POSITION            4
#define LEN_PRO_PRESENT_POSITION         4

// Protocol version
#define PROTOCOL_VERSION                2.0                 // See which protocol version is used in the Dynamixel

// Default setting
#define DXL1_ID                         1                   // Dynamixel#1 ID: 1
#define DXL2_ID                         2                   // Dynamixel#2 ID: 2
#define DXL3_ID                         3                   // Dynamixel#1 ID: 3
#define DXL4_ID                         4                   // Dynamixel#2 ID: 4
#define DXL5_ID                         5                   // Dynamixel#1 ID: 5
#define DXL6_ID                         6                   // Dynamixel#2 ID: 6
#define BAUDRATE                        4000000
#define DEVICENAME                      "/dev/ttyUSB1"      // Check which port is being used on your controller
                                                            // ex) Windows: "COM1"   Linux: "/dev/ttyUSB0"

#define TORQUE_ENABLE                   1                   // Value for enabling the torque
#define TORQUE_DISABLE                  0                   // Value for disabling the torque
#define DXL_HPRO_MINIMUM_POSITION_VALUE      -250662        // Dynamixel will rotate between this value, Dynamixel PRO H54 series
#define DXL_HPRO_MAXIMUM_POSITION_VALUE      250662         // and this value (note that the Dynamixel would not move when the position value is out of movable range. Check e-manual about the range of the Dynamixel you use.)
#define DXL_MPRO_MINIMUM_POSITION_VALUE      -263187        // Dynamixel PRO M42- series
#define DXL_MPRO_MAXIMUM_POSITION_VALUE      263187         // and this value (note that the Dynamixel would not move when the position value is out of movable range. Check e-manual about the range of the Dynamixel you use.)
#define DXL_MOVING_STATUS_THRESHOLD     24                  // Dynamixel moving status threshold

#define ESC_ASCII_VALUE                 0x1b

class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
    //퍼블리쉬 할 토픽 선언
    pub_ = n_.advertise<msg_pkg::msg_data>("/JointAnglePacket", 100);

    //섭스크라이브 할 토픽 선언
    sub_pos = n_.subscribe("/ObjectIKPosition", 1, &SubscribeAndPublish::ObjectIKPositionCallBack, this);
  }
  // 물체의 위치를 받는 CallBack function
  void ObjectIKPositionCallBack(const msg_pkg::msg_data::ConstPtr& msg);

  bool keyboardflag = false;
private: //private으로 NodeHandle과 publisher, subscriber를 선언한다.
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_pos;
  msg_pkg::msg_data msg_;
  //msg_pkg::srv_data srv_;
};

void SubscribeAndPublish::ObjectIKPositionCallBack(const msg_pkg::msg_data::ConstPtr& msg)
{
  ROS_INFO("I heard: [%u]", msg->data);
}

/*void SubscribeAndPublish::KeyboardOutputCallBack(const msg_pkg::msg_data::ConstPtr& msg)
{
  msg_.f64_linear_x = msg->f64_linear_x;
  msg_.f64_linear_y = msg->f64_linear_y;
  msg_.f64_linear_z = msg->f64_linear_z;

  msg_.f64_angular_x = msg->f64_angular_x;
  msg_.f64_angular_y = msg->f64_angular_y;
  msg_.f64_angular_z = msg->f64_angular_z;
}*/

int getch()
{
#ifdef __linux__
  struct termios oldt, newt;
  int ch;
  // 기존에 사용하던 터미널 속성 값을 읽어온다. 터미널 속성을 변경하여
  // 사용하다가 작업이 끝나면 기존 속성으로 복구하기 위해 변수를 분리했다.
  tcgetattr(STDIN_FILENO, &oldt);
  // 새로운 터미널 속성은 기존 속성을 기반으로 몇가지만 변경해서 사용할
  // 것이기 때문에 기존 속성 값을 대입하여 사용한다.
  newt = oldt;
  newt.c_lflag &= ~(ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);
  ch = getchar();
  tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  return ch;
#elif defined(_WIN32) || defined(_WIN64)
  return _getch();
#endif
}

int kbhit(void)
{
#ifdef __linux__
  struct termios oldt, newt;
  int ch;
  int oldf;

  tcgetattr(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~(ICANON | ECHO);
  tcsetattr(STDIN_FILENO, TCSANOW, &newt);
  oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
  fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);

  ch = getchar();

  tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
  fcntl(STDIN_FILENO, F_SETFL, oldf);

  if (ch != EOF)
  {
    ungetc(ch, stdin);
    return 1;
  }

  return 0;
#elif defined(_WIN32) || defined(_WIN64)
  return _kbhit();
#endif
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "dynamixel_control_node");
  ros::NodeHandle nh;
  SubscribeAndPublish SAPO;
  /*msg_pkg::srv_data srv;

  ros::ServiceClient client = nh.serviceClient<msg_pkg::srv_data>("keyboard_input");

  srv.request.linear_x = msg_.f64_linear_x;
  srv.request.linear_y = msg_.f64_linear_y;
  srv.request.linear_z = msg_.f64_linear_z;

  srv.request.angular_x = msg_.f64_angular_x;
  srv.request.angular_y = msg_.f64_angular_y;
  srv.request.angular_z = msg_.f64_angular_z;

  if(client.call(srv_)){
    if(srv_.response.linear_x_result == 0.5)
      keyboardflag = true;
    else
      keyboardflag = false;
  }
  else {
    ROS_ERROR("Failed to receive keyboard input!");
  }*/

  // Initialize PortHandler instance
  // Set the port path
  // Get methods and members of PortHandlerLinux or PortHandlerWindows
  dynamixel::PortHandler *portHandler = dynamixel::PortHandler::getPortHandler(DEVICENAME);

  // Initialize PacketHandler instance
  // Set the protocol version
  // Get methods and members of Protocol1PacketHandler or Protocol2PacketHandler
  dynamixel::PacketHandler *packetHandler = dynamixel::PacketHandler::getPacketHandler(PROTOCOL_VERSION);

  // Initialize GroupSyncWrite instance
  dynamixel::GroupSyncWrite groupSyncWrite(portHandler, packetHandler, ADDR_PRO_GOAL_POSITION, LEN_PRO_GOAL_POSITION);

  // Initialize Groupsyncread instance for Present Position
  dynamixel::GroupSyncRead groupSyncRead(portHandler, packetHandler, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);

  // variable points the direction to where the Dynamixel should be rotated
  int index = 0;
  // indicates which error has been occurred during packet communication
  int dxl_comm_result = COMM_TX_FAIL;              // Communication result
  // indicates the result of parameter addition used for sync/bulk related functions
  bool dxl_addparam_result = false;                // addParam result
  // indicates the result of data reception used for sync/bulk related functions
  bool dxl_getdata_result = false;                 // GetParam result
  // stores goal points of Dynamixel rotation
  int dxl_hpro_goal_position[2] = {DXL_HPRO_MINIMUM_POSITION_VALUE, DXL_HPRO_MAXIMUM_POSITION_VALUE};         // Goal position
  int dxl_mpro_goal_position[2] = {DXL_MPRO_MINIMUM_POSITION_VALUE, DXL_MPRO_MAXIMUM_POSITION_VALUE};         // Goal position

  // shows the internal error in Dynamixel
  uint8_t dxl_error = 0;                          // Dynamixel error
  // becomes filled with couple of goal position values to write on each Dynamixel
  uint8_t param_hpro_goal_position[4];
  uint8_t param_mpro_goal_position[4];
  // view where now each Dynamixel points out
  int32_t dxl1_present_position = 0, dxl2_present_position = 0;              // Present position of Dynamixel ID 1,2
  int32_t dxl3_present_position = 0, dxl4_present_position = 0;              // Present position of Dynamixel ID 3,4
  int32_t dxl5_present_position = 0, dxl6_present_position = 0;              // Present position of Dynamixel ID 5,6

  // Open port
  // First, controller opens the port to do serial communication with the Dynamixel. If it fails to open the port, the node will be terminated.
  // Secondly, the controller sets the communication BAUDRATE at the port opened previously
  if (portHandler->openPort())
  {
    ROS_INFO("Succeeded to open the port!\n");
  }
  else
  {
    ROS_INFO("Failed to open the port!\n");
    ROS_INFO("Press any key to terminate...\n");
    getch();
    return 0;
  }
  // Set port baudrate
  if (portHandler->setBaudRate(BAUDRATE))
  {
    ROS_INFO("Succeeded to change the baudrate!\n");
  }
  else
  {
    ROS_INFO("Failed to change the baudrate!\n");
    ROS_INFO("Press any key to terminate...\n");
    getch();
    return 0;
  }

  //As mentioned in the document, above code enables each Dynamixel`s torque to set their status as being ready to move.
  // dynamixel::PacketHandler::write1ByteTxRx() function sends an instruction to the #DXL_ID Dynamixel through the port which the portHandler handles, writing 1 byte of TORQUE_ENABLE value to ADDR_PRO_TORQUE_ENABLE address.
  // Then, it receives the dxl_error. The function returns 0 if no communication error has been occurred.
  // Enable Dynamixel#1 Torque
  dxl_comm_result = packetHandler->write1ByteTxRx(portHandler, DXL1_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_ENABLE, &dxl_error);
  if (dxl_comm_result != COMM_SUCCESS)
  {
    packetHandler->getTxRxResult(dxl_comm_result);
  }
  else if (dxl_error != 0)
  {
    packetHandler->getRxPacketError(dxl_error);
  }
  else
  {
    ROS_INFO("Dynamixel#%d has been successfully connected \n", DXL1_ID);
  }

  // Enable Dynamixel#2 Torque
  dxl_comm_result = packetHandler->write1ByteTxRx(portHandler, DXL2_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_ENABLE, &dxl_error);
  if (dxl_comm_result != COMM_SUCCESS)
  {
    packetHandler->getTxRxResult(dxl_comm_result);
  }
  else if (dxl_error != 0)
  {
    packetHandler->getRxPacketError(dxl_error);
  }
  else
  {
    ROS_INFO("Dynamixel#%d has been successfully connected \n", DXL2_ID);
  }

  // dynamixel::GroupSyncRead::addParam() function stores the Dynamixel ID of required data to the syncread target Dynamixel list
  // Add parameter storage for Dynamixel#1 present position value
  dxl_addparam_result = groupSyncRead.addParam(DXL1_ID);
  if (dxl_addparam_result != true)
  {
    fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", DXL1_ID);
    return 0;
  }

  // Add parameter storage for Dynamixel#2 present position value
  dxl_addparam_result = groupSyncRead.addParam(DXL2_ID);
  if (dxl_addparam_result != true)
  {
    fprintf(stderr, "[ID:%03d] groupSyncRead addparam failed", DXL2_ID);
    return 0;
  }


  // During while() loop, the controller writes and reads each Dynamixel position through packet transmission/reception(Tx/Rx).
  // To continue their rotation, press any key except ESC
  while(1&!(SAPO.keyboardflag))
  {

    // From param_goal_position[0] to param_goal_position[3] becomes filled with each from low-low-byte to high-high-byte part of dxl_goal_position
    // by using predefined function DXL_LOBYTE() and DXL_HIBYTE(), DXL_LOWORD() and DXL_HIWORD()
    // Allocate goal position value into byte array
    param_hpro_goal_position[0] = DXL_LOBYTE(DXL_LOWORD(dxl_hpro_goal_position[index]));
    param_hpro_goal_position[1] = DXL_HIBYTE(DXL_LOWORD(dxl_hpro_goal_position[index]));
    param_hpro_goal_position[2] = DXL_LOBYTE(DXL_HIWORD(dxl_hpro_goal_position[index]));
    param_hpro_goal_position[3] = DXL_HIBYTE(DXL_HIWORD(dxl_hpro_goal_position[index]));

    param_mpro_goal_position[0] = DXL_LOBYTE(DXL_LOWORD(dxl_mpro_goal_position[index]));
    param_mpro_goal_position[1] = DXL_HIBYTE(DXL_LOWORD(dxl_mpro_goal_position[index]));
    param_mpro_goal_position[2] = DXL_LOBYTE(DXL_HIWORD(dxl_mpro_goal_position[index]));
    param_mpro_goal_position[3] = DXL_HIBYTE(DXL_HIWORD(dxl_mpro_goal_position[index]));

    // dynamixel::GroupSyncWrite::addParam() function stores the Dynamixel ID and its goal position param_goal_position to the syncwrite target Dynamixel list
    // Add Dynamixel#1 goal position value to the Syncwrite storage
    dxl_addparam_result = groupSyncWrite.addParam(DXL1_ID, param_hpro_goal_position);
    if (dxl_addparam_result != true)
    {
      fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL1_ID);
      return 0;
    }

    // Add Dynamixel#2 goal position value to the Syncwrite parameter storage
    dxl_addparam_result = groupSyncWrite.addParam(DXL2_ID, param_hpro_goal_position);
    if (dxl_addparam_result != true)
    {
      fprintf(stderr, "[ID:%03d] groupSyncWrite addparam failed", DXL2_ID);
      return 0;
    }

    // dynamixel::GroupSyncWrite::txPacket() function sends an instruction to the Dynamixel #DXL1_ID and #DXL2_ID at the same time through the port which the portHandler handles,
    // making it possible to write same pre-listed length bytes to same pre-listed address. The function returns 0 if no communication error has been occurred
    // Syncwrite goal position
    dxl_comm_result = groupSyncWrite.txPacket();
    if (dxl_comm_result != COMM_SUCCESS) packetHandler->getTxRxResult(dxl_comm_result);

    // dynamixel::GroupSyncWrite::clearParam() function clears the Dynamixel list of groupsyncwrite
    // Clear syncwrite parameter storage
    groupSyncWrite.clearParam();

    do
    {
      // dynamixel::GroupSyncRead::txRxPacket() function sends an instruction to the Dynamixel #DXL1_ID and #DXL2_ID at the same time through the port which the portHandler handles,
      // making it possible to read same pre-listed length(LEN_PRO_PRESENT_POSITION) of bytes to same pre-listed address(ADDR_PRO_PRESENT_POSITION).
      // The function returns 0 if no communication error has been occurred
      // Syncread present position
      dxl_comm_result = groupSyncRead.txRxPacket();
      if (dxl_comm_result != COMM_SUCCESS) packetHandler->getTxRxResult(dxl_comm_result);

      // dynamixel::GroupSyncRead::isAvailable() function checks if available data is in the groupsyncread data storage.
      // The function returns false if no data is available in the storage.
      // Check if groupsyncread data of Dynamixel#1 is available
      dxl_getdata_result = groupSyncRead.isAvailable(DXL1_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
      if (dxl_getdata_result != true)
      {
        fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", DXL1_ID);
        return 0;
      }

      // Check if groupsyncread data of Dynamixel#2 is available
      dxl_getdata_result = groupSyncRead.isAvailable(DXL2_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);
      if (dxl_getdata_result != true)
      {
        fprintf(stderr, "[ID:%03d] groupSyncRead getdata failed", DXL2_ID);
        return 0;
      }

      // dynamixel::GroupSyncRead::getData() function pop the data received by dynamixel::GroupSyncRead::txRxPacket() function out.
      // In the example, it stores LEN_PRO_PRESENT_POSITION byte data got from ADDR_PRO_PRESENT_POSITION address of DXL1_ID andDXL2_ID DYNAMIXEL
      // Get Dynamixel#1 present position value
      dxl1_present_position = groupSyncRead.getData(DXL1_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);

      // Get Dynamixel#2 present position value
      dxl2_present_position = groupSyncRead.getData(DXL2_ID, ADDR_PRO_PRESENT_POSITION, LEN_PRO_PRESENT_POSITION);

      ROS_INFO("[ID:%03d] GoalPos:%03d  PresPos:%03d\t[ID:%03d] GoalPos:%03d  PresPos:%03d\n", DXL1_ID, dxl_hpro_goal_position[index], dxl1_present_position, DXL2_ID, dxl_hpro_goal_position[index], dxl2_present_position);

      // Reading their present position will be ended when absolute value of
      // (dxl_goal_position[index] - dxl1_present_position) or (dxl_goal_position[index] - dxl2_present_position) becomes smaller then DXL_MOVING_STATUS_THRESHOLD.
      // At last, it changes their direction to the counter-wise and waits for extra key input
    }while((abs(dxl_hpro_goal_position[index] - dxl1_present_position) > DXL_MOVING_STATUS_THRESHOLD) || (abs(dxl_hpro_goal_position[index] - dxl2_present_position) > DXL_MOVING_STATUS_THRESHOLD));

    // Change goal position
    if (index == 0)
    {
      index = 1;
    }
    else
    {
      index = 0;
    }
  }

  //The controller frees the DYNAMIXEL to be idle.
  // dynamixel::PacketHandler::write1ByteTxRx() function sends an instruction to the #DXL_ID Dynamixel through the port which the portHandler handles,
  // writing 1 byte of TORQUE_DISABLE value to ADDR_PRO_TORQUE_ENABLE address. Then, it receives the dxl_error.
  // The function returns 0 if no communication error has been occurred.
  // Disable Dynamixel#1 Torque
  dxl_comm_result = packetHandler->write1ByteTxRx(portHandler, DXL1_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_DISABLE, &dxl_error);
  if (dxl_comm_result != COMM_SUCCESS)
  {
    packetHandler->getTxRxResult(dxl_comm_result);
  }
  else if (dxl_error != 0)
  {
    packetHandler->getRxPacketError(dxl_error);
  }

  // Disable Dynamixel#2 Torque
  dxl_comm_result = packetHandler->write1ByteTxRx(portHandler, DXL2_ID, ADDR_PRO_TORQUE_ENABLE, TORQUE_DISABLE, &dxl_error);
  if (dxl_comm_result != COMM_SUCCESS)
  {
    packetHandler->getTxRxResult(dxl_comm_result);
  }
  else if (dxl_error != 0)
  {
    packetHandler->getRxPacketError(dxl_error);
  }

  // Finally, port becomes disposed.
  // Close port
  portHandler->closePort();

  ros::spin();

  return 0;
}
