.text 0x0000
	j		start									// 0
	add	$zero, $zero, $zero		// 4
	add	$zero, $zero, $zero		// 8
	add	$zero, $zero, $zero		// C
	add	$zero, $zero, $zero		// 10
	add	$zero, $zero, $zero		// 14
	add	$zero, $zero, $zero		// 18
	add	$zero, $zero, $zero		// 1C

start:
	nor	$at, $zero, $zero			// $1=FFFFFFFF
	add	$v1, $at, $at					// $3=FFFFFFFE
	add	$v1, $v1, $v1					// $3=FFFFFFFC
	add	$v1, $v1, $v1					// $3=FFFFFFF8
	add	$v1, $v1, $v1					// $3=FFFFFFF0

	add	$v1, $v1, $v1					// $3=FFFFFFE0
	add	$v1, $v1, $v1					// $3=FFFFFFC0
	nor	$s4, $v1, $zero				// $20=0000003F
	add	$v1, $v1, $v1					// $3=FFFFFF80
	add	$v1, $v1, $v1					// $3=FFFFFF00

	add	$v1, $v1, $v1					// $3=FFFFFE00
	add	$v1, $v1, $v1					// $3=FFFFFC00
	add	$v1, $v1, $v1					// $3=FFFFF800
	add	$v1, $v1, $v1					// $3=FFFFF000

	add	$v1, $v1, $v1					// $3=FFFFE000
	add	$v1, $v1, $v1					// $3=FFFFC000
	add	$v1, $v1, $v1					// $3=FFFF8000
	add	$v1, $v1, $v1					// $3=FFFF0000

	add	$v1, $v1, $v1					// $3=FFFE0000
	add	$v1, $v1, $v1					// $3=FFFC0000
	add	$v1, $v1, $v1					// $3=FFF80000
	add	$v1, $v1, $v1					// $3=FFF00000

	add	$v1, $v1, $v1					// $3=FFE00000
	add	$v1, $v1, $v1					// $3=FFC00000
	add	$v1, $v1, $v1					// $3=FF800000
	add	$v1, $v1, $v1					// $3=FF000000

	add	$v1, $v1, $v1					// $3=FE000000
	add	$v1, $v1, $v1					// $3=FC000000
	add	$a2, $v1, $v1					// $6=F8000000
	add	$v1, $a2, $a2					// $3=F0000000

	add	$a0, $v1, $v1					// $4=E0000000

	add	$t5, $a0, $a0					// $13=C0000000
	add	$t0, $t5, $t5					// $8=80000000

loop:
	slt	$v0, $at,$zero		// $2=00000001 针对ALU32位无符号数减
	add	$t6, $v0, $v0
	add	$t6, $t6, $t6					// $14=4
	nor	$t2, $zero, $zero				// $10=FFFFFFFF
	add	$t2, $t2, $t2					// $10=FFFFFFFE

loop1:
	sw	$a2, 0x4($v1)	    // 计数器端口:F0000004，送计数常数$6=F8000000
	lw	$a1, 0x0($v1)	    // 读GPIO端口F0000000状态:{out0，out1，out2，D28-D20，LED7-LED7，BTN3-BTN0，SW7-SW0}
	add	$a1, $a1, $a1					// 左移
	add	$a1, $a1, $a1					// 左移2位将SW与LED对齐，同时D1D0置00，选择计数器通道0
	sw	$a1, 0x0($v1)					// $5输出到GPIO端口F0000000，设置计数器通道counter_set=00端口、LED=SW： {GPIOf0[21:	0], LED, counter_set}
	add	$t1, $t1, $v0					// $9=$9+1
	sw	$t1, 0x0($a0)					// $9送$4=E0000000七段码端口
	lw	$t5, 0x0214($zero)			// 取存储器20单元预存数据至$13, 程序计数延时常数

loop2:
	lw	$a1, 0x0($v1)					// 读GPIO端口F0000000状态:	{out0，out1，out2，D28-D20，LED7-LED7，BTN3-BTN0，SW7-SW0}
	add	$a1, $a1, $a1
	add	$a1, $a1, $a1					// 左移2位将SW与LED对齐，同时D1D0置00，选择计数器通道0
	sw	$a1, 0x0($v1)					// $5输出到GPIO端口F0000000，计数器通道counter_set=00端口不变、LED=SW： {GPIOf0[21:	0], LED, counter_set}

	lw	$a1, 0x0($v1)					// 再读GPIO端口F0000000状态
	and $t3, $a1, $t0					// 取最高位=out0，屏蔽其余位送$11
//	beq 	$t3, $t0, C_init 	// out0=0, Counter通道0溢出, 转计数器初始化, 修改7段码显示:	C_init
	add	$t5, $t5, $v0					// 程序计数延时
	beq	$t5, $zero, C_init		// 程序计数$13=0, 转计数器初始化, 修改7段码显示:	C_init

l_next:											// 判断7段码显示模式：SW[4:	3]控制
	lw	$a1, 0x0($v1)					// 再读GPIO端口F0000000开关SW状态
	add	$s2, $t6, $t6					// $14=4, $18=00000008
	add	$s6, $s2, $s2					// $22=00000010
	add	$s2, $s2, $s6					// $18=00000018(00011000)
	and	$t3, $a1, $s2					// 取SW[4:	3]
	beq	$t3, $zero, L20 			// SW[4:	3]=00, 7段显示"点"循环移位：L20，SW0=0
	beq	$t3, $s2, L21 				// SW[4:	3]=11，显示七段图形，L21，SW0=0
	add	$s2, $t6, $t6					// $18=8
	beq	$t3, $s2, L22 				// SW[4:	3]=01, 七段显示预置数字，L22，SW0=1
	sw	$t1, 0x0($a0)					// SW[4:	3]=10，显示$9，SW0=1
	j	loop2;

L20:
	beq	$t2, $at, L4					// $10=ffffffff, 转移L4
	j	L3

L4:
	nor	$t2, $zero, $zero			// $10=ffffffff
	add	$t2, $t2, $t2					// $10=fffffffe

L3:
	sw	$t2, 0x0($a0)					// SW[4:	3]=00, 7段显示点移位后显示
	j	loop2

L21:
	lw	$t1, 0x0260($s1)			// SW[4:	3]=11，从内存取预存七段图形
	sw	$t1, 0x0($a0)					// SW[4:	3]=11，显示七段图形
	j	loop2

L22:
	lw	$t1, 0x0220($s1)				// SW[4:	3]=01，从内存取预存数字
	sw	$t1, 0x0($a0)					// SW[4:	3]=01, 七段显示预置数字
	j	loop2

C_init:
	lw	$t5, 0x0214($zero)			// 取程序计数延时初始化常数
	add	$t2, $t2, $t2					// $10=fffffffc，7段图形点左移
	or	$t2, $t2, $v0					// $10末位置1，对应右上角不显示
	add	$s1, $s1, $t6					// $17=00000004，LED图形访存地址+4
	and	$s1, $s1, $s4					// $17=000000XX，屏蔽地址高位，只取6位
	add	$t1, $t1, $v0					// $9+1
	beq	$t1, $at, L6					// 若$9=ffffffff, 重置$9=5
	j	L7

L6:
	add	$t1, $zero, $t6				// $9=4
	add	$t1, $t1, $v0					// 重置$9=5

L7:
	lw	$a1, 0x0($v1)					// 读GPIO端口F0000000状态
	add	$t3, $a1, $a1
	add	$t3, $t3, $t3					// 左移2位将SW与LED对齐，同时D1D0置00，选择计数器通道0
	sw	$t3, 0x0($v1)					// $5输出到GPIO端口F0000000，计数器通道counter_set=00端口不变、LED=SW： {GPIOf0[21:	0], LED, counter_set}
	sw 	$a2, 0x4($v1)					// 计数器端口:	F0000004，送计数常数$6=F8000000
	j 	l_next

.data 0x0200
.word 0xf0000000, 0x000002AB, 0x80000000, 0x0000003F, 0x00000001, 0xFFFF0000, 0x0000FFFF, 0x80000000
.word 0x00000000, 0x11111111, 0x22222222, 0x33333333, 0x44444444, 0x55555555, 0x66666666, 0x77777777 
.word 0x88888888, 0x99999999, 0xaaaaaaaa, 0xbbbbbbbb, 0xcccccccc, 0xdddddddd, 0xeeeeeeee, 0xffffffff 
.word 0x557EF7E0, 0xD7BDFBD9, 0xD7DBFDB9, 0xDFCFFCFB, 0xDFCFBFFF, 0xF7F3DFFF, 0xFFFFDF3D, 0xFFFF9DB9
.word 0xFFFFBCFB, 0xDFCFFCFB, 0xDFCFBFFF, 0xD7DB9FFF, 0xD7DBFDB9, 0xD7BDFBD9, 0xFFFF07E0, 0x007E0FFF
.word 0x03bdf020, 0x03def820, 0x08002300, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

