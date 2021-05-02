cp qmake.conf qt-everywhere-opensource-src-5.6.0/qtbase/mkspecs/linux-arm-gnueabi-g++/
cd qt-everywhere-opensource-src-5.6.0

./configure \
        -prefix /opt/qt/qt5.6.0_arm \
        -confirm-license \
        -opensource \
        -release  \
        -make libs \
        -xplatform linux-arm-gnueabi-g++ \
        -optimized-qmake \
        -pch \
        -qt-sql-sqlite \
        -qt-zlib \
        -no-opengl \
        -no-sse2 \
        -no-openssl \
        -no-nis \
        -no-cups \
        -no-glib \
        -no-dbus \
        -no-separate-debug-info \
        -nomake examples \
        -nomake tools \
        -nomake tests \
        -no-iconv \
        -tslib \
        -I $(pwd)/../../tslib-1.4/out/include \
        -L $(pwd)/../../tslib-1.4/out/lib \
        --prefix=$(pwd)/../out/opt/qtlib
		
make -j4
make install

