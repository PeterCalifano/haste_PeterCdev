# Notes for building in Ubuntu 24.04
1) Modify OCV version required by cmake to >4.0 according to what is installed on the system;
2) Ensure glog is installed: sudo apt-get install libgoogle-glog-dev;
3) Set gcc-11 for better compatibility with older codes;
4) Then simply "make" the build. Standard options suggested by authors will work fine.