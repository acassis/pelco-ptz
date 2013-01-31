#---------------------------------------------------------------
# May 1, 2002 Joe Briggs
#--------------------------------------------------------------
PELCO = pelco.o
DEFS = pelco.h

ifeq (,$(findstring Debian,$(shell cat /etc/issue)))
	CFLAGS := ${CFLAGS} -DREDHAT
endif

pelco: ${PELCO} ${LIBS} ${DEFS}
	${CC} -o $@ ${PELCO} ${LIBS}

install:
	install -m 0777 pelco /usr/local/bin

clean:
	-rm -f *.o 

