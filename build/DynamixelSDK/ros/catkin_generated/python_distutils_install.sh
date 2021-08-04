#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/pmgrb6484/F.R.I.D.A.Y/src/DynamixelSDK/ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/pmgrb6484/F.R.I.D.A.Y/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/pmgrb6484/F.R.I.D.A.Y/install/lib/python2.7/dist-packages:/home/pmgrb6484/F.R.I.D.A.Y/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/pmgrb6484/F.R.I.D.A.Y/build" \
    "/usr/bin/python2" \
    "/home/pmgrb6484/F.R.I.D.A.Y/src/DynamixelSDK/ros/setup.py" \
     \
    build --build-base "/home/pmgrb6484/F.R.I.D.A.Y/build/DynamixelSDK/ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/pmgrb6484/F.R.I.D.A.Y/install" --install-scripts="/home/pmgrb6484/F.R.I.D.A.Y/install/bin"
