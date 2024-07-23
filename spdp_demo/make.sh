SDK_ROOT_DIR=$(dirname "$PWD")
TOOLCHAIN_NAME=gcc-arm-12.3-x86_64-arm-none-linux-gnueabihf

INCLUDE_PATH=${SDK_ROOT_DIR}/include
LIB_PATH=${SDK_ROOT_DIR}/lib
COMPILER_PATH=${SDK_ROOT_DIR}/${TOOLCHAIN_NAME}/bin/arm-none-linux-gnueabihf-g++

CFLAGS="-std=gnu++20 -O3 -I${INCLUDE_PATH} -L${LIB_PATH}"
LDFLAGS="-lz -ltbb -lopenjp2 -ljpeg -lpng -lrknn_api -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lspdp"

${COMPILER_PATH} ${CFLAGS} ${LDFLAGS} spdp_demo.cpp -o spdp_demo.elf