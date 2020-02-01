#!/bin/bash

### This script builds the project

# Directory containing this bash script
readonly DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Build directory
readonly BUILD_DIR=$DIR/build

cd $DIR

# Delete build directory
rm -rf $BUILD_DIR

mkdir $BUILD_DIR

# Generate native build scripts
cmake -H. -Bbuild -G "Unix Makefiles" $DIR

# Go into the build directory
cd $BUILD_DIR

# Build
cmake --build $BUILD_DIR -- -j2 VERBOSE=1

# Change working directory back to the original.
cd $previous_directory

# Exit this bash script
exit 0

