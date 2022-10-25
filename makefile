all: helloworld addressmodes conditionalbranching math stack bitops therest kernal zeropageshenanigans
helloworld:
	cl65 -t cx16 -o HELLOWORLD.PRG -l helloworld.list helloworld.asm
addressmodes:
	cl65 -t cx16 -o ADDR.PRG -l addressmodes.list addressmodes.asm
conditionalbranching:
	cl65 -t cx16 -o CONDBR.PRG -l conditionalbranching.list conditionalbranching.asm
math:
	cl65 -t cx16 -o MATH.PRG -l math.list math.asm
stack:
	cl65 -t cx16 -o STACK.PRG -l thestack.list thestack.asm
bitops:
	cl65 -t cx16 -o BITOPS.PRG -l bitops.list bitops.asm
therest:
	cl65 -t cx16 -o THEREST.PRG -l therest.list therest.asm
kernal:
	cl65 -t cx16 -o KERNAL.PRG -l kernal.list kernal.asm
zeropageshenanigans:
	cl65 -t cx16 -o ZPSHENANIGANS.PRG -l zeropageshenanigans.list zeropageshenanigans.asm
clean:
	rm *.PRG *.list *.o
