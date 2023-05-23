#!/bin/sh
CUR_DIR="`dirname "$0"`"
cd $CUR_DIR

SRC_DIR="Build"

if [ "$#" -eq 1 ] && [ "$1" == "-debug" ]; then
	# Debug
	python3 BuildAll.py ninja clang mac_universal Debug
	SRC_DIR="$SRC_DIR/ninja-osx-clang-mac_universal-Debug"
else
	# Release
	python3 BuildAll.py ninja clang mac_universal RelWithDebInfo
	SRC_DIR="$SRC_DIR/ninja-osx-clang-mac_universal-RelWithDebInfo"
	echo "$SRC_DIR"
fi

DST_DIR="$SRC_DIR/Lib"

install_name_tool -change @rpath/libdxcompiler.3.7.dylib @rpath/libdxcompiler.dylib "$DST_DIR/libShaderConductor.dylib"
install_name_tool -id @rpath/libdxcompiler.dylib "$DST_DIR/libdxcompiler.dylib"
