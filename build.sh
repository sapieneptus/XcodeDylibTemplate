#!/bin/sh
set -e
set -x
rm -fr build
mkdir -p build
exec xcrun xcodebuild -project EntitlementInjector.xcodeproj -scheme EntitlementInjector -configuration Debug ARCHS='armv7 armv7s arm64' VALID_ARCHS='armv7 armv7s arm64' ONLY_ACTIVE_ARCH=NO SYMROOT=build -sdk iphoneos IPHONEOS_DEPLOYMENT_TARGET=6.0 GCC_TREAT_WARNINGS_AS_ERRORS=YES GCC_GENERATE_TEST_COVERAGE_FILES=NO GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=NO
