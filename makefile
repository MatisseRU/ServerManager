TARGET = build/ServerManager

SRC = ./univ/main.c

CFLAGS = -Wall -Wextra -O2 ${EXTRA_CFLAGS}
LDFLAGS = 

PLATFORM ?= linux

ifeq ($(PLATFORM),linux)
    CFLAGS += -DPLATEFORM_LINUX
    SRC += ./platforms/linux/linux.c
else ifeq ($(PLATFORM),windows)
    CFLAGS += -DPLATEFORM_WINDOWS
    SRC += ./platforms/windows/windows.c
else
    $(error Unknown PLATFORM '$(PLATFORM)')
endif

$(TARGET): $(SRC)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

all: $(TARGET)

clean:
	rm -rf build

.PHONY: all clean
