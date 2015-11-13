CROSS_COMPILE ?= avr-
MCU   	= atmega168p

TTY	?= /dev/ttyUSB0
#ISP	?= stk500v2 -P $(TTY)
ISP	?= usbasp
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

LIBOBJ	= boot.o vectors.o jiffies.o placeholders.o string.o io.o
#LIBOBJ += neopix.o
LIB	= libthub.a
LDFLAGS	= -L. -lthub -T thub.lds -lgcc

ALL	= empty.hex
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
P = thub-sw
export P

load:
	@if [ -n "$$P" ]; then \
		echo "$(AVRDUDE) -e -U flash:w:$$P.hex"; \
		$(AVRDUDE) -e -U flash:w:$$P.hex; \
	else \
		echo "Please set P to the basename of the program"; \
	fi


# Init the cpu. For 32u4 we nned a chip erase, here we do not.
init:
	@ #$(AVRDUDE) -e; #For 32u4 we need a chip erase, here we do not.
	$(AVRDUDE) -U hfuse:w:0xdf:m
	$(AVRDUDE) -U lfuse:w:0xff:m
