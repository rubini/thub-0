CROSS_COMPILE ?= avr-
MCU   	= atmega168p

TTY	?= /dev/ttyUSB0
ISP	?= stk500v2 -P $(TTY)
AVRDUDE = avrdude -F -p m168p -c $(ISP)

CC      = $(CROSS_COMPILE)gcc
OBJCOPY	= $(CROSS_COMPILE)objcopy
LD	= $(CROSS_COMPILE)ld
AR	= $(CROSS_COMPILE)ar

GIT_COMMIT := $(shell git describe --all --long --dirty)

CFLAGS	= -g -mmcu=$(MCU) -Wall -Wstrict-prototypes -O2 \
		-ffreestanding -nostdlib -I include \
		-D__GIT_COMMIT__=\"$(GIT_COMMIT)\"
OCFLAGS = -R .eeprom

LIBOBJ	= boot.o vectors.o jiffies.o uart.o io.o placeholders.o neopix.o
LIBOBJ	+= w1.o w1-temp.o udelay.o dht11.o
LIBOBJ	+= string.o
LIB	= libleder.a
LDFLAGS	= -L. -lleder -T bathos.lds -lgcc

ALL	= test-uart.hex test-jiffies.hex test-neopix.hex leder.hex avrio.hex
ALLFILES = $(ALL:.hex=.o) $(ALL:.hex=) $(ALL)

all: $(LIB) $(ALLFILES)

$(LIB): $(LIBOBJ)
	$(AR) rc $@ $(LIBOBJ)

clean:
	rm -f $(ALLFILES) *.map *~ *.o $(LIB)

%.hex: %
	$(OBJCOPY) $(OCFLAGS) -O ihex $^ $@

%: %.o vectors.o $(LIBOBJ)
	$(CC) $(CFLAGS) $*.o vectors.o $(LDFLAGS) -o $@  -Wl,-Map,$*.map

%.o: %.S
	$(CC) $(CFLAGS) -c $^ -o $@

# for "make load" we have one target only, so P= is pre-set here.
P = avrio
export P

load:
	@if [ -n "$$P" ]; then \
		echo "$(AVRDUDE) -e -U flash:w:$$P.hex"; \
		$(AVRDUDE) -e -U flash:w:$$P.hex; \
	else \
		echo "Please set P to the basename of the program"; \
	fi


# Init the cpu
init:
	$(AVRDUDE) -e
