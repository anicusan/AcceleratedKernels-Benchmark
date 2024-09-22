
arithmetic_kernel.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	pushq  0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmpq   *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4000 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001040 <putchar@plt>:
    1040:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4008 <putchar@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001050 <dist3@plt>:
    1050:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4010 <dist3@@Base+0x2a20>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001060 <puts@plt>:
    1060:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4018 <puts@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001070 <expf@plt>:
    1070:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4020 <expf@GLIBC_2.27>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001080 <clock@plt>:
    1080:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 4028 <clock@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001090 <printf@plt>:
    1090:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 4030 <printf@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010a0 <srand@plt>:
    10a0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 4038 <srand@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010b0 <strtol@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 4040 <strtol@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010c0 <sqrtf@plt>:
    10c0:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 4048 <sqrtf@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010d0 <malloc@plt>:
    10d0:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 4050 <malloc@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010e0 <powf@plt>:
    10e0:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 4058 <powf@GLIBC_2.27>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010f0 <rbf_cpu@plt>:
    10f0:	ff 25 6a 2f 00 00    	jmpq   *0x2f6a(%rip)        # 4060 <rbf_cpu@@Base+0x2d20>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001100 <rand@plt>:
    1100:	ff 25 62 2f 00 00    	jmpq   *0x2f62(%rip)        # 4068 <rand@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	ff 25 ca 2e 00 00    	jmpq   *0x2eca(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1116:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001120 <main>:
    1120:	41 56                	push   %r14
    1122:	41 55                	push   %r13
    1124:	41 54                	push   %r12
    1126:	55                   	push   %rbp
    1127:	53                   	push   %rbx
    1128:	83 ff 02             	cmp    $0x2,%edi
    112b:	74 1a                	je     1147 <main+0x27>
    112d:	48 8d 3d cc 0e 00 00 	lea    0xecc(%rip),%rdi        # 2000 <_fini+0x8b0>
    1134:	e8 27 ff ff ff       	callq  1060 <puts@plt>
    1139:	b8 01 00 00 00       	mov    $0x1,%eax
    113e:	5b                   	pop    %rbx
    113f:	5d                   	pop    %rbp
    1140:	41 5c                	pop    %r12
    1142:	41 5d                	pop    %r13
    1144:	41 5e                	pop    %r14
    1146:	c3                   	retq   
    1147:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    114b:	ba 0a 00 00 00       	mov    $0xa,%edx
    1150:	31 f6                	xor    %esi,%esi
    1152:	e8 59 ff ff ff       	callq  10b0 <strtol@plt>
    1157:	48 8d 3d d0 0e 00 00 	lea    0xed0(%rip),%rdi        # 202e <_fini+0x8de>
    115e:	89 c6                	mov    %eax,%esi
    1160:	48 89 c3             	mov    %rax,%rbx
    1163:	41 89 c4             	mov    %eax,%r12d
    1166:	31 c0                	xor    %eax,%eax
    1168:	e8 23 ff ff ff       	callq  1090 <printf@plt>
    116d:	48 63 fb             	movslq %ebx,%rdi
    1170:	8d 1c 5b             	lea    (%rbx,%rbx,2),%ebx
    1173:	48 63 eb             	movslq %ebx,%rbp
    1176:	48 c1 e7 02          	shl    $0x2,%rdi
    117a:	e8 51 ff ff ff       	callq  10d0 <malloc@plt>
    117f:	48 c1 e5 02          	shl    $0x2,%rbp
    1183:	48 89 ef             	mov    %rbp,%rdi
    1186:	49 89 c5             	mov    %rax,%r13
    1189:	e8 42 ff ff ff       	callq  10d0 <malloc@plt>
    118e:	31 ff                	xor    %edi,%edi
    1190:	49 89 c6             	mov    %rax,%r14
    1193:	e8 08 ff ff ff       	callq  10a0 <srand@plt>
    1198:	85 db                	test   %ebx,%ebx
    119a:	7e 2f                	jle    11cb <main+0xab>
    119c:	4c 89 f3             	mov    %r14,%rbx
    119f:	4c 01 f5             	add    %r14,%rbp
    11a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11a8:	e8 53 ff ff ff       	callq  1100 <rand@plt>
    11ad:	66 0f ef c0          	pxor   %xmm0,%xmm0
    11b1:	48 83 c3 04          	add    $0x4,%rbx
    11b5:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    11b9:	f3 0f 59 05 9b 0e 00 	mulss  0xe9b(%rip),%xmm0        # 205c <_fini+0x90c>
    11c0:	00 
    11c1:	f3 0f 11 43 fc       	movss  %xmm0,-0x4(%rbx)
    11c6:	48 39 eb             	cmp    %rbp,%rbx
    11c9:	75 dd                	jne    11a8 <main+0x88>
    11cb:	e8 b0 fe ff ff       	callq  1080 <clock@plt>
    11d0:	bb 0a 00 00 00       	mov    $0xa,%ebx
    11d5:	48 89 c5             	mov    %rax,%rbp
    11d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    11df:	00 
    11e0:	44 89 e2             	mov    %r12d,%edx
    11e3:	4c 89 f6             	mov    %r14,%rsi
    11e6:	4c 89 ef             	mov    %r13,%rdi
    11e9:	e8 02 ff ff ff       	callq  10f0 <rbf_cpu@plt>
    11ee:	83 eb 01             	sub    $0x1,%ebx
    11f1:	75 ed                	jne    11e0 <main+0xc0>
    11f3:	e8 88 fe ff ff       	callq  1080 <clock@plt>
    11f8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    11fc:	4c 89 eb             	mov    %r13,%rbx
    11ff:	48 8d 3d 30 0e 00 00 	lea    0xe30(%rip),%rdi        # 2036 <_fini+0x8e6>
    1206:	48 29 e8             	sub    %rbp,%rax
    1209:	4d 8d a5 90 01 00 00 	lea    0x190(%r13),%r12
    1210:	48 8d 2d 2b 0e 00 00 	lea    0xe2b(%rip),%rbp        # 2042 <_fini+0x8f2>
    1217:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    121c:	b8 01 00 00 00       	mov    $0x1,%eax
    1221:	f2 0f 5e 05 47 0e 00 	divsd  0xe47(%rip),%xmm0        # 2070 <_fini+0x920>
    1228:	00 
    1229:	f2 0f 5e 05 47 0e 00 	divsd  0xe47(%rip),%xmm0        # 2078 <_fini+0x928>
    1230:	00 
    1231:	e8 5a fe ff ff       	callq  1090 <printf@plt>
    1236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123d:	00 00 00 
    1240:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1244:	48 89 ef             	mov    %rbp,%rdi
    1247:	b8 01 00 00 00       	mov    $0x1,%eax
    124c:	48 83 c3 04          	add    $0x4,%rbx
    1250:	f3 0f 5a 43 fc       	cvtss2sd -0x4(%rbx),%xmm0
    1255:	e8 36 fe ff ff       	callq  1090 <printf@plt>
    125a:	49 39 dc             	cmp    %rbx,%r12
    125d:	75 e1                	jne    1240 <main+0x120>
    125f:	bf 0a 00 00 00       	mov    $0xa,%edi
    1264:	e8 d7 fd ff ff       	callq  1040 <putchar@plt>
    1269:	4c 89 ef             	mov    %r13,%rdi
    126c:	e8 bf fd ff ff       	callq  1030 <free@plt>
    1271:	4c 89 f7             	mov    %r14,%rdi
    1274:	e8 b7 fd ff ff       	callq  1030 <free@plt>
    1279:	31 c0                	xor    %eax,%eax
    127b:	e9 be fe ff ff       	jmpq   113e <main+0x1e>

0000000000001280 <deregister_tm_clones>:
    1280:	48 8d 3d f1 2d 00 00 	lea    0x2df1(%rip),%rdi        # 4078 <__TMC_END__>
    1287:	48 8d 05 ea 2d 00 00 	lea    0x2dea(%rip),%rax        # 4078 <__TMC_END__>
    128e:	48 39 f8             	cmp    %rdi,%rax
    1291:	74 15                	je     12a8 <deregister_tm_clones+0x28>
    1293:	48 8b 05 2e 2d 00 00 	mov    0x2d2e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    129a:	48 85 c0             	test   %rax,%rax
    129d:	74 09                	je     12a8 <deregister_tm_clones+0x28>
    129f:	ff e0                	jmpq   *%rax
    12a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12a8:	c3                   	retq   
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012b0 <register_tm_clones>:
    12b0:	48 8d 3d c1 2d 00 00 	lea    0x2dc1(%rip),%rdi        # 4078 <__TMC_END__>
    12b7:	48 8d 35 ba 2d 00 00 	lea    0x2dba(%rip),%rsi        # 4078 <__TMC_END__>
    12be:	48 29 fe             	sub    %rdi,%rsi
    12c1:	48 89 f0             	mov    %rsi,%rax
    12c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    12c8:	48 c1 f8 03          	sar    $0x3,%rax
    12cc:	48 01 c6             	add    %rax,%rsi
    12cf:	48 d1 fe             	sar    %rsi
    12d2:	74 14                	je     12e8 <register_tm_clones+0x38>
    12d4:	48 8b 05 fd 2c 00 00 	mov    0x2cfd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    12db:	48 85 c0             	test   %rax,%rax
    12de:	74 08                	je     12e8 <register_tm_clones+0x38>
    12e0:	ff e0                	jmpq   *%rax
    12e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12e8:	c3                   	retq   
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012f0 <__do_global_dtors_aux>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	80 3d 7d 2d 00 00 00 	cmpb   $0x0,0x2d7d(%rip)        # 4078 <__TMC_END__>
    12fb:	75 2b                	jne    1328 <__do_global_dtors_aux+0x38>
    12fd:	55                   	push   %rbp
    12fe:	48 83 3d da 2c 00 00 	cmpq   $0x0,0x2cda(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1305:	00 
    1306:	48 89 e5             	mov    %rsp,%rbp
    1309:	74 0c                	je     1317 <__do_global_dtors_aux+0x27>
    130b:	48 8b 3d 5e 2d 00 00 	mov    0x2d5e(%rip),%rdi        # 4070 <__dso_handle>
    1312:	e8 f9 fd ff ff       	callq  1110 <__cxa_finalize@plt>
    1317:	e8 64 ff ff ff       	callq  1280 <deregister_tm_clones>
    131c:	c6 05 55 2d 00 00 01 	movb   $0x1,0x2d55(%rip)        # 4078 <__TMC_END__>
    1323:	5d                   	pop    %rbp
    1324:	c3                   	retq   
    1325:	0f 1f 00             	nopl   (%rax)
    1328:	c3                   	retq   
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001330 <frame_dummy>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	e9 77 ff ff ff       	jmpq   12b0 <register_tm_clones>
    1339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001340 <rbf_cpu>:
    1340:	85 d2                	test   %edx,%edx
    1342:	7e 7c                	jle    13c0 <rbf_cpu+0x80>
    1344:	48 63 d2             	movslq %edx,%rdx
    1347:	41 54                	push   %r12
    1349:	4c 8d 24 97          	lea    (%rdi,%rdx,4),%r12
    134d:	55                   	push   %rbp
    134e:	48 89 fd             	mov    %rdi,%rbp
    1351:	53                   	push   %rbx
    1352:	48 89 f3             	mov    %rsi,%rbx
    1355:	0f 1f 00             	nopl   (%rax)
    1358:	f3 0f 10 13          	movss  (%rbx),%xmm2
    135c:	f3 0f 10 43 04       	movss  0x4(%rbx),%xmm0
    1361:	66 0f ef db          	pxor   %xmm3,%xmm3
    1365:	f3 0f 10 4b 08       	movss  0x8(%rbx),%xmm1
    136a:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    136e:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    1372:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    1376:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    137a:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    137e:	0f 2e d8             	ucomiss %xmm0,%xmm3
    1381:	77 3e                	ja     13c1 <rbf_cpu+0x81>
    1383:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    1387:	f3 0f 10 0d b9 0c 00 	movss  0xcb9(%rip),%xmm1        # 2048 <_fini+0x8f8>
    138e:	00 
    138f:	48 83 c5 04          	add    $0x4,%rbp
    1393:	48 83 c3 0c          	add    $0xc,%rbx
    1397:	f3 0f 5c c8          	subss  %xmm0,%xmm1
    139b:	f3 0f 10 05 a9 0c 00 	movss  0xca9(%rip),%xmm0        # 204c <_fini+0x8fc>
    13a2:	00 
    13a3:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    13a7:	e8 c4 fc ff ff       	callq  1070 <expf@plt>
    13ac:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    13b1:	49 39 ec             	cmp    %rbp,%r12
    13b4:	75 a2                	jne    1358 <rbf_cpu+0x18>
    13b6:	5b                   	pop    %rbx
    13b7:	5d                   	pop    %rbp
    13b8:	41 5c                	pop    %r12
    13ba:	c3                   	retq   
    13bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    13c0:	c3                   	retq   
    13c1:	e8 fa fc ff ff       	callq  10c0 <sqrtf@plt>
    13c6:	eb bf                	jmp    1387 <rbf_cpu+0x47>
    13c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13cf:	00 

00000000000013d0 <rbf_cpu2>:
    13d0:	85 d2                	test   %edx,%edx
    13d2:	7e 7c                	jle    1450 <rbf_cpu2+0x80>
    13d4:	48 63 d2             	movslq %edx,%rdx
    13d7:	41 54                	push   %r12
    13d9:	4c 8d 24 97          	lea    (%rdi,%rdx,4),%r12
    13dd:	55                   	push   %rbp
    13de:	48 89 fd             	mov    %rdi,%rbp
    13e1:	53                   	push   %rbx
    13e2:	48 89 f3             	mov    %rsi,%rbx
    13e5:	0f 1f 00             	nopl   (%rax)
    13e8:	f3 0f 10 03          	movss  (%rbx),%xmm0
    13ec:	f3 0f 10 53 04       	movss  0x4(%rbx),%xmm2
    13f1:	66 0f ef db          	pxor   %xmm3,%xmm3
    13f5:	f3 0f 10 4b 08       	movss  0x8(%rbx),%xmm1
    13fa:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    13fe:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    1402:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    1406:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    140a:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    140e:	0f 2e d8             	ucomiss %xmm0,%xmm3
    1411:	77 3e                	ja     1451 <rbf_cpu2+0x81>
    1413:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    1417:	f3 0f 10 0d 29 0c 00 	movss  0xc29(%rip),%xmm1        # 2048 <_fini+0x8f8>
    141e:	00 
    141f:	48 83 c5 04          	add    $0x4,%rbp
    1423:	48 83 c3 0c          	add    $0xc,%rbx
    1427:	f3 0f 5c c8          	subss  %xmm0,%xmm1
    142b:	f3 0f 10 05 19 0c 00 	movss  0xc19(%rip),%xmm0        # 204c <_fini+0x8fc>
    1432:	00 
    1433:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    1437:	e8 34 fc ff ff       	callq  1070 <expf@plt>
    143c:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    1441:	49 39 ec             	cmp    %rbp,%r12
    1444:	75 a2                	jne    13e8 <rbf_cpu2+0x18>
    1446:	5b                   	pop    %rbx
    1447:	5d                   	pop    %rbp
    1448:	41 5c                	pop    %r12
    144a:	c3                   	retq   
    144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1450:	c3                   	retq   
    1451:	e8 6a fc ff ff       	callq  10c0 <sqrtf@plt>
    1456:	eb bf                	jmp    1417 <rbf_cpu2+0x47>
    1458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    145f:	00 

0000000000001460 <ljg_cpu>:
    1460:	41 55                	push   %r13
    1462:	41 54                	push   %r12
    1464:	55                   	push   %rbp
    1465:	53                   	push   %rbx
    1466:	48 83 ec 28          	sub    $0x28,%rsp
    146a:	f3 0f 11 44 24 14    	movss  %xmm0,0x14(%rsp)
    1470:	f3 0f 11 0c 24       	movss  %xmm1,(%rsp)
    1475:	f3 0f 11 54 24 18    	movss  %xmm2,0x18(%rsp)
    147b:	f3 0f 11 5c 24 1c    	movss  %xmm3,0x1c(%rsp)
    1481:	85 c9                	test   %ecx,%ecx
    1483:	0f 8e 3f 01 00 00    	jle    15c8 <ljg_cpu+0x168>
    1489:	48 63 c9             	movslq %ecx,%rcx
    148c:	49 89 fc             	mov    %rdi,%r12
    148f:	48 89 f5             	mov    %rsi,%rbp
    1492:	48 89 d3             	mov    %rdx,%rbx
    1495:	4c 8d 2c 8f          	lea    (%rdi,%rcx,4),%r13
    1499:	eb 20                	jmp    14bb <ljg_cpu+0x5b>
    149b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    14a0:	f3 41 0f 11 04 24    	movss  %xmm0,(%r12)
    14a6:	49 83 c4 04          	add    $0x4,%r12
    14aa:	48 83 c5 0c          	add    $0xc,%rbp
    14ae:	48 83 c3 0c          	add    $0xc,%rbx
    14b2:	4d 39 e5             	cmp    %r12,%r13
    14b5:	0f 84 0d 01 00 00    	je     15c8 <ljg_cpu+0x168>
    14bb:	f3 0f 10 55 00       	movss  0x0(%rbp),%xmm2
    14c0:	f3 0f 10 45 04       	movss  0x4(%rbp),%xmm0
    14c5:	f3 0f 5c 13          	subss  (%rbx),%xmm2
    14c9:	f3 0f 5c 43 04       	subss  0x4(%rbx),%xmm0
    14ce:	f3 0f 10 4d 08       	movss  0x8(%rbp),%xmm1
    14d3:	f3 0f 5c 4b 08       	subss  0x8(%rbx),%xmm1
    14d8:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    14dc:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    14e0:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    14e4:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    14e8:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    14ec:	66 0f ef c9          	pxor   %xmm1,%xmm1
    14f0:	0f 2e c8             	ucomiss %xmm0,%xmm1
    14f3:	0f 87 da 00 00 00    	ja     15d3 <ljg_cpu+0x173>
    14f9:	0f 28 d0             	movaps %xmm0,%xmm2
    14fc:	f3 0f 51 d2          	sqrtss %xmm2,%xmm2
    1500:	0f 2f e2             	comiss %xmm2,%xmm4
    1503:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1507:	76 97                	jbe    14a0 <ljg_cpu+0x40>
    1509:	f3 0f 10 2c 24       	movss  (%rsp),%xmm5
    150e:	f3 0f 10 0d 3a 0b 00 	movss  0xb3a(%rip),%xmm1        # 2050 <_fini+0x900>
    1515:	00 
    1516:	f3 0f 11 64 24 10    	movss  %xmm4,0x10(%rsp)
    151c:	f3 0f 11 54 24 0c    	movss  %xmm2,0xc(%rsp)
    1522:	f3 0f 5e ea          	divss  %xmm2,%xmm5
    1526:	0f 28 c5             	movaps %xmm5,%xmm0
    1529:	f3 0f 11 6c 24 04    	movss  %xmm5,0x4(%rsp)
    152f:	e8 ac fb ff ff       	callq  10e0 <powf@plt>
    1534:	f3 0f 10 6c 24 04    	movss  0x4(%rsp),%xmm5
    153a:	f3 0f 10 0d 12 0b 00 	movss  0xb12(%rip),%xmm1        # 2054 <_fini+0x904>
    1541:	00 
    1542:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
    1548:	0f 28 c5             	movaps %xmm5,%xmm0
    154b:	e8 90 fb ff ff       	callq  10e0 <powf@plt>
    1550:	f3 0f 10 2c 24       	movss  (%rsp),%xmm5
    1555:	f3 0f 10 54 24 0c    	movss  0xc(%rsp),%xmm2
    155b:	f3 0f 5c 54 24 1c    	subss  0x1c(%rsp),%xmm2
    1561:	f3 0f 11 44 24 04    	movss  %xmm0,0x4(%rsp)
    1567:	0f 28 cd             	movaps %xmm5,%xmm1
    156a:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    156e:	0f 28 c2             	movaps %xmm2,%xmm0
    1571:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    1575:	0f 57 05 e4 0a 00 00 	xorps  0xae4(%rip),%xmm0        # 2060 <_fini+0x910>
    157c:	f3 0f 58 c9          	addss  %xmm1,%xmm1
    1580:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    1584:	e8 e7 fa ff ff       	callq  1070 <expf@plt>
    1589:	f3 0f 10 5c 24 08    	movss  0x8(%rsp),%xmm3
    158f:	f3 0f 5c 5c 24 04    	subss  0x4(%rsp),%xmm3
    1595:	0f 28 d0             	movaps %xmm0,%xmm2
    1598:	f3 0f 10 4c 24 18    	movss  0x18(%rsp),%xmm1
    159e:	f3 0f 10 64 24 10    	movss  0x10(%rsp),%xmm4
    15a4:	f3 0f 10 05 ac 0a 00 	movss  0xaac(%rip),%xmm0        # 2058 <_fini+0x908>
    15ab:	00 
    15ac:	f3 0f 59 44 24 14    	mulss  0x14(%rsp),%xmm0
    15b2:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    15b6:	f3 0f 59 c3          	mulss  %xmm3,%xmm0
    15ba:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    15be:	e9 dd fe ff ff       	jmpq   14a0 <ljg_cpu+0x40>
    15c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    15c8:	48 83 c4 28          	add    $0x28,%rsp
    15cc:	5b                   	pop    %rbx
    15cd:	5d                   	pop    %rbp
    15ce:	41 5c                	pop    %r12
    15d0:	41 5d                	pop    %r13
    15d2:	c3                   	retq   
    15d3:	f3 0f 11 64 24 04    	movss  %xmm4,0x4(%rsp)
    15d9:	e8 e2 fa ff ff       	callq  10c0 <sqrtf@plt>
    15de:	f3 0f 10 64 24 04    	movss  0x4(%rsp),%xmm4
    15e4:	0f 28 d0             	movaps %xmm0,%xmm2
    15e7:	e9 14 ff ff ff       	jmpq   1500 <ljg_cpu+0xa0>
    15ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000015f0 <dist3>:
    15f0:	f3 0f 10 07          	movss  (%rdi),%xmm0
    15f4:	f3 0f 10 57 04       	movss  0x4(%rdi),%xmm2
    15f9:	f3 0f 5c 06          	subss  (%rsi),%xmm0
    15fd:	f3 0f 5c 56 04       	subss  0x4(%rsi),%xmm2
    1602:	f3 0f 10 4f 08       	movss  0x8(%rdi),%xmm1
    1607:	f3 0f 5c 4e 08       	subss  0x8(%rsi),%xmm1
    160c:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    1610:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    1614:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    1618:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    161c:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1620:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1624:	0f 2e c8             	ucomiss %xmm0,%xmm1
    1627:	77 05                	ja     162e <dist3+0x3e>
    1629:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    162d:	c3                   	retq   
    162e:	e9 8d fa ff ff       	jmpq   10c0 <sqrtf@plt>
    1633:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    163a:	00 00 00 00 
    163e:	66 90                	xchg   %ax,%ax

0000000000001640 <ljg_cpu2>:
    1640:	41 56                	push   %r14
    1642:	41 55                	push   %r13
    1644:	41 54                	push   %r12
    1646:	55                   	push   %rbp
    1647:	53                   	push   %rbx
    1648:	48 83 ec 20          	sub    $0x20,%rsp
    164c:	f3 0f 11 44 24 10    	movss  %xmm0,0x10(%rsp)
    1652:	f3 0f 11 4c 24 14    	movss  %xmm1,0x14(%rsp)
    1658:	f3 0f 11 54 24 18    	movss  %xmm2,0x18(%rsp)
    165e:	f3 0f 11 5c 24 1c    	movss  %xmm3,0x1c(%rsp)
    1664:	85 c9                	test   %ecx,%ecx
    1666:	0f 8e d4 00 00 00    	jle    1740 <ljg_cpu2+0x100>
    166c:	48 63 c9             	movslq %ecx,%rcx
    166f:	48 89 fb             	mov    %rdi,%rbx
    1672:	66 41 0f 7e e6       	movd   %xmm4,%r14d
    1677:	49 89 f4             	mov    %rsi,%r12
    167a:	48 89 d5             	mov    %rdx,%rbp
    167d:	4c 8d 2c 8f          	lea    (%rdi,%rcx,4),%r13
    1681:	eb 22                	jmp    16a5 <ljg_cpu2+0x65>
    1683:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1688:	66 0f ef c0          	pxor   %xmm0,%xmm0
    168c:	f3 0f 11 03          	movss  %xmm0,(%rbx)
    1690:	48 83 c3 04          	add    $0x4,%rbx
    1694:	49 83 c4 0c          	add    $0xc,%r12
    1698:	48 83 c5 0c          	add    $0xc,%rbp
    169c:	4c 39 eb             	cmp    %r13,%rbx
    169f:	0f 84 9b 00 00 00    	je     1740 <ljg_cpu2+0x100>
    16a5:	48 89 ee             	mov    %rbp,%rsi
    16a8:	4c 89 e7             	mov    %r12,%rdi
    16ab:	e8 a0 f9 ff ff       	callq  1050 <dist3@plt>
    16b0:	66 41 0f 6e f6       	movd   %r14d,%xmm6
    16b5:	0f 2f f0             	comiss %xmm0,%xmm6
    16b8:	76 ce                	jbe    1688 <ljg_cpu2+0x48>
    16ba:	f3 0f 10 6c 24 14    	movss  0x14(%rsp),%xmm5
    16c0:	0f 28 d5             	movaps %xmm5,%xmm2
    16c3:	f3 0f 5e d0          	divss  %xmm0,%xmm2
    16c7:	f3 0f 5c 44 24 1c    	subss  0x1c(%rsp),%xmm0
    16cd:	0f 28 ca             	movaps %xmm2,%xmm1
    16d0:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    16d4:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    16d8:	0f 28 d0             	movaps %xmm0,%xmm2
    16db:	0f 57 15 7e 09 00 00 	xorps  0x97e(%rip),%xmm2        # 2060 <_fini+0x910>
    16e2:	f3 0f 59 d0          	mulss  %xmm0,%xmm2
    16e6:	0f 28 c5             	movaps %xmm5,%xmm0
    16e9:	f3 0f 58 c5          	addss  %xmm5,%xmm0
    16ed:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    16f1:	f3 0f 59 c5          	mulss  %xmm5,%xmm0
    16f5:	f3 0f 11 4c 24 0c    	movss  %xmm1,0xc(%rsp)
    16fb:	f3 0f 5e d0          	divss  %xmm0,%xmm2
    16ff:	0f 28 c2             	movaps %xmm2,%xmm0
    1702:	e8 69 f9 ff ff       	callq  1070 <expf@plt>
    1707:	f3 0f 10 4c 24 0c    	movss  0xc(%rsp),%xmm1
    170d:	0f 28 d0             	movaps %xmm0,%xmm2
    1710:	f3 0f 59 54 24 18    	mulss  0x18(%rsp),%xmm2
    1716:	0f 28 c1             	movaps %xmm1,%xmm0
    1719:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    171d:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    1721:	f3 0f 10 0d 2f 09 00 	movss  0x92f(%rip),%xmm1        # 2058 <_fini+0x908>
    1728:	00 
    1729:	f3 0f 59 4c 24 10    	mulss  0x10(%rsp),%xmm1
    172f:	f3 0f 59 c1          	mulss  %xmm1,%xmm0
    1733:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    1737:	e9 50 ff ff ff       	jmpq   168c <ljg_cpu2+0x4c>
    173c:	0f 1f 40 00          	nopl   0x0(%rax)
    1740:	48 83 c4 20          	add    $0x20,%rsp
    1744:	5b                   	pop    %rbx
    1745:	5d                   	pop    %rbp
    1746:	41 5c                	pop    %r12
    1748:	41 5d                	pop    %r13
    174a:	41 5e                	pop    %r14
    174c:	c3                   	retq   

Disassembly of section .fini:

0000000000001750 <_fini>:
    1750:	f3 0f 1e fa          	endbr64 
    1754:	48 83 ec 08          	sub    $0x8,%rsp
    1758:	48 83 c4 08          	add    $0x8,%rsp
    175c:	c3                   	retq   
