#!/bin/bash

dpkg -l | grep '^ii' | grep opencv | grep -v libopencv4tegra | awk '{print $2;}' | grep -v '^ros-' | xargs dpkg -L | grep '\.so\.\?' | sort | uniq
