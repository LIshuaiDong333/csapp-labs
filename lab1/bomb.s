
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e9 2f 00 00 	mov    0x2fe9(%rip),%rax        # 403ff8 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 2f 00 00 	bnd jmp *0x2fe3(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	push   $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	push   $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	push   $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	push   $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	push   $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	push   $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	push   $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmp 401020 <_init+0x20>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	push   $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	push   $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	push   $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	push   $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	push   $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	push   $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmp 401020 <_init+0x20>
  4010ff:	90                   	nop

Disassembly of section .plt.sec:

0000000000401100 <getenv@plt>:
  401100:	f3 0f 1e fa          	endbr64 
  401104:	f2 ff 25 0d 2f 00 00 	bnd jmp *0x2f0d(%rip)        # 404018 <getenv@GLIBC_2.2.5>
  40110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401110 <strlen@plt>:
  401110:	f3 0f 1e fa          	endbr64 
  401114:	f2 ff 25 05 2f 00 00 	bnd jmp *0x2f05(%rip)        # 404020 <strlen@GLIBC_2.2.5>
  40111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401120 <signal@plt>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	f2 ff 25 fd 2e 00 00 	bnd jmp *0x2efd(%rip)        # 404028 <signal@GLIBC_2.2.5>
  40112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401130 <strtol@plt>:
  401130:	f3 0f 1e fa          	endbr64 
  401134:	f2 ff 25 f5 2e 00 00 	bnd jmp *0x2ef5(%rip)        # 404030 <strtol@GLIBC_2.2.5>
  40113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401140 <fflush@plt>:
  401140:	f3 0f 1e fa          	endbr64 
  401144:	f2 ff 25 ed 2e 00 00 	bnd jmp *0x2eed(%rip)        # 404038 <fflush@GLIBC_2.2.5>
  40114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401150 <__isoc99_sscanf@plt>:
  401150:	f3 0f 1e fa          	endbr64 
  401154:	f2 ff 25 e5 2e 00 00 	bnd jmp *0x2ee5(%rip)        # 404040 <__isoc99_sscanf@GLIBC_2.7>
  40115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401160 <__fgets_chk@plt>:
  401160:	f3 0f 1e fa          	endbr64 
  401164:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 404048 <__fgets_chk@GLIBC_2.4>
  40116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401170 <__printf_chk@plt>:
  401170:	f3 0f 1e fa          	endbr64 
  401174:	f2 ff 25 d5 2e 00 00 	bnd jmp *0x2ed5(%rip)        # 404050 <__printf_chk@GLIBC_2.3.4>
  40117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401180 <fopen@plt>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	f2 ff 25 cd 2e 00 00 	bnd jmp *0x2ecd(%rip)        # 404058 <fopen@GLIBC_2.2.5>
  40118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401190 <strtok@plt>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	f2 ff 25 c5 2e 00 00 	bnd jmp *0x2ec5(%rip)        # 404060 <strtok@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011a0 <exit@plt>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	f2 ff 25 bd 2e 00 00 	bnd jmp *0x2ebd(%rip)        # 404068 <exit@GLIBC_2.2.5>
  4011ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011b0 <sleep@plt>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	f2 ff 25 b5 2e 00 00 	bnd jmp *0x2eb5(%rip)        # 404070 <sleep@GLIBC_2.2.5>
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011c0 <__ctype_b_loc@plt>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	f2 ff 25 ad 2e 00 00 	bnd jmp *0x2ead(%rip)        # 404078 <__ctype_b_loc@GLIBC_2.3>
  4011cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000004011d0 <_start>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	31 ed                	xor    %ebp,%ebp
  4011d6:	49 89 d1             	mov    %rdx,%r9
  4011d9:	5e                   	pop    %rsi
  4011da:	48 89 e2             	mov    %rsp,%rdx
  4011dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011e1:	50                   	push   %rax
  4011e2:	54                   	push   %rsp
  4011e3:	45 31 c0             	xor    %r8d,%r8d
  4011e6:	31 c9                	xor    %ecx,%ecx
  4011e8:	48 c7 c7 b6 12 40 00 	mov    $0x4012b6,%rdi
  4011ef:	ff 15 fb 2d 00 00    	call   *0x2dfb(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.34>
  4011f5:	f4                   	hlt    
  4011f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4011fd:	00 00 00 

0000000000401200 <_dl_relocate_static_pie>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	c3                   	ret    
  401205:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40120c:	00 00 00 
  40120f:	90                   	nop

0000000000401210 <deregister_tm_clones>:
  401210:	b8 08 44 40 00       	mov    $0x404408,%eax
  401215:	48 3d 08 44 40 00    	cmp    $0x404408,%rax
  40121b:	74 13                	je     401230 <deregister_tm_clones+0x20>
  40121d:	b8 00 00 00 00       	mov    $0x0,%eax
  401222:	48 85 c0             	test   %rax,%rax
  401225:	74 09                	je     401230 <deregister_tm_clones+0x20>
  401227:	bf 08 44 40 00       	mov    $0x404408,%edi
  40122c:	ff e0                	jmp    *%rax
  40122e:	66 90                	xchg   %ax,%ax
  401230:	c3                   	ret    
  401231:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401240 <register_tm_clones>:
  401240:	be 08 44 40 00       	mov    $0x404408,%esi
  401245:	48 81 ee 08 44 40 00 	sub    $0x404408,%rsi
  40124c:	48 89 f0             	mov    %rsi,%rax
  40124f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401253:	48 c1 f8 03          	sar    $0x3,%rax
  401257:	48 01 c6             	add    %rax,%rsi
  40125a:	48 d1 fe             	sar    %rsi
  40125d:	74 11                	je     401270 <register_tm_clones+0x30>
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	48 85 c0             	test   %rax,%rax
  401267:	74 07                	je     401270 <register_tm_clones+0x30>
  401269:	bf 08 44 40 00       	mov    $0x404408,%edi
  40126e:	ff e0                	jmp    *%rax
  401270:	c3                   	ret    
  401271:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401278:	00 00 00 00 
  40127c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401280 <__do_global_dtors_aux>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	80 3d ad 31 00 00 00 	cmpb   $0x0,0x31ad(%rip)        # 404438 <completed.0>
  40128b:	75 13                	jne    4012a0 <__do_global_dtors_aux+0x20>
  40128d:	55                   	push   %rbp
  40128e:	48 89 e5             	mov    %rsp,%rbp
  401291:	e8 7a ff ff ff       	call   401210 <deregister_tm_clones>
  401296:	c6 05 9b 31 00 00 01 	movb   $0x1,0x319b(%rip)        # 404438 <completed.0>
  40129d:	5d                   	pop    %rbp
  40129e:	c3                   	ret    
  40129f:	90                   	nop
  4012a0:	c3                   	ret    
  4012a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4012a8:	00 00 00 00 
  4012ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012b0 <frame_dummy>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	eb 8a                	jmp    401240 <register_tm_clones>

00000000004012b6 <main>:
  4012b6:	f3 0f 1e fa          	endbr64 
  4012ba:	55                   	push   %rbp
  4012bb:	48 89 e5             	mov    %rsp,%rbp
  4012be:	53                   	push   %rbx
  4012bf:	48 83 ec 08          	sub    $0x8,%rsp
  4012c3:	83 ff 01             	cmp    $0x1,%edi
  4012c6:	0f 84 f6 00 00 00    	je     4013c2 <main+0x10c>
  4012cc:	48 89 f3             	mov    %rsi,%rbx
  4012cf:	83 ff 02             	cmp    $0x2,%edi
  4012d2:	0f 85 1d 01 00 00    	jne    4013f5 <main+0x13f>
  4012d8:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4012dc:	be 04 20 40 00       	mov    $0x402004,%esi
  4012e1:	e8 9a fe ff ff       	call   401180 <fopen@plt>
  4012e6:	48 89 05 53 31 00 00 	mov    %rax,0x3153(%rip)        # 404440 <infile>
  4012ed:	48 85 c0             	test   %rax,%rax
  4012f0:	0f 84 df 00 00 00    	je     4013d5 <main+0x11f>
  4012f6:	e8 48 08 00 00       	call   401b43 <initialize_bomb>
  4012fb:	be 50 20 40 00       	mov    $0x402050,%esi
  401300:	bf 01 00 00 00       	mov    $0x1,%edi
  401305:	b8 00 00 00 00       	mov    $0x0,%eax
  40130a:	e8 61 fe ff ff       	call   401170 <__printf_chk@plt>
  40130f:	be 90 20 40 00       	mov    $0x402090,%esi
  401314:	bf 01 00 00 00       	mov    $0x1,%edi
  401319:	b8 00 00 00 00       	mov    $0x0,%eax
  40131e:	e8 4d fe ff ff       	call   401170 <__printf_chk@plt>
  401323:	e8 d7 09 00 00       	call   401cff <read_line>
  401328:	48 89 c7             	mov    %rax,%rdi
  40132b:	e8 cc 01 00 00       	call   4014fc <phase_0>
  401330:	85 c0                	test   %eax,%eax
  401332:	0f 85 de 00 00 00    	jne    401416 <main+0x160>
  401338:	e8 c2 09 00 00       	call   401cff <read_line>
  40133d:	48 89 c7             	mov    %rax,%rdi
  401340:	e8 e0 01 00 00       	call   401525 <phase_1>
  401345:	85 c0                	test   %eax,%eax
  401347:	0f 85 e7 00 00 00    	jne    401434 <main+0x17e>
  40134d:	e8 ad 09 00 00       	call   401cff <read_line>
  401352:	48 89 c7             	mov    %rax,%rdi
  401355:	e8 24 02 00 00       	call   40157e <phase_2>
  40135a:	85 c0                	test   %eax,%eax
  40135c:	0f 85 f0 00 00 00    	jne    401452 <main+0x19c>
  401362:	e8 98 09 00 00       	call   401cff <read_line>
  401367:	48 89 c7             	mov    %rax,%rdi
  40136a:	e8 7f 02 00 00       	call   4015ee <phase_3>
  40136f:	85 c0                	test   %eax,%eax
  401371:	0f 85 f9 00 00 00    	jne    401470 <main+0x1ba>
  401377:	e8 83 09 00 00       	call   401cff <read_line>
  40137c:	48 89 c7             	mov    %rax,%rdi
  40137f:	e8 1d 04 00 00       	call   4017a1 <phase_4>
  401384:	85 c0                	test   %eax,%eax
  401386:	0f 85 02 01 00 00    	jne    40148e <main+0x1d8>
  40138c:	e8 6e 09 00 00       	call   401cff <read_line>
  401391:	48 89 c7             	mov    %rax,%rdi
  401394:	e8 70 04 00 00       	call   401809 <phase_5>
  401399:	85 c0                	test   %eax,%eax
  40139b:	0f 85 0b 01 00 00    	jne    4014ac <main+0x1f6>
  4013a1:	e8 59 09 00 00       	call   401cff <read_line>
  4013a6:	48 89 c7             	mov    %rax,%rdi
  4013a9:	e8 c2 04 00 00       	call   401870 <phase_6>
  4013ae:	85 c0                	test   %eax,%eax
  4013b0:	0f 85 14 01 00 00    	jne    4014ca <main+0x214>
  4013b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4013bb:	48 83 c4 08          	add    $0x8,%rsp
  4013bf:	5b                   	pop    %rbx
  4013c0:	5d                   	pop    %rbp
  4013c1:	c3                   	ret    
  4013c2:	48 8b 05 67 30 00 00 	mov    0x3067(%rip),%rax        # 404430 <stdin@GLIBC_2.2.5>
  4013c9:	48 89 05 70 30 00 00 	mov    %rax,0x3070(%rip)        # 404440 <infile>
  4013d0:	e9 21 ff ff ff       	jmp    4012f6 <main+0x40>
  4013d5:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  4013d9:	48 8b 13             	mov    (%rbx),%rdx
  4013dc:	be 06 20 40 00       	mov    $0x402006,%esi
  4013e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4013e6:	e8 85 fd ff ff       	call   401170 <__printf_chk@plt>
  4013eb:	bf 08 00 00 00       	mov    $0x8,%edi
  4013f0:	e8 ab fd ff ff       	call   4011a0 <exit@plt>
  4013f5:	48 8b 16             	mov    (%rsi),%rdx
  4013f8:	be 23 20 40 00       	mov    $0x402023,%esi
  4013fd:	bf 01 00 00 00       	mov    $0x1,%edi
  401402:	b8 00 00 00 00       	mov    $0x0,%eax
  401407:	e8 64 fd ff ff       	call   401170 <__printf_chk@plt>
  40140c:	bf 08 00 00 00       	mov    $0x8,%edi
  401411:	e8 8a fd ff ff       	call   4011a0 <exit@plt>
  401416:	e8 40 0a 00 00       	call   401e5b <phase_defused>
  40141b:	be c0 20 40 00       	mov    $0x4020c0,%esi
  401420:	bf 01 00 00 00       	mov    $0x1,%edi
  401425:	b8 00 00 00 00       	mov    $0x0,%eax
  40142a:	e8 41 fd ff ff       	call   401170 <__printf_chk@plt>
  40142f:	e9 04 ff ff ff       	jmp    401338 <main+0x82>
  401434:	e8 22 0a 00 00       	call   401e5b <phase_defused>
  401439:	be e8 20 40 00       	mov    $0x4020e8,%esi
  40143e:	bf 01 00 00 00       	mov    $0x1,%edi
  401443:	b8 00 00 00 00       	mov    $0x0,%eax
  401448:	e8 23 fd ff ff       	call   401170 <__printf_chk@plt>
  40144d:	e9 fb fe ff ff       	jmp    40134d <main+0x97>
  401452:	e8 04 0a 00 00       	call   401e5b <phase_defused>
  401457:	be 18 21 40 00       	mov    $0x402118,%esi
  40145c:	bf 01 00 00 00       	mov    $0x1,%edi
  401461:	b8 00 00 00 00       	mov    $0x0,%eax
  401466:	e8 05 fd ff ff       	call   401170 <__printf_chk@plt>
  40146b:	e9 f2 fe ff ff       	jmp    401362 <main+0xac>
  401470:	e8 e6 09 00 00       	call   401e5b <phase_defused>
  401475:	be 3d 20 40 00       	mov    $0x40203d,%esi
  40147a:	bf 01 00 00 00       	mov    $0x1,%edi
  40147f:	b8 00 00 00 00       	mov    $0x0,%eax
  401484:	e8 e7 fc ff ff       	call   401170 <__printf_chk@plt>
  401489:	e9 e9 fe ff ff       	jmp    401377 <main+0xc1>
  40148e:	e8 c8 09 00 00       	call   401e5b <phase_defused>
  401493:	be 38 21 40 00       	mov    $0x402138,%esi
  401498:	bf 01 00 00 00       	mov    $0x1,%edi
  40149d:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a2:	e8 c9 fc ff ff       	call   401170 <__printf_chk@plt>
  4014a7:	e9 e0 fe ff ff       	jmp    40138c <main+0xd6>
  4014ac:	e8 aa 09 00 00       	call   401e5b <phase_defused>
  4014b1:	be 60 21 40 00       	mov    $0x402160,%esi
  4014b6:	bf 01 00 00 00       	mov    $0x1,%edi
  4014bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c0:	e8 ab fc ff ff       	call   401170 <__printf_chk@plt>
  4014c5:	e9 d7 fe ff ff       	jmp    4013a1 <main+0xeb>
  4014ca:	e8 8c 09 00 00       	call   401e5b <phase_defused>
  4014cf:	e9 e2 fe ff ff       	jmp    4013b6 <main+0x100>

00000000004014d4 <TgfPUOhp>:
  4014d4:	f3 0f 1e fa          	endbr64 
  4014d8:	8d 04 77             	lea    (%rdi,%rsi,2),%eax
  4014db:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4014df:	f2 0f 2a cf          	cvtsi2sd %edi,%xmm1
  4014e3:	f2 0f 5e 0d bd 0d 00 	divsd  0xdbd(%rip),%xmm1        # 4022a8 <secret_passward+0x28>
  4014ea:	00 
  4014eb:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4014ef:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4014f3:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4014f7:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  4014fb:	c3                   	ret    

00000000004014fc <phase_0>:
  4014fc:	f3 0f 1e fa          	endbr64 
  401500:	55                   	push   %rbp
  401501:	48 89 e5             	mov    %rsp,%rbp
  401504:	be 80 21 40 00       	mov    $0x402180,%esi
  401509:	e8 d6 05 00 00       	call   401ae4 <strings_not_equal>
  40150e:	85 c0                	test   %eax,%eax
  401510:	75 07                	jne    401519 <phase_0+0x1d>
  401512:	b8 01 00 00 00       	mov    $0x1,%eax
  401517:	5d                   	pop    %rbp
  401518:	c3                   	ret    
  401519:	e8 da 06 00 00       	call   401bf8 <explode_bomb>
  40151e:	b8 00 00 00 00       	mov    $0x0,%eax
  401523:	eb f2                	jmp    401517 <phase_0+0x1b>

0000000000401525 <phase_1>:
  401525:	f3 0f 1e fa          	endbr64 
  401529:	55                   	push   %rbp
  40152a:	48 89 e5             	mov    %rsp,%rbp
  40152d:	48 83 ec 10          	sub    $0x10,%rsp
  401531:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  401535:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  401539:	be eb 23 40 00       	mov    $0x4023eb,%esi
  40153e:	b8 00 00 00 00       	mov    $0x0,%eax
  401543:	e8 08 fc ff ff       	call   401150 <__isoc99_sscanf@plt>
  401548:	83 f8 02             	cmp    $0x2,%eax
  40154b:	75 1e                	jne    40156b <phase_1+0x46>
  40154d:	81 7d fc 1e 60 c5 41 	cmpl   $0x41c5601e,-0x4(%rbp)
  401554:	75 09                	jne    40155f <phase_1+0x3a>
  401556:	81 7d f8 00 00 80 2b 	cmpl   $0x2b800000,-0x8(%rbp)
  40155d:	74 18                	je     401577 <phase_1+0x52>
  40155f:	e8 94 06 00 00       	call   401bf8 <explode_bomb>
  401564:	b8 00 00 00 00       	mov    $0x0,%eax
  401569:	c9                   	leave  
  40156a:	c3                   	ret    
  40156b:	e8 88 06 00 00       	call   401bf8 <explode_bomb>
  401570:	b8 00 00 00 00       	mov    $0x0,%eax
  401575:	eb f2                	jmp    401569 <phase_1+0x44>
  401577:	b8 01 00 00 00       	mov    $0x1,%eax
  40157c:	eb eb                	jmp    401569 <phase_1+0x44>

000000000040157e <phase_2>:
  40157e:	f3 0f 1e fa          	endbr64 
  401582:	55                   	push   %rbp
  401583:	48 89 e5             	mov    %rsp,%rbp
  401586:	48 83 ec 20          	sub    $0x20,%rsp
  40158a:	ba 06 00 00 00       	mov    $0x6,%edx
  40158f:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  401593:	e8 de 06 00 00       	call   401c76 <read_n_numbers>
  401598:	85 c0                	test   %eax,%eax
  40159a:	74 50                	je     4015ec <phase_2+0x6e>
  40159c:	81 7d e0 e5 00 00 00 	cmpl   $0xe5,-0x20(%rbp)
  4015a3:	75 2a                	jne    4015cf <phase_2+0x51>
  4015a5:	b8 01 00 00 00       	mov    $0x1,%eax
  4015aa:	83 f8 05             	cmp    $0x5,%eax
  4015ad:	7f 38                	jg     4015e7 <phase_2+0x69>
  4015af:	48 63 c8             	movslq %eax,%rcx
  4015b2:	8d 50 ff             	lea    -0x1(%rax),%edx
  4015b5:	48 63 d2             	movslq %edx,%rdx
  4015b8:	8b 54 95 e0          	mov    -0x20(%rbp,%rdx,4),%edx
  4015bc:	8d 34 00             	lea    (%rax,%rax,1),%esi
  4015bf:	29 f2                	sub    %esi,%edx
  4015c1:	83 c2 01             	add    $0x1,%edx
  4015c4:	39 54 8d e0          	cmp    %edx,-0x20(%rbp,%rcx,4)
  4015c8:	75 11                	jne    4015db <phase_2+0x5d>
  4015ca:	83 c0 01             	add    $0x1,%eax
  4015cd:	eb db                	jmp    4015aa <phase_2+0x2c>
  4015cf:	e8 24 06 00 00       	call   401bf8 <explode_bomb>
  4015d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d9:	eb 11                	jmp    4015ec <phase_2+0x6e>
  4015db:	e8 18 06 00 00       	call   401bf8 <explode_bomb>
  4015e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4015e5:	eb 05                	jmp    4015ec <phase_2+0x6e>
  4015e7:	b8 01 00 00 00       	mov    $0x1,%eax
  4015ec:	c9                   	leave  
  4015ed:	c3                   	ret    

00000000004015ee <phase_3>:
  4015ee:	f3 0f 1e fa          	endbr64 
  4015f2:	55                   	push   %rbp
  4015f3:	48 89 e5             	mov    %rsp,%rbp
  4015f6:	48 83 ec 10          	sub    $0x10,%rsp
  4015fa:	4c 8d 45 f8          	lea    -0x8(%rbp),%r8
  4015fe:	48 8d 4d f7          	lea    -0x9(%rbp),%rcx
  401602:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  401606:	be df 21 40 00       	mov    $0x4021df,%esi
  40160b:	b8 00 00 00 00       	mov    $0x0,%eax
  401610:	e8 3b fb ff ff       	call   401150 <__isoc99_sscanf@plt>
  401615:	83 f8 02             	cmp    $0x2,%eax
  401618:	7e 1b                	jle    401635 <phase_3+0x47>
  40161a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40161d:	2d d3 00 00 00       	sub    $0xd3,%eax
  401622:	83 f8 07             	cmp    $0x7,%eax
  401625:	0f 87 13 01 00 00    	ja     40173e <phase_3+0x150>
  40162b:	89 c0                	mov    %eax,%eax
  40162d:	3e ff 24 c5 00 22 40 	notrack jmp *0x402200(,%rax,8)
  401634:	00 
  401635:	e8 be 05 00 00       	call   401bf8 <explode_bomb>
  40163a:	b8 00 00 00 00       	mov    $0x0,%eax
  40163f:	eb 1c                	jmp    40165d <phase_3+0x6f>
  401641:	81 7d f8 04 02 00 00 	cmpl   $0x204,-0x8(%rbp)
  401648:	75 15                	jne    40165f <phase_3+0x71>
  40164a:	b8 76 00 00 00       	mov    $0x76,%eax
  40164f:	38 45 f7             	cmp    %al,-0x9(%rbp)
  401652:	0f 85 f5 00 00 00    	jne    40174d <phase_3+0x15f>
  401658:	b8 01 00 00 00       	mov    $0x1,%eax
  40165d:	c9                   	leave  
  40165e:	c3                   	ret    
  40165f:	e8 94 05 00 00       	call   401bf8 <explode_bomb>
  401664:	b8 00 00 00 00       	mov    $0x0,%eax
  401669:	eb f2                	jmp    40165d <phase_3+0x6f>
  40166b:	81 7d f8 04 02 00 00 	cmpl   $0x204,-0x8(%rbp)
  401672:	75 07                	jne    40167b <phase_3+0x8d>
  401674:	b8 76 00 00 00       	mov    $0x76,%eax
  401679:	eb d4                	jmp    40164f <phase_3+0x61>
  40167b:	e8 78 05 00 00       	call   401bf8 <explode_bomb>
  401680:	b8 00 00 00 00       	mov    $0x0,%eax
  401685:	eb d6                	jmp    40165d <phase_3+0x6f>
  401687:	81 7d f8 04 02 00 00 	cmpl   $0x204,-0x8(%rbp)
  40168e:	75 07                	jne    401697 <phase_3+0xa9>
  401690:	b8 76 00 00 00       	mov    $0x76,%eax
  401695:	eb b8                	jmp    40164f <phase_3+0x61>
  401697:	e8 5c 05 00 00       	call   401bf8 <explode_bomb>
  40169c:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a1:	eb ba                	jmp    40165d <phase_3+0x6f>
  4016a3:	81 7d f8 04 02 00 00 	cmpl   $0x204,-0x8(%rbp)
  4016aa:	75 07                	jne    4016b3 <phase_3+0xc5>
  4016ac:	b8 76 00 00 00       	mov    $0x76,%eax
  4016b1:	eb 9c                	jmp    40164f <phase_3+0x61>
  4016b3:	e8 40 05 00 00       	call   401bf8 <explode_bomb>
  4016b8:	b8 00 00 00 00       	mov    $0x0,%eax
  4016bd:	eb 9e                	jmp    40165d <phase_3+0x6f>
  4016bf:	81 7d f8 04 02 00 00 	cmpl   $0x204,-0x8(%rbp)
  4016c6:	75 07                	jne    4016cf <phase_3+0xe1>
  4016c8:	b8 76 00 00 00       	mov    $0x76,%eax
  4016cd:	eb 80                	jmp    40164f <phase_3+0x61>
  4016cf:	e8 24 05 00 00       	call   401bf8 <explode_bomb>
  4016d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d9:	eb 82                	jmp    40165d <phase_3+0x6f>
  4016db:	81 7d f8 04 02 00 00 	cmpl   $0x204,-0x8(%rbp)
  4016e2:	75 0a                	jne    4016ee <phase_3+0x100>
  4016e4:	b8 76 00 00 00       	mov    $0x76,%eax
  4016e9:	e9 61 ff ff ff       	jmp    40164f <phase_3+0x61>
  4016ee:	e8 05 05 00 00       	call   401bf8 <explode_bomb>
  4016f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f8:	e9 60 ff ff ff       	jmp    40165d <phase_3+0x6f>
  4016fd:	81 7d f8 04 02 00 00 	cmpl   $0x204,-0x8(%rbp)
  401704:	75 0a                	jne    401710 <phase_3+0x122>
  401706:	b8 76 00 00 00       	mov    $0x76,%eax
  40170b:	e9 3f ff ff ff       	jmp    40164f <phase_3+0x61>
  401710:	e8 e3 04 00 00       	call   401bf8 <explode_bomb>
  401715:	b8 00 00 00 00       	mov    $0x0,%eax
  40171a:	e9 3e ff ff ff       	jmp    40165d <phase_3+0x6f>
  40171f:	83 7d f8 43          	cmpl   $0x43,-0x8(%rbp)
  401723:	75 0a                	jne    40172f <phase_3+0x141>
  401725:	b8 6a 00 00 00       	mov    $0x6a,%eax
  40172a:	e9 20 ff ff ff       	jmp    40164f <phase_3+0x61>
  40172f:	e8 c4 04 00 00       	call   401bf8 <explode_bomb>
  401734:	b8 00 00 00 00       	mov    $0x0,%eax
  401739:	e9 1f ff ff ff       	jmp    40165d <phase_3+0x6f>
  40173e:	e8 b5 04 00 00       	call   401bf8 <explode_bomb>
  401743:	b8 00 00 00 00       	mov    $0x0,%eax
  401748:	e9 10 ff ff ff       	jmp    40165d <phase_3+0x6f>
  40174d:	e8 a6 04 00 00       	call   401bf8 <explode_bomb>
  401752:	b8 00 00 00 00       	mov    $0x0,%eax
  401757:	e9 01 ff ff ff       	jmp    40165d <phase_3+0x6f>

000000000040175c <func4>:
  40175c:	f3 0f 1e fa          	endbr64 
  401760:	55                   	push   %rbp
  401761:	48 89 e5             	mov    %rsp,%rbp
  401764:	53                   	push   %rbx
  401765:	48 83 ec 08          	sub    $0x8,%rsp
  401769:	89 d0                	mov    %edx,%eax
  40176b:	29 f0                	sub    %esi,%eax
  40176d:	89 c3                	mov    %eax,%ebx
  40176f:	c1 eb 1f             	shr    $0x1f,%ebx
  401772:	01 c3                	add    %eax,%ebx
  401774:	d1 fb                	sar    %ebx
  401776:	01 f3                	add    %esi,%ebx
  401778:	39 fb                	cmp    %edi,%ebx
  40177a:	7f 0a                	jg     401786 <func4+0x2a>
  40177c:	7c 16                	jl     401794 <func4+0x38>
  40177e:	89 d8                	mov    %ebx,%eax
  401780:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401784:	c9                   	leave  
  401785:	c3                   	ret    
  401786:	8d 53 ff             	lea    -0x1(%rbx),%edx
  401789:	e8 ce ff ff ff       	call   40175c <func4>
  40178e:	d1 fb                	sar    %ebx
  401790:	01 c3                	add    %eax,%ebx
  401792:	eb ea                	jmp    40177e <func4+0x22>
  401794:	8d 73 01             	lea    0x1(%rbx),%esi
  401797:	e8 c0 ff ff ff       	call   40175c <func4>
  40179c:	8d 1c 58             	lea    (%rax,%rbx,2),%ebx
  40179f:	eb dd                	jmp    40177e <func4+0x22>

00000000004017a1 <phase_4>:
  4017a1:	f3 0f 1e fa          	endbr64 
  4017a5:	55                   	push   %rbp
  4017a6:	48 89 e5             	mov    %rsp,%rbp
  4017a9:	48 83 ec 10          	sub    $0x10,%rsp
  4017ad:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  4017b1:	48 8d 55 fc          	lea    -0x4(%rbp),%rdx
  4017b5:	be eb 23 40 00       	mov    $0x4023eb,%esi
  4017ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4017bf:	e8 8c f9 ff ff       	call   401150 <__isoc99_sscanf@plt>
  4017c4:	83 f8 02             	cmp    $0x2,%eax
  4017c7:	75 0d                	jne    4017d6 <phase_4+0x35>
  4017c9:	8b 7d fc             	mov    -0x4(%rbp),%edi
  4017cc:	83 ff 08             	cmp    $0x8,%edi
  4017cf:	7e 05                	jle    4017d6 <phase_4+0x35>
  4017d1:	83 ff 38             	cmp    $0x38,%edi
  4017d4:	7e 0c                	jle    4017e2 <phase_4+0x41>
  4017d6:	e8 1d 04 00 00       	call   401bf8 <explode_bomb>
  4017db:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e0:	c9                   	leave  
  4017e1:	c3                   	ret    
  4017e2:	ba 38 00 00 00       	mov    $0x38,%edx
  4017e7:	be 09 00 00 00       	mov    $0x9,%esi
  4017ec:	e8 6b ff ff ff       	call   40175c <func4>
  4017f1:	39 45 f8             	cmp    %eax,-0x8(%rbp)
  4017f4:	75 07                	jne    4017fd <phase_4+0x5c>
  4017f6:	b8 01 00 00 00       	mov    $0x1,%eax
  4017fb:	eb e3                	jmp    4017e0 <phase_4+0x3f>
  4017fd:	e8 f6 03 00 00       	call   401bf8 <explode_bomb>
  401802:	b8 00 00 00 00       	mov    $0x0,%eax
  401807:	eb d7                	jmp    4017e0 <phase_4+0x3f>

0000000000401809 <phase_5>:
  401809:	f3 0f 1e fa          	endbr64 
  40180d:	55                   	push   %rbp
  40180e:	48 89 e5             	mov    %rsp,%rbp
  401811:	53                   	push   %rbx
  401812:	48 83 ec 08          	sub    $0x8,%rsp
  401816:	48 89 fb             	mov    %rdi,%rbx
  401819:	e8 ae 02 00 00       	call   401acc <string_length>
  40181e:	83 f8 06             	cmp    $0x6,%eax
  401821:	75 0c                	jne    40182f <phase_5+0x26>
  401823:	b9 00 00 00 00       	mov    $0x0,%ecx
  401828:	b8 00 00 00 00       	mov    $0x0,%eax
  40182d:	eb 20                	jmp    40184f <phase_5+0x46>
  40182f:	e8 c4 03 00 00       	call   401bf8 <explode_bomb>
  401834:	b8 00 00 00 00       	mov    $0x0,%eax
  401839:	eb 23                	jmp    40185e <phase_5+0x55>
  40183b:	48 63 d0             	movslq %eax,%rdx
  40183e:	0f b6 14 13          	movzbl (%rbx,%rdx,1),%edx
  401842:	83 e2 0f             	and    $0xf,%edx
  401845:	03 0c 95 40 22 40 00 	add    0x402240(,%rdx,4),%ecx
  40184c:	83 c0 01             	add    $0x1,%eax
  40184f:	83 f8 05             	cmp    $0x5,%eax
  401852:	7e e7                	jle    40183b <phase_5+0x32>
  401854:	83 f9 33             	cmp    $0x33,%ecx
  401857:	75 0b                	jne    401864 <phase_5+0x5b>
  401859:	b8 01 00 00 00       	mov    $0x1,%eax
  40185e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401862:	c9                   	leave  
  401863:	c3                   	ret    
  401864:	e8 8f 03 00 00       	call   401bf8 <explode_bomb>
  401869:	b8 00 00 00 00       	mov    $0x0,%eax
  40186e:	eb ee                	jmp    40185e <phase_5+0x55>

0000000000401870 <phase_6>:
  401870:	f3 0f 1e fa          	endbr64 
  401874:	55                   	push   %rbp
  401875:	48 89 e5             	mov    %rsp,%rbp
  401878:	48 83 ec 60          	sub    $0x60,%rsp
  40187c:	ba 08 00 00 00       	mov    $0x8,%edx
  401881:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  401885:	e8 ec 03 00 00       	call   401c76 <read_n_numbers>
  40188a:	85 c0                	test   %eax,%eax
  40188c:	74 47                	je     4018d5 <phase_6+0x65>
  40188e:	be 00 00 00 00       	mov    $0x0,%esi
  401893:	83 fe 07             	cmp    $0x7,%esi
  401896:	7f 3f                	jg     4018d7 <phase_6+0x67>
  401898:	48 63 c6             	movslq %esi,%rax
  40189b:	8b 4c 85 e0          	mov    -0x20(%rbp,%rax,4),%ecx
  40189f:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4018a2:	83 f8 07             	cmp    $0x7,%eax
  4018a5:	77 18                	ja     4018bf <phase_6+0x4f>
  4018a7:	83 c6 01             	add    $0x1,%esi
  4018aa:	89 f0                	mov    %esi,%eax
  4018ac:	83 f8 07             	cmp    $0x7,%eax
  4018af:	7f e2                	jg     401893 <phase_6+0x23>
  4018b1:	48 63 d0             	movslq %eax,%rdx
  4018b4:	3b 4c 95 e0          	cmp    -0x20(%rbp,%rdx,4),%ecx
  4018b8:	74 11                	je     4018cb <phase_6+0x5b>
  4018ba:	83 c0 01             	add    $0x1,%eax
  4018bd:	eb ed                	jmp    4018ac <phase_6+0x3c>
  4018bf:	e8 34 03 00 00       	call   401bf8 <explode_bomb>
  4018c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018c9:	eb 0a                	jmp    4018d5 <phase_6+0x65>
  4018cb:	e8 28 03 00 00       	call   401bf8 <explode_bomb>
  4018d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4018d5:	c9                   	leave  
  4018d6:	c3                   	ret    
  4018d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4018dc:	eb 13                	jmp    4018f1 <phase_6+0x81>
  4018de:	48 63 c8             	movslq %eax,%rcx
  4018e1:	ba 09 00 00 00       	mov    $0x9,%edx
  4018e6:	2b 54 8d e0          	sub    -0x20(%rbp,%rcx,4),%edx
  4018ea:	89 54 8d e0          	mov    %edx,-0x20(%rbp,%rcx,4)
  4018ee:	83 c0 01             	add    $0x1,%eax
  4018f1:	83 f8 07             	cmp    $0x7,%eax
  4018f4:	7e e8                	jle    4018de <phase_6+0x6e>
  4018f6:	be 00 00 00 00       	mov    $0x0,%esi
  4018fb:	eb 18                	jmp    401915 <phase_6+0xa5>
  4018fd:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401901:	83 c0 01             	add    $0x1,%eax
  401904:	48 63 ce             	movslq %esi,%rcx
  401907:	39 44 8d e0          	cmp    %eax,-0x20(%rbp,%rcx,4)
  40190b:	7f f0                	jg     4018fd <phase_6+0x8d>
  40190d:	48 89 54 cd a0       	mov    %rdx,-0x60(%rbp,%rcx,8)
  401912:	83 c6 01             	add    $0x1,%esi
  401915:	83 fe 07             	cmp    $0x7,%esi
  401918:	7f 0c                	jg     401926 <phase_6+0xb6>
  40191a:	b8 01 00 00 00       	mov    $0x1,%eax
  40191f:	ba 80 42 40 00       	mov    $0x404280,%edx
  401924:	eb de                	jmp    401904 <phase_6+0x94>
  401926:	48 8b 55 a0          	mov    -0x60(%rbp),%rdx
  40192a:	48 89 d6             	mov    %rdx,%rsi
  40192d:	b8 01 00 00 00       	mov    $0x1,%eax
  401932:	eb 12                	jmp    401946 <phase_6+0xd6>
  401934:	48 63 c8             	movslq %eax,%rcx
  401937:	48 8b 4c cd a0       	mov    -0x60(%rbp,%rcx,8),%rcx
  40193c:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  401940:	83 c0 01             	add    $0x1,%eax
  401943:	48 89 ce             	mov    %rcx,%rsi
  401946:	83 f8 07             	cmp    $0x7,%eax
  401949:	7e e9                	jle    401934 <phase_6+0xc4>
  40194b:	48 c7 46 08 00 00 00 	movq   $0x0,0x8(%rsi)
  401952:	00 
  401953:	b8 00 00 00 00       	mov    $0x0,%eax
  401958:	eb 03                	jmp    40195d <phase_6+0xed>
  40195a:	83 c0 01             	add    $0x1,%eax
  40195d:	83 f8 06             	cmp    $0x6,%eax
  401960:	7f 19                	jg     40197b <phase_6+0x10b>
  401962:	8b 0a                	mov    (%rdx),%ecx
  401964:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401968:	3b 0a                	cmp    (%rdx),%ecx
  40196a:	7d ee                	jge    40195a <phase_6+0xea>
  40196c:	e8 87 02 00 00       	call   401bf8 <explode_bomb>
  401971:	b8 00 00 00 00       	mov    $0x0,%eax
  401976:	e9 5a ff ff ff       	jmp    4018d5 <phase_6+0x65>
  40197b:	b8 01 00 00 00       	mov    $0x1,%eax
  401980:	e9 50 ff ff ff       	jmp    4018d5 <phase_6+0x65>

0000000000401985 <fun7>:
  401985:	f3 0f 1e fa          	endbr64 
  401989:	48 85 ff             	test   %rdi,%rdi
  40198c:	74 2f                	je     4019bd <fun7+0x38>
  40198e:	55                   	push   %rbp
  40198f:	48 89 e5             	mov    %rsp,%rbp
  401992:	8b 07                	mov    (%rdi),%eax
  401994:	39 f0                	cmp    %esi,%eax
  401996:	7f 09                	jg     4019a1 <fun7+0x1c>
  401998:	75 14                	jne    4019ae <fun7+0x29>
  40199a:	b8 00 00 00 00       	mov    $0x0,%eax
  40199f:	5d                   	pop    %rbp
  4019a0:	c3                   	ret    
  4019a1:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4019a5:	e8 db ff ff ff       	call   401985 <fun7>
  4019aa:	01 c0                	add    %eax,%eax
  4019ac:	eb f1                	jmp    40199f <fun7+0x1a>
  4019ae:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4019b2:	e8 ce ff ff ff       	call   401985 <fun7>
  4019b7:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4019bb:	eb e2                	jmp    40199f <fun7+0x1a>
  4019bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4019c2:	c3                   	ret    

00000000004019c3 <secret_phase>:
  4019c3:	f3 0f 1e fa          	endbr64 
  4019c7:	55                   	push   %rbp
  4019c8:	48 89 e5             	mov    %rsp,%rbp
  4019cb:	e8 2f 03 00 00       	call   401cff <read_line>
  4019d0:	48 89 c7             	mov    %rax,%rdi
  4019d3:	ba 0a 00 00 00       	mov    $0xa,%edx
  4019d8:	be 00 00 00 00       	mov    $0x0,%esi
  4019dd:	e8 4e f7 ff ff       	call   401130 <strtol@plt>
  4019e2:	89 c6                	mov    %eax,%esi
  4019e4:	83 e8 01             	sub    $0x1,%eax
  4019e7:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4019ec:	77 1b                	ja     401a09 <secret_phase+0x46>
  4019ee:	bf a0 40 40 00       	mov    $0x4040a0,%edi
  4019f3:	e8 8d ff ff ff       	call   401985 <fun7>
  4019f8:	83 f8 07             	cmp    $0x7,%eax
  4019fb:	74 18                	je     401a15 <secret_phase+0x52>
  4019fd:	e8 f6 01 00 00       	call   401bf8 <explode_bomb>
  401a02:	b8 00 00 00 00       	mov    $0x0,%eax
  401a07:	eb 0a                	jmp    401a13 <secret_phase+0x50>
  401a09:	e8 ea 01 00 00       	call   401bf8 <explode_bomb>
  401a0e:	b8 00 00 00 00       	mov    $0x0,%eax
  401a13:	5d                   	pop    %rbp
  401a14:	c3                   	ret    
  401a15:	be b8 21 40 00       	mov    $0x4021b8,%esi
  401a1a:	bf 01 00 00 00       	mov    $0x1,%edi
  401a1f:	b8 00 00 00 00       	mov    $0x0,%eax
  401a24:	e8 47 f7 ff ff       	call   401170 <__printf_chk@plt>
  401a29:	e8 2d 04 00 00       	call   401e5b <phase_defused>
  401a2e:	b8 01 00 00 00       	mov    $0x1,%eax
  401a33:	eb de                	jmp    401a13 <secret_phase+0x50>

0000000000401a35 <sig_handler>:
  401a35:	f3 0f 1e fa          	endbr64 
  401a39:	55                   	push   %rbp
  401a3a:	48 89 e5             	mov    %rsp,%rbp
  401a3d:	be b0 22 40 00       	mov    $0x4022b0,%esi
  401a42:	bf 01 00 00 00       	mov    $0x1,%edi
  401a47:	b8 00 00 00 00       	mov    $0x0,%eax
  401a4c:	e8 1f f7 ff ff       	call   401170 <__printf_chk@plt>
  401a51:	bf 03 00 00 00       	mov    $0x3,%edi
  401a56:	e8 55 f7 ff ff       	call   4011b0 <sleep@plt>
  401a5b:	be 9b 23 40 00       	mov    $0x40239b,%esi
  401a60:	bf 01 00 00 00       	mov    $0x1,%edi
  401a65:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6a:	e8 01 f7 ff ff       	call   401170 <__printf_chk@plt>
  401a6f:	48 8b 3d aa 29 00 00 	mov    0x29aa(%rip),%rdi        # 404420 <stdout@GLIBC_2.2.5>
  401a76:	e8 c5 f6 ff ff       	call   401140 <fflush@plt>
  401a7b:	bf 01 00 00 00       	mov    $0x1,%edi
  401a80:	e8 2b f7 ff ff       	call   4011b0 <sleep@plt>
  401a85:	be a3 23 40 00       	mov    $0x4023a3,%esi
  401a8a:	bf 01 00 00 00       	mov    $0x1,%edi
  401a8f:	b8 00 00 00 00       	mov    $0x0,%eax
  401a94:	e8 d7 f6 ff ff       	call   401170 <__printf_chk@plt>
  401a99:	bf 10 00 00 00       	mov    $0x10,%edi
  401a9e:	e8 fd f6 ff ff       	call   4011a0 <exit@plt>

0000000000401aa3 <invalid_phase>:
  401aa3:	f3 0f 1e fa          	endbr64 
  401aa7:	55                   	push   %rbp
  401aa8:	48 89 e5             	mov    %rsp,%rbp
  401aab:	48 89 fa             	mov    %rdi,%rdx
  401aae:	be ac 23 40 00       	mov    $0x4023ac,%esi
  401ab3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ab8:	b8 00 00 00 00       	mov    $0x0,%eax
  401abd:	e8 ae f6 ff ff       	call   401170 <__printf_chk@plt>
  401ac2:	bf 08 00 00 00       	mov    $0x8,%edi
  401ac7:	e8 d4 f6 ff ff       	call   4011a0 <exit@plt>

0000000000401acc <string_length>:
  401acc:	f3 0f 1e fa          	endbr64 
  401ad0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad5:	eb 07                	jmp    401ade <string_length+0x12>
  401ad7:	48 83 c7 01          	add    $0x1,%rdi
  401adb:	83 c0 01             	add    $0x1,%eax
  401ade:	80 3f 00             	cmpb   $0x0,(%rdi)
  401ae1:	75 f4                	jne    401ad7 <string_length+0xb>
  401ae3:	c3                   	ret    

0000000000401ae4 <strings_not_equal>:
  401ae4:	f3 0f 1e fa          	endbr64 
  401ae8:	55                   	push   %rbp
  401ae9:	48 89 e5             	mov    %rsp,%rbp
  401aec:	41 55                	push   %r13
  401aee:	41 54                	push   %r12
  401af0:	53                   	push   %rbx
  401af1:	48 83 ec 08          	sub    $0x8,%rsp
  401af5:	48 89 fb             	mov    %rdi,%rbx
  401af8:	49 89 f4             	mov    %rsi,%r12
  401afb:	e8 cc ff ff ff       	call   401acc <string_length>
  401b00:	41 89 c5             	mov    %eax,%r13d
  401b03:	4c 89 e7             	mov    %r12,%rdi
  401b06:	e8 c1 ff ff ff       	call   401acc <string_length>
  401b0b:	41 39 c5             	cmp    %eax,%r13d
  401b0e:	74 18                	je     401b28 <strings_not_equal+0x44>
  401b10:	b8 01 00 00 00       	mov    $0x1,%eax
  401b15:	48 83 c4 08          	add    $0x8,%rsp
  401b19:	5b                   	pop    %rbx
  401b1a:	41 5c                	pop    %r12
  401b1c:	41 5d                	pop    %r13
  401b1e:	5d                   	pop    %rbp
  401b1f:	c3                   	ret    
  401b20:	48 83 c3 01          	add    $0x1,%rbx
  401b24:	49 83 c4 01          	add    $0x1,%r12
  401b28:	0f b6 03             	movzbl (%rbx),%eax
  401b2b:	84 c0                	test   %al,%al
  401b2d:	74 0d                	je     401b3c <strings_not_equal+0x58>
  401b2f:	41 38 04 24          	cmp    %al,(%r12)
  401b33:	74 eb                	je     401b20 <strings_not_equal+0x3c>
  401b35:	b8 01 00 00 00       	mov    $0x1,%eax
  401b3a:	eb d9                	jmp    401b15 <strings_not_equal+0x31>
  401b3c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b41:	eb d2                	jmp    401b15 <strings_not_equal+0x31>

0000000000401b43 <initialize_bomb>:
  401b43:	f3 0f 1e fa          	endbr64 
  401b47:	55                   	push   %rbp
  401b48:	48 89 e5             	mov    %rsp,%rbp
  401b4b:	be 35 1a 40 00       	mov    $0x401a35,%esi
  401b50:	bf 02 00 00 00       	mov    $0x2,%edi
  401b55:	e8 c6 f5 ff ff       	call   401120 <signal@plt>
  401b5a:	5d                   	pop    %rbp
  401b5b:	c3                   	ret    

0000000000401b5c <initialize_bomb_solve>:
  401b5c:	f3 0f 1e fa          	endbr64 
  401b60:	c3                   	ret    

0000000000401b61 <blank_line>:
  401b61:	f3 0f 1e fa          	endbr64 
  401b65:	55                   	push   %rbp
  401b66:	48 89 e5             	mov    %rsp,%rbp
  401b69:	41 54                	push   %r12
  401b6b:	53                   	push   %rbx
  401b6c:	49 89 fc             	mov    %rdi,%r12
  401b6f:	41 0f b6 1c 24       	movzbl (%r12),%ebx
  401b74:	84 db                	test   %bl,%bl
  401b76:	74 1e                	je     401b96 <blank_line+0x35>
  401b78:	e8 43 f6 ff ff       	call   4011c0 <__ctype_b_loc@plt>
  401b7d:	48 8b 00             	mov    (%rax),%rax
  401b80:	49 83 c4 01          	add    $0x1,%r12
  401b84:	48 0f be db          	movsbq %bl,%rbx
  401b88:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401b8d:	75 e0                	jne    401b6f <blank_line+0xe>
  401b8f:	b8 00 00 00 00       	mov    $0x0,%eax
  401b94:	eb 05                	jmp    401b9b <blank_line+0x3a>
  401b96:	b8 01 00 00 00       	mov    $0x1,%eax
  401b9b:	5b                   	pop    %rbx
  401b9c:	41 5c                	pop    %r12
  401b9e:	5d                   	pop    %rbp
  401b9f:	c3                   	ret    

0000000000401ba0 <skip>:
  401ba0:	f3 0f 1e fa          	endbr64 
  401ba4:	55                   	push   %rbp
  401ba5:	48 89 e5             	mov    %rsp,%rbp
  401ba8:	53                   	push   %rbx
  401ba9:	48 83 ec 08          	sub    $0x8,%rsp
  401bad:	48 63 05 fc 28 00 00 	movslq 0x28fc(%rip),%rax        # 4044b0 <num_input_strings>
  401bb4:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401bb8:	48 c1 e7 04          	shl    $0x4,%rdi
  401bbc:	48 81 c7 c0 44 40 00 	add    $0x4044c0,%rdi
  401bc3:	48 8b 0d 76 28 00 00 	mov    0x2876(%rip),%rcx        # 404440 <infile>
  401bca:	ba 50 00 00 00       	mov    $0x50,%edx
  401bcf:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  401bd6:	e8 85 f5 ff ff       	call   401160 <__fgets_chk@plt>
  401bdb:	48 89 c3             	mov    %rax,%rbx
  401bde:	48 85 c0             	test   %rax,%rax
  401be1:	74 0c                	je     401bef <skip+0x4f>
  401be3:	48 89 c7             	mov    %rax,%rdi
  401be6:	e8 76 ff ff ff       	call   401b61 <blank_line>
  401beb:	85 c0                	test   %eax,%eax
  401bed:	75 be                	jne    401bad <skip+0xd>
  401bef:	48 89 d8             	mov    %rbx,%rax
  401bf2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401bf6:	c9                   	leave  
  401bf7:	c3                   	ret    

0000000000401bf8 <explode_bomb>:
  401bf8:	f3 0f 1e fa          	endbr64 
  401bfc:	55                   	push   %rbp
  401bfd:	48 89 e5             	mov    %rsp,%rbp
  401c00:	be bd 23 40 00       	mov    $0x4023bd,%esi
  401c05:	bf 01 00 00 00       	mov    $0x1,%edi
  401c0a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0f:	e8 5c f5 ff ff       	call   401170 <__printf_chk@plt>
  401c14:	be c7 23 40 00       	mov    $0x4023c7,%esi
  401c19:	bf 01 00 00 00       	mov    $0x1,%edi
  401c1e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c23:	e8 48 f5 ff ff       	call   401170 <__printf_chk@plt>
  401c28:	5d                   	pop    %rbp
  401c29:	c3                   	ret    

0000000000401c2a <read_six_numbers>:
  401c2a:	f3 0f 1e fa          	endbr64 
  401c2e:	55                   	push   %rbp
  401c2f:	48 89 e5             	mov    %rsp,%rbp
  401c32:	48 89 f2             	mov    %rsi,%rdx
  401c35:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  401c39:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401c3d:	50                   	push   %rax
  401c3e:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401c42:	50                   	push   %rax
  401c43:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401c47:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401c4b:	be df 23 40 00       	mov    $0x4023df,%esi
  401c50:	b8 00 00 00 00       	mov    $0x0,%eax
  401c55:	e8 f6 f4 ff ff       	call   401150 <__isoc99_sscanf@plt>
  401c5a:	48 83 c4 10          	add    $0x10,%rsp
  401c5e:	83 f8 05             	cmp    $0x5,%eax
  401c61:	7e 07                	jle    401c6a <read_six_numbers+0x40>
  401c63:	b8 01 00 00 00       	mov    $0x1,%eax
  401c68:	c9                   	leave  
  401c69:	c3                   	ret    
  401c6a:	e8 89 ff ff ff       	call   401bf8 <explode_bomb>
  401c6f:	b8 00 00 00 00       	mov    $0x0,%eax
  401c74:	eb f2                	jmp    401c68 <read_six_numbers+0x3e>

0000000000401c76 <read_n_numbers>:
  401c76:	f3 0f 1e fa          	endbr64 
  401c7a:	55                   	push   %rbp
  401c7b:	48 89 e5             	mov    %rsp,%rbp
  401c7e:	41 56                	push   %r14
  401c80:	41 55                	push   %r13
  401c82:	41 54                	push   %r12
  401c84:	53                   	push   %rbx
  401c85:	49 89 fe             	mov    %rdi,%r14
  401c88:	49 89 f5             	mov    %rsi,%r13
  401c8b:	41 89 d4             	mov    %edx,%r12d
  401c8e:	bb 00 00 00 00       	mov    $0x0,%ebx
  401c93:	eb 33                	jmp    401cc8 <read_n_numbers+0x52>
  401c95:	be f1 23 40 00       	mov    $0x4023f1,%esi
  401c9a:	4c 89 f7             	mov    %r14,%rdi
  401c9d:	e8 ee f4 ff ff       	call   401190 <strtok@plt>
  401ca2:	48 89 c7             	mov    %rax,%rdi
  401ca5:	48 85 ff             	test   %rdi,%rdi
  401ca8:	74 3b                	je     401ce5 <read_n_numbers+0x6f>
  401caa:	48 63 c3             	movslq %ebx,%rax
  401cad:	49 8d 54 85 00       	lea    0x0(%r13,%rax,4),%rdx
  401cb2:	be e5 21 40 00       	mov    $0x4021e5,%esi
  401cb7:	b8 00 00 00 00       	mov    $0x0,%eax
  401cbc:	e8 8f f4 ff ff       	call   401150 <__isoc99_sscanf@plt>
  401cc1:	85 c0                	test   %eax,%eax
  401cc3:	7e 20                	jle    401ce5 <read_n_numbers+0x6f>
  401cc5:	83 c3 01             	add    $0x1,%ebx
  401cc8:	44 39 e3             	cmp    %r12d,%ebx
  401ccb:	7d 2b                	jge    401cf8 <read_n_numbers+0x82>
  401ccd:	85 db                	test   %ebx,%ebx
  401ccf:	74 c4                	je     401c95 <read_n_numbers+0x1f>
  401cd1:	be f1 23 40 00       	mov    $0x4023f1,%esi
  401cd6:	bf 00 00 00 00       	mov    $0x0,%edi
  401cdb:	e8 b0 f4 ff ff       	call   401190 <strtok@plt>
  401ce0:	48 89 c7             	mov    %rax,%rdi
  401ce3:	eb c0                	jmp    401ca5 <read_n_numbers+0x2f>
  401ce5:	e8 0e ff ff ff       	call   401bf8 <explode_bomb>
  401cea:	b8 00 00 00 00       	mov    $0x0,%eax
  401cef:	5b                   	pop    %rbx
  401cf0:	41 5c                	pop    %r12
  401cf2:	41 5d                	pop    %r13
  401cf4:	41 5e                	pop    %r14
  401cf6:	5d                   	pop    %rbp
  401cf7:	c3                   	ret    
  401cf8:	b8 01 00 00 00       	mov    $0x1,%eax
  401cfd:	eb f0                	jmp    401cef <read_n_numbers+0x79>

0000000000401cff <read_line>:
  401cff:	f3 0f 1e fa          	endbr64 
  401d03:	55                   	push   %rbp
  401d04:	48 89 e5             	mov    %rsp,%rbp
  401d07:	53                   	push   %rbx
  401d08:	48 83 ec 08          	sub    $0x8,%rsp
  401d0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d11:	e8 8a fe ff ff       	call   401ba0 <skip>
  401d16:	48 85 c0             	test   %rax,%rax
  401d19:	74 66                	je     401d81 <read_line+0x82>
  401d1b:	48 63 05 8e 27 00 00 	movslq 0x278e(%rip),%rax        # 4044b0 <num_input_strings>
  401d22:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401d26:	48 c1 e7 04          	shl    $0x4,%rdi
  401d2a:	48 81 c7 c0 44 40 00 	add    $0x4044c0,%rdi
  401d31:	e8 da f3 ff ff       	call   401110 <strlen@plt>
  401d36:	48 89 c3             	mov    %rax,%rbx
  401d39:	83 f8 4e             	cmp    $0x4e,%eax
  401d3c:	0f 8f c0 00 00 00    	jg     401e02 <read_line+0x103>
  401d42:	8b 15 68 27 00 00    	mov    0x2768(%rip),%edx        # 4044b0 <num_input_strings>
  401d48:	83 eb 01             	sub    $0x1,%ebx
  401d4b:	48 63 db             	movslq %ebx,%rbx
  401d4e:	48 63 ca             	movslq %edx,%rcx
  401d51:	48 8d 04 8d 00 00 00 	lea    0x0(,%rcx,4),%rax
  401d58:	00 
  401d59:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
  401d5d:	48 c1 e6 04          	shl    $0x4,%rsi
  401d61:	c6 84 33 c0 44 40 00 	movb   $0x0,0x4044c0(%rbx,%rsi,1)
  401d68:	00 
  401d69:	83 c2 01             	add    $0x1,%edx
  401d6c:	89 15 3e 27 00 00    	mov    %edx,0x273e(%rip)        # 4044b0 <num_input_strings>
  401d72:	48 89 f0             	mov    %rsi,%rax
  401d75:	48 05 c0 44 40 00    	add    $0x4044c0,%rax
  401d7b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401d7f:	c9                   	leave  
  401d80:	c3                   	ret    
  401d81:	48 8b 05 a8 26 00 00 	mov    0x26a8(%rip),%rax        # 404430 <stdin@GLIBC_2.2.5>
  401d88:	48 39 05 b1 26 00 00 	cmp    %rax,0x26b1(%rip)        # 404440 <infile>
  401d8f:	74 49                	je     401dda <read_line+0xdb>
  401d91:	bf f5 23 40 00       	mov    $0x4023f5,%edi
  401d96:	e8 65 f3 ff ff       	call   401100 <getenv@plt>
  401d9b:	48 85 c0             	test   %rax,%rax
  401d9e:	75 58                	jne    401df8 <read_line+0xf9>
  401da0:	48 8b 05 89 26 00 00 	mov    0x2689(%rip),%rax        # 404430 <stdin@GLIBC_2.2.5>
  401da7:	48 89 05 92 26 00 00 	mov    %rax,0x2692(%rip)        # 404440 <infile>
  401dae:	b8 00 00 00 00       	mov    $0x0,%eax
  401db3:	e8 e8 fd ff ff       	call   401ba0 <skip>
  401db8:	48 85 c0             	test   %rax,%rax
  401dbb:	0f 85 5a ff ff ff    	jne    401d1b <read_line+0x1c>
  401dc1:	be f0 22 40 00       	mov    $0x4022f0,%esi
  401dc6:	bf 01 00 00 00       	mov    $0x1,%edi
  401dcb:	e8 a0 f3 ff ff       	call   401170 <__printf_chk@plt>
  401dd0:	bf 00 00 00 00       	mov    $0x0,%edi
  401dd5:	e8 c6 f3 ff ff       	call   4011a0 <exit@plt>
  401dda:	be f0 22 40 00       	mov    $0x4022f0,%esi
  401ddf:	bf 01 00 00 00       	mov    $0x1,%edi
  401de4:	b8 00 00 00 00       	mov    $0x0,%eax
  401de9:	e8 82 f3 ff ff       	call   401170 <__printf_chk@plt>
  401dee:	bf 08 00 00 00       	mov    $0x8,%edi
  401df3:	e8 a8 f3 ff ff       	call   4011a0 <exit@plt>
  401df8:	bf 00 00 00 00       	mov    $0x0,%edi
  401dfd:	e8 9e f3 ff ff       	call   4011a0 <exit@plt>
  401e02:	be 00 24 40 00       	mov    $0x402400,%esi
  401e07:	bf 01 00 00 00       	mov    $0x1,%edi
  401e0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e11:	e8 5a f3 ff ff       	call   401170 <__printf_chk@plt>
  401e16:	8b 05 94 26 00 00    	mov    0x2694(%rip),%eax        # 4044b0 <num_input_strings>
  401e1c:	8d 50 01             	lea    0x1(%rax),%edx
  401e1f:	89 15 8b 26 00 00    	mov    %edx,0x268b(%rip)        # 4044b0 <num_input_strings>
  401e25:	48 98                	cltq   
  401e27:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401e2b:	48 c1 e0 04          	shl    $0x4,%rax
  401e2f:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
  401e36:	75 6e 63 
  401e39:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401e40:	2a 2a 00 
  401e43:	48 89 b0 c0 44 40 00 	mov    %rsi,0x4044c0(%rax)
  401e4a:	48 89 b8 c8 44 40 00 	mov    %rdi,0x4044c8(%rax)
  401e51:	e8 a2 fd ff ff       	call   401bf8 <explode_bomb>
  401e56:	e9 e7 fe ff ff       	jmp    401d42 <read_line+0x43>

0000000000401e5b <phase_defused>:
  401e5b:	f3 0f 1e fa          	endbr64 
  401e5f:	83 3d 4a 26 00 00 07 	cmpl   $0x7,0x264a(%rip)        # 4044b0 <num_input_strings>
  401e66:	74 01                	je     401e69 <phase_defused+0xe>
  401e68:	c3                   	ret    
  401e69:	55                   	push   %rbp
  401e6a:	48 89 e5             	mov    %rsp,%rbp
  401e6d:	48 83 ec 60          	sub    $0x60,%rsp
  401e71:	4c 8d 45 b0          	lea    -0x50(%rbp),%r8
  401e75:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
  401e79:	48 8d 55 ac          	lea    -0x54(%rbp),%rdx
  401e7d:	be 1c 24 40 00       	mov    $0x40241c,%esi
  401e82:	bf 00 46 40 00       	mov    $0x404600,%edi
  401e87:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8c:	e8 bf f2 ff ff       	call   401150 <__isoc99_sscanf@plt>
  401e91:	83 f8 03             	cmp    $0x3,%eax
  401e94:	74 16                	je     401eac <phase_defused+0x51>
  401e96:	be 70 23 40 00       	mov    $0x402370,%esi
  401e9b:	bf 01 00 00 00       	mov    $0x1,%edi
  401ea0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea5:	e8 c6 f2 ff ff       	call   401170 <__printf_chk@plt>
  401eaa:	c9                   	leave  
  401eab:	c3                   	ret    
  401eac:	be 25 24 40 00       	mov    $0x402425,%esi
  401eb1:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
  401eb5:	e8 2a fc ff ff       	call   401ae4 <strings_not_equal>
  401eba:	85 c0                	test   %eax,%eax
  401ebc:	75 d8                	jne    401e96 <phase_defused+0x3b>
  401ebe:	be 10 23 40 00       	mov    $0x402310,%esi
  401ec3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec8:	e8 a3 f2 ff ff       	call   401170 <__printf_chk@plt>
  401ecd:	be 38 23 40 00       	mov    $0x402338,%esi
  401ed2:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed7:	b8 00 00 00 00       	mov    $0x0,%eax
  401edc:	e8 8f f2 ff ff       	call   401170 <__printf_chk@plt>
  401ee1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee6:	e8 d8 fa ff ff       	call   4019c3 <secret_phase>
  401eeb:	eb a9                	jmp    401e96 <phase_defused+0x3b>

Disassembly of section .fini:

0000000000401ef0 <_fini>:
  401ef0:	f3 0f 1e fa          	endbr64 
  401ef4:	48 83 ec 08          	sub    $0x8,%rsp
  401ef8:	48 83 c4 08          	add    $0x8,%rsp
  401efc:	c3                   	ret    
