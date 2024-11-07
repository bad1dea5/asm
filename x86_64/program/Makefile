TARGET	:= program

CFLAGS	:=
LFLAGS	:= -I/lib64/ld-linux-x86-64.so.2 -lc -s

OBJECTS	:= $(patsubst %.s, %.o, $(wildcard *.s))

.PHONY: clean

all: $(TARGET)

$(TARGET): $(OBJECTS) | bin
	ld -o bin/$@ $(LFLAGS) obj/$^

%.o: %.s | obj
	as -c $< $(CFLAGS) -o obj/$@

bin obj:
	mkdir $@

clean:
	@$(RM) -frv bin obj
