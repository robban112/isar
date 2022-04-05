#!/bin/bash

core_version=`cat ../../CORE_VERSION`
github="https://github.com/robban112/isar-core/releases/download/${core_version:5}"
#https://github.com/isar

curl "${github}/libisar_android_arm64.so" -o android/src/main/jniLibs/arm64-v8a/libisar.so --create-dirs -L
curl "${github}/libisar_android_armv7.so" -o android/src/main/jniLibs/armeabi-v7a/libisar.so --create-dirs -L
curl "${github}/libisar_android_x64.so" -o android/src/main/jniLibs/x86_64/libisar.so --create-dirs -L
curl "${github}/libisar_ios.a" -o ios/libisar.a --create-dirs -L
curl "${github}/libisar_macos_x64.dylib" -o macos/libisar.dylib --create-dirs -L
curl "${github}/libisar_linux_x64.so" -o linux/libisar.so --create-dirs -L
curl "${github}/isar_windows_x64.dll" -o windows/isar.dll --create-dirs -L