@---------------------------------------------------------------------------------
.section .text,"ax"
@---------------------------------------------------------------------------------
	#include "equates.h"
@---------------------------------------------------------------------------------	
	.global mapper97init
@---------------------------------------------------------------------------------
mapper97init:	@Irem
@---------------------------------------------------------------------------------
	.word write97,write97,write97,write97

	mov r0,#-1
	b map89AB_
@---------------------------------------------------------------------------------
write97:
@---------------------------------------------------------------------------------
	stmfd sp!,{r0,lr}
	bl mapCDEF_
	ldmfd sp!,{r0,lr}
	tst r0,#0x40
	b mirror2V_
@---------------------------------------------------------------------------------
