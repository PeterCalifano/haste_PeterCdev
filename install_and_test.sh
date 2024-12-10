# Update submodules
git submodules update --init --recursive

# Install dependencies
sudo apt install libgflags-dev libgoogle-glog-dev

# Install opencv
sudo apt install libopencv-dev

# Install others required by build (not reported by authors)
sudo apt install libunwind-dev

# Make build 
cmake -B build -S . -DCMAKE_BUILD_TYPE=relwithdebinfo -DGUI=true

# Make
make -C build -j4

# Optionally test using test_example 
bash test_example.sh