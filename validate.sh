#!/bin/bash

# remove iOS heades that don't compile on linux
rm -f libopencv4tegra/usr/include/opencv2/highgui/cap_ios.h
rm -f libopencv4tegra/usr/include/opencv2/highgui/ios.h

abi-compliance-checker -old installed.xml -new opencv4tegra.xml -l opencv
