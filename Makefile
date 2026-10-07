CXX      = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -O2
SOURCES  = hello.cpp
TARGET   = hello

ifeq ($(OS),Windows_NT)
    TARGET := hello.exe
    RM      = del /Q
else
    RM      = rm -f
endif

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SOURCES)

run: $(TARGET)
	./$(TARGET)

clean:
	$(RM) $(TARGET)

.PHONY: all run clean
