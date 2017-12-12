//多周期调试DEMO汇编程序，供参考：
.text 0x0000
	j	start									// 0
	add	$zero, $zero, $zero		// 4
	add	$zero, $zero, $zero		// 8
	add	$zero, $zero, $zero		// C
	add	$zero, $zero, $zero		// 10
	add	$zero, $zero, $zero		// 14
	add	$zero, $zero, $zero		// 18
	add	$zero, $zero, $zero		// 1C
start:
	lui  $v1, 0xf000	//设置IO端口地址，$v1=SW/LED地址=F00000000
	addi $s4, $zero, 0x3f	//设置常数3F
	lui  $t0, 0x8000	//截取Counter0_OUT常数
	add  $a0, $v1, $v1	//设置IO端口地址,$a0=7-seg地址=E00000000
	addi $v0, $zero, 1	//常数$v0=1
	nor  $at, $zero, $zero	//常数FFFFFFFFF
	add  $t2, $at, $zero	
	addi $a3, $zero, 3
	nor  $a3, $a3, $a3	//$a3=FFFFFFFC
	addi $a2, $zero, 0x7fff	//$a2=0000ffff, 计数初值
	add  $s1, $zero, $zero	//$s1=00000000,初始化7段图形数据基地址
loop1:	
	addi $a1, $zero, 0x2AB	//$a1=000002AB=……1010101011
	sw   $a1, 0x0($v1)	// 设置计数器通道counter_set=11控制端口和LED初始化值： {GPIOf0[21:0],LED,counter_set} 
	addi $s2, $zero, 2	// XX M2 M1 M0 X
//	add  $s2, $s2, $s2	// XX M2 M1 M0 X
	sw   $zero, 4($v1)	//输出计数器控制字,选择通道00

	lw   $a1, ($v1)		//读进SW开关的状态:{out0，out1，out2，D28-D20，LED7-LED7，BTN3-BTN0，SW7-SW0}
	add  $a1, $a1, $a1	//对齐SW输入与LED输出
	add  $a1, $a1, $a1	//保持计数通道0，对齐SW输入=LED输出
	sw   $a1, ($v1)		//设置计数器通道counter_set=00控制端口、LED=SW： {GPIOf0[21:0],LED,counter_set} 
	sw   $a2, 4($v1)	// counter ch0 :f0000004计数器地址，从0x7fff开始减数计数，一直到00000000为止
	lui  $t5, 0xFFFF	// $t5=FFFF0000

loop2:
	lw   $a1, 0($v1)	//读进SW开关的状态:{out0，out1，out2，D28-D20，LED7-LED7，BTN3-BTN0，SW7-SW0}
	add  $a1, $a1, $a1	//对齐SW输入与LED输出
	add  $a1, $a1, $a1	//保持计数通道0，对齐SW输入=LED输出
	sw   $a1, 0($v1)	//设置计数器通道counter_set=00控制端口、LED=SW： {GPIOf0[21:0],LED,counter_set} 
	lw   $a1, 0($v1)	//重读F00000000端口
	and  $t3, $a1, $t0	//截取Counter0_out，$t0=80000000
	addi $t5, $t5, 1	//程序(软件)计数延时
	beq  $t3, $t0, C_init	//程序计数延时结束，修改7段码显示


// -------------------------------------------------------

l_next: 			// 判断7段码显示模式：SW[4:3]控制
	lw   $a1, 0($v1)
	addi $s2, $zero, 0x18	// $18=00000018(00011000)
	and  $t3, $a1, $s2	// 
	
	beq  $t3, $zero,L00 	// SW[4:3]=00,7段显示"点"循环移位：L))，SW0=0
	beq  $t3, $s2, L11 	// SW[4:3]=11，显示七段图形，L11，SW0=0
	addi $s2, $zero, 8	// $s2=8=00001000
	beq  $t3, $s2, L01 	//SW[4:3]=01,七段显示预置数字，L01，SW0=1
	sw   $t1, ($a0) 	//SW[4:3]=10，显示r9，SW0=1
	j    loop2
// ------------------------------------------------------

L00:
	beq  $t2, $at,  l4	// $10=ffffffff, 转移L4
	j    l3
l4:
	nor  $t2, $zero, $zero	// $10=ffffffff
	add  $t2, $t2, $t2	// $10=fffffffe
l3:
	sw   $t2, ($a0)		//SW[4:3]=00,7段显示点移位后显示
	j    loop2

L11:
	lw   $t1, 0x2A0($s1)
	sw   $t1, ($a0)		//SW[4:3]=11，显示七段图形
	j    loop2

L01:
	lw   $t1, 0x260($s1)
	sw   $t1, ($a0)		//SW[4:3]=01,七段显示预置数字
	j    loop2

//计数结束，修改显示和计数重置-----------------------------------------------
C_init:
	lui  $t5, 0xffff

	add  $t2, $t2, $t2	// $10=fffffffc，7段图形点左移
	or   $t2, $t2, $v0	//r10末位置1，对应右上角不显示

	addi $s1, $s1, 4	//r17=00000004，LED图形访存地址+4
	and  $s1, $s1, $s4	//r17=000000XX，屏蔽地址高位，只取6位

//	add  $t1, $t1,$t1	//r9左移
	addi $t1, $t1, 1	//r9+1
	beq  $t1, $at, l6	//若r9=ffffffff,重置r9=5
	j    l7;
l6:
	addi $t1, $t1, 5	// $9=00000005

l7:
	lw   $a1, 0($v1)
	add  $t3, $a1, $a1	//对齐SW输入与LED输出
	add  $t3, $t3, $t3	//设置计数通道0，保持SW输入=LED输出
	sw   $t3, 0($v1)	//设置计数通道0
	sw   $a2, 4($v1)
C_start:
	lw   $a1, ($v1)
	and  $t3, $a1, $t0
	beq  $t3, $t0, C_start
	j    l_next
	
.data 0x240
.word 0xf0000000, 0x000002AB, 0x80000000, 0x0000003F, 0x00000001, 0xFFFF0000, 0x0000FFFF, 0x80000000
.word 0x00000000, 0x11111111, 0x22222222, 0x33333333, 0x44444444, 0x55555555, 0x66666666, 0x77777777
.word 0x88888888, 0x99999999, 0xaaaaaaaa, 0xbbbbbbbb, 0xcccccccc, 0xdddddddd, 0xeeeeeeee, 0xffffffff 
.word 0x557EF7E0, 0xD7BDFBD9, 0xD7DBFDB9, 0xDFCFFCFB, 0xDFCFBFFF, 0xF7F3DFFF, 0xFFFFDF3D, 0xFFFF9DB9 
.word 0xFFFFBCFB, 0xDFCFFCFB, 0xDFCFBFFF, 0xD7DB9FFF, 0xD7DBFDB9, 0xD7BDFBD9, 0xFFFF07E0, 0x007E0FFF
.word 0x03bdf020, 0x03def820, 0x08002300