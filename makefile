all:
	cl65 -t cx16 -o HELLOWORLD.PRG -l helloworld.list helloworld.asm
addressmodes:
	cl65 -t cx16 -o ADDR.PRG -l addressmodes.list addressmodes.asm
