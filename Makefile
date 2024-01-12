CC 	   = g++
CFLAGS 	   = -Wall -std=c++11 -fPIC
RESULTDIR  = dist
SOURCES    = $(wildcard ./*.cpp)
OBJECTS    = $(patsubst ./%.cpp, $(RESULTDIR)/%.o, $(SOURCES))
TARGET 	   = $(RESULTDIR)/lab4
LIBRARY    = $(RESULTDIR)/lab4_lib.so

all: $(TARGET) $(LIBRARY)
$(TARGET): $(OBJECTS)
	@mkdir -p $(RESULTDIR)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)
$(LIBRARY): $(OBJECTS)
	@mkdir -p $(RESULTDIR)
	$(CC) $(CFLAGS) -shared -o $(LIBRARY) $(OBJECTS)
$(RESULTDIR)/%.o: ./%.cpp
	@mkdir -p $(RESULTDIR)
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -rf $(RESULTDIR)
