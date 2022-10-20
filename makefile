all: helloworld addressmodes conditionalbranching math stack
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
clean:
	rm *.PRG *.list *.o
