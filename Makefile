OPENCL_PATH := /opt/intel/opencl-1.2-sdk-4.6.0.178
CXX := icpc

OPENCL_INC := $(OPENCL_PATH)/include/
OPENCL_LIB := $(OPENCL_PATH)/lib64/

CXXFLAGS := -g -Wall -std=c++0x

convolution: convolution.cpp
	$(CXX) $(CXXFLAGS) -I$(OPENCL_INC) -L$(OPENCL_LIB) -o $@ convolution.cpp -lOpenCL

clean:
	rm -rf convolution
