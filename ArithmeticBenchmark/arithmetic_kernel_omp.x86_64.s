
arithmetic_kernel_omp.so:     file format elf64-x86-64


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

0000000000001050 <puts@plt>:
    1050:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4010 <puts@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001060 <expf@plt>:
    1060:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4018 <expf@GLIBC_2.27>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001070 <clock@plt>:
    1070:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4020 <clock@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001080 <omp_get_thread_num@plt>:
    1080:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 4028 <omp_get_thread_num@OMP_1.0>
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

00000000000010b0 <omp_get_num_threads@plt>:
    10b0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 4040 <omp_get_num_threads@OMP_1.0>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010c0 <strtol@plt>:
    10c0:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 4048 <strtol@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010d0 <sqrtf@plt>:
    10d0:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 4050 <sqrtf@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010e0 <malloc@plt>:
    10e0:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 4058 <malloc@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010f0 <powf@plt>:
    10f0:	ff 25 6a 2f 00 00    	jmpq   *0x2f6a(%rip)        # 4060 <powf@GLIBC_2.27>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001100 <rbf_cpu@plt>:
    1100:	ff 25 62 2f 00 00    	jmpq   *0x2f62(%rip)        # 4068 <rbf_cpu@@Base+0x2a28>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001110 <GOMP_parallel@plt>:
    1110:	ff 25 5a 2f 00 00    	jmpq   *0x2f5a(%rip)        # 4070 <GOMP_parallel@GOMP_4.0>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001120 <rand@plt>:
    1120:	ff 25 52 2f 00 00    	jmpq   *0x2f52(%rip)        # 4078 <rand@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001130 <__cxa_finalize@plt>:
    1130:	ff 25 aa 2e 00 00    	jmpq   *0x2eaa(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1136:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001140 <main>:
    1140:	41 56                	push   %r14
    1142:	41 55                	push   %r13
    1144:	41 54                	push   %r12
    1146:	55                   	push   %rbp
    1147:	53                   	push   %rbx
    1148:	83 ff 02             	cmp    $0x2,%edi
    114b:	74 1a                	je     1167 <main+0x27>
    114d:	48 8d 3d ac 0e 00 00 	lea    0xeac(%rip),%rdi        # 2000 <_fini+0x94c>
    1154:	e8 f7 fe ff ff       	callq  1050 <puts@plt>
    1159:	b8 01 00 00 00       	mov    $0x1,%eax
    115e:	5b                   	pop    %rbx
    115f:	5d                   	pop    %rbp
    1160:	41 5c                	pop    %r12
    1162:	41 5d                	pop    %r13
    1164:	41 5e                	pop    %r14
    1166:	c3                   	retq   
    1167:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    116b:	ba 0a 00 00 00       	mov    $0xa,%edx
    1170:	31 f6                	xor    %esi,%esi
    1172:	e8 49 ff ff ff       	callq  10c0 <strtol@plt>
    1177:	48 8d 3d b0 0e 00 00 	lea    0xeb0(%rip),%rdi        # 202e <_fini+0x97a>
    117e:	89 c6                	mov    %eax,%esi
    1180:	48 89 c3             	mov    %rax,%rbx
    1183:	41 89 c4             	mov    %eax,%r12d
    1186:	31 c0                	xor    %eax,%eax
    1188:	e8 03 ff ff ff       	callq  1090 <printf@plt>
    118d:	48 63 fb             	movslq %ebx,%rdi
    1190:	8d 1c 5b             	lea    (%rbx,%rbx,2),%ebx
    1193:	48 63 eb             	movslq %ebx,%rbp
    1196:	48 c1 e7 02          	shl    $0x2,%rdi
    119a:	e8 41 ff ff ff       	callq  10e0 <malloc@plt>
    119f:	48 c1 e5 02          	shl    $0x2,%rbp
    11a3:	48 89 ef             	mov    %rbp,%rdi
    11a6:	49 89 c5             	mov    %rax,%r13
    11a9:	e8 32 ff ff ff       	callq  10e0 <malloc@plt>
    11ae:	31 ff                	xor    %edi,%edi
    11b0:	49 89 c6             	mov    %rax,%r14
    11b3:	e8 e8 fe ff ff       	callq  10a0 <srand@plt>
    11b8:	85 db                	test   %ebx,%ebx
    11ba:	7e 2f                	jle    11eb <main+0xab>
    11bc:	4c 89 f3             	mov    %r14,%rbx
    11bf:	4c 01 f5             	add    %r14,%rbp
    11c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11c8:	e8 53 ff ff ff       	callq  1120 <rand@plt>
    11cd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    11d1:	48 83 c3 04          	add    $0x4,%rbx
    11d5:	f3 0f 2a c0          	cvtsi2ss %eax,%xmm0
    11d9:	f3 0f 59 05 7b 0e 00 	mulss  0xe7b(%rip),%xmm0        # 205c <_fini+0x9a8>
    11e0:	00 
    11e1:	f3 0f 11 43 fc       	movss  %xmm0,-0x4(%rbx)
    11e6:	48 39 eb             	cmp    %rbp,%rbx
    11e9:	75 dd                	jne    11c8 <main+0x88>
    11eb:	e8 80 fe ff ff       	callq  1070 <clock@plt>
    11f0:	bb 0a 00 00 00       	mov    $0xa,%ebx
    11f5:	48 89 c5             	mov    %rax,%rbp
    11f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    11ff:	00 
    1200:	44 89 e2             	mov    %r12d,%edx
    1203:	4c 89 f6             	mov    %r14,%rsi
    1206:	4c 89 ef             	mov    %r13,%rdi
    1209:	e8 f2 fe ff ff       	callq  1100 <rbf_cpu@plt>
    120e:	83 eb 01             	sub    $0x1,%ebx
    1211:	75 ed                	jne    1200 <main+0xc0>
    1213:	e8 58 fe ff ff       	callq  1070 <clock@plt>
    1218:	66 0f ef c0          	pxor   %xmm0,%xmm0
    121c:	4c 89 eb             	mov    %r13,%rbx
    121f:	48 8d 3d 10 0e 00 00 	lea    0xe10(%rip),%rdi        # 2036 <_fini+0x982>
    1226:	48 29 e8             	sub    %rbp,%rax
    1229:	4d 8d a5 90 01 00 00 	lea    0x190(%r13),%r12
    1230:	48 8d 2d 0b 0e 00 00 	lea    0xe0b(%rip),%rbp        # 2042 <_fini+0x98e>
    1237:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    123c:	b8 01 00 00 00       	mov    $0x1,%eax
    1241:	f2 0f 5e 05 27 0e 00 	divsd  0xe27(%rip),%xmm0        # 2070 <_fini+0x9bc>
    1248:	00 
    1249:	f2 0f 5e 05 27 0e 00 	divsd  0xe27(%rip),%xmm0        # 2078 <_fini+0x9c4>
    1250:	00 
    1251:	e8 3a fe ff ff       	callq  1090 <printf@plt>
    1256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    125d:	00 00 00 
    1260:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1264:	48 89 ef             	mov    %rbp,%rdi
    1267:	b8 01 00 00 00       	mov    $0x1,%eax
    126c:	48 83 c3 04          	add    $0x4,%rbx
    1270:	f3 0f 5a 43 fc       	cvtss2sd -0x4(%rbx),%xmm0
    1275:	e8 16 fe ff ff       	callq  1090 <printf@plt>
    127a:	49 39 dc             	cmp    %rbx,%r12
    127d:	75 e1                	jne    1260 <main+0x120>
    127f:	bf 0a 00 00 00       	mov    $0xa,%edi
    1284:	e8 b7 fd ff ff       	callq  1040 <putchar@plt>
    1289:	4c 89 ef             	mov    %r13,%rdi
    128c:	e8 9f fd ff ff       	callq  1030 <free@plt>
    1291:	4c 89 f7             	mov    %r14,%rdi
    1294:	e8 97 fd ff ff       	callq  1030 <free@plt>
    1299:	31 c0                	xor    %eax,%eax
    129b:	e9 be fe ff ff       	jmpq   115e <main+0x1e>

00000000000012a0 <deregister_tm_clones>:
    12a0:	48 8d 3d e1 2d 00 00 	lea    0x2de1(%rip),%rdi        # 4088 <__TMC_END__>
    12a7:	48 8d 05 da 2d 00 00 	lea    0x2dda(%rip),%rax        # 4088 <__TMC_END__>
    12ae:	48 39 f8             	cmp    %rdi,%rax
    12b1:	74 15                	je     12c8 <deregister_tm_clones+0x28>
    12b3:	48 8b 05 0e 2d 00 00 	mov    0x2d0e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    12ba:	48 85 c0             	test   %rax,%rax
    12bd:	74 09                	je     12c8 <deregister_tm_clones+0x28>
    12bf:	ff e0                	jmpq   *%rax
    12c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12c8:	c3                   	retq   
    12c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012d0 <register_tm_clones>:
    12d0:	48 8d 3d b1 2d 00 00 	lea    0x2db1(%rip),%rdi        # 4088 <__TMC_END__>
    12d7:	48 8d 35 aa 2d 00 00 	lea    0x2daa(%rip),%rsi        # 4088 <__TMC_END__>
    12de:	48 29 fe             	sub    %rdi,%rsi
    12e1:	48 89 f0             	mov    %rsi,%rax
    12e4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    12e8:	48 c1 f8 03          	sar    $0x3,%rax
    12ec:	48 01 c6             	add    %rax,%rsi
    12ef:	48 d1 fe             	sar    %rsi
    12f2:	74 14                	je     1308 <register_tm_clones+0x38>
    12f4:	48 8b 05 dd 2c 00 00 	mov    0x2cdd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    12fb:	48 85 c0             	test   %rax,%rax
    12fe:	74 08                	je     1308 <register_tm_clones+0x38>
    1300:	ff e0                	jmpq   *%rax
    1302:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1308:	c3                   	retq   
    1309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001310 <__do_global_dtors_aux>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	80 3d 6d 2d 00 00 00 	cmpb   $0x0,0x2d6d(%rip)        # 4088 <__TMC_END__>
    131b:	75 2b                	jne    1348 <__do_global_dtors_aux+0x38>
    131d:	55                   	push   %rbp
    131e:	48 83 3d ba 2c 00 00 	cmpq   $0x0,0x2cba(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1325:	00 
    1326:	48 89 e5             	mov    %rsp,%rbp
    1329:	74 0c                	je     1337 <__do_global_dtors_aux+0x27>
    132b:	48 8b 3d 4e 2d 00 00 	mov    0x2d4e(%rip),%rdi        # 4080 <__dso_handle>
    1332:	e8 f9 fd ff ff       	callq  1130 <__cxa_finalize@plt>
    1337:	e8 64 ff ff ff       	callq  12a0 <deregister_tm_clones>
    133c:	c6 05 45 2d 00 00 01 	movb   $0x1,0x2d45(%rip)        # 4088 <__TMC_END__>
    1343:	5d                   	pop    %rbp
    1344:	c3                   	retq   
    1345:	0f 1f 00             	nopl   (%rax)
    1348:	c3                   	retq   
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001350 <frame_dummy>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	e9 77 ff ff ff       	jmpq   12d0 <register_tm_clones>
    1359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001360 <rbf_cpu._omp_fn.0>:
    1360:	41 54                	push   %r12
    1362:	55                   	push   %rbp
    1363:	53                   	push   %rbx
    1364:	48 89 fb             	mov    %rdi,%rbx
    1367:	e8 44 fd ff ff       	callq  10b0 <omp_get_num_threads@plt>
    136c:	89 c5                	mov    %eax,%ebp
    136e:	e8 0d fd ff ff       	callq  1080 <omp_get_thread_num@plt>
    1373:	89 c1                	mov    %eax,%ecx
    1375:	8b 43 10             	mov    0x10(%rbx),%eax
    1378:	99                   	cltd   
    1379:	f7 fd                	idiv   %ebp
    137b:	39 d1                	cmp    %edx,%ecx
    137d:	0f 8c 95 00 00 00    	jl     1418 <rbf_cpu._omp_fn.0+0xb8>
    1383:	0f af c8             	imul   %eax,%ecx
    1386:	01 ca                	add    %ecx,%edx
    1388:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
    138b:	39 ca                	cmp    %ecx,%edx
    138d:	7d 7f                	jge    140e <rbf_cpu._omp_fn.0+0xae>
    138f:	48 8b 33             	mov    (%rbx),%rsi
    1392:	8d 0c 52             	lea    (%rdx,%rdx,2),%ecx
    1395:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    1399:	48 63 d2             	movslq %edx,%rdx
    139c:	89 c0                	mov    %eax,%eax
    139e:	48 63 c9             	movslq %ecx,%rcx
    13a1:	48 01 d0             	add    %rdx,%rax
    13a4:	48 8d 1c 8f          	lea    (%rdi,%rcx,4),%rbx
    13a8:	48 8d 2c 96          	lea    (%rsi,%rdx,4),%rbp
    13ac:	4c 8d 24 86          	lea    (%rsi,%rax,4),%r12
    13b0:	f3 0f 10 03          	movss  (%rbx),%xmm0
    13b4:	f3 0f 10 53 04       	movss  0x4(%rbx),%xmm2
    13b9:	66 0f ef db          	pxor   %xmm3,%xmm3
    13bd:	f3 0f 10 4b 08       	movss  0x8(%rbx),%xmm1
    13c2:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    13c6:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    13ca:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    13ce:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    13d2:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    13d6:	0f 2e d8             	ucomiss %xmm0,%xmm3
    13d9:	77 47                	ja     1422 <rbf_cpu._omp_fn.0+0xc2>
    13db:	f3 0f 51 c0          	sqrtss %xmm0,%xmm0
    13df:	f3 0f 10 0d 61 0c 00 	movss  0xc61(%rip),%xmm1        # 2048 <_fini+0x994>
    13e6:	00 
    13e7:	48 83 c5 04          	add    $0x4,%rbp
    13eb:	48 83 c3 0c          	add    $0xc,%rbx
    13ef:	f3 0f 5c c8          	subss  %xmm0,%xmm1
    13f3:	f3 0f 10 05 51 0c 00 	movss  0xc51(%rip),%xmm0        # 204c <_fini+0x998>
    13fa:	00 
    13fb:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    13ff:	e8 5c fc ff ff       	callq  1060 <expf@plt>
    1404:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    1409:	49 39 ec             	cmp    %rbp,%r12
    140c:	75 a2                	jne    13b0 <rbf_cpu._omp_fn.0+0x50>
    140e:	5b                   	pop    %rbx
    140f:	5d                   	pop    %rbp
    1410:	41 5c                	pop    %r12
    1412:	c3                   	retq   
    1413:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1418:	83 c0 01             	add    $0x1,%eax
    141b:	31 d2                	xor    %edx,%edx
    141d:	e9 61 ff ff ff       	jmpq   1383 <rbf_cpu._omp_fn.0+0x23>
    1422:	e8 a9 fc ff ff       	callq  10d0 <sqrtf@plt>
    1427:	eb b6                	jmp    13df <rbf_cpu._omp_fn.0+0x7f>
    1429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001430 <ljg_cpu._omp_fn.0>:
    1430:	41 55                	push   %r13
    1432:	41 54                	push   %r12
    1434:	49 89 fc             	mov    %rdi,%r12
    1437:	55                   	push   %rbp
    1438:	53                   	push   %rbx
    1439:	48 83 ec 28          	sub    $0x28,%rsp
    143d:	e8 6e fc ff ff       	callq  10b0 <omp_get_num_threads@plt>
    1442:	89 c3                	mov    %eax,%ebx
    1444:	e8 37 fc ff ff       	callq  1080 <omp_get_thread_num@plt>
    1449:	89 c1                	mov    %eax,%ecx
    144b:	41 8b 44 24 18       	mov    0x18(%r12),%eax
    1450:	99                   	cltd   
    1451:	f7 fb                	idiv   %ebx
    1453:	39 d1                	cmp    %edx,%ecx
    1455:	0f 8c b5 01 00 00    	jl     1610 <ljg_cpu._omp_fn.0+0x1e0>
    145b:	0f af c8             	imul   %eax,%ecx
    145e:	01 ca                	add    %ecx,%edx
    1460:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
    1463:	39 ca                	cmp    %ecx,%edx
    1465:	0f 8d 95 01 00 00    	jge    1600 <ljg_cpu._omp_fn.0+0x1d0>
    146b:	f3 41 0f 10 74 24 28 	movss  0x28(%r12),%xmm6
    1472:	8d 1c 52             	lea    (%rdx,%rdx,2),%ebx
    1475:	49 8b 0c 24          	mov    (%r12),%rcx
    1479:	89 c0                	mov    %eax,%eax
    147b:	f3 41 0f 10 7c 24 24 	movss  0x24(%r12),%xmm7
    1482:	49 8b 6c 24 08       	mov    0x8(%r12),%rbp
    1487:	48 63 d2             	movslq %edx,%rdx
    148a:	48 63 db             	movslq %ebx,%rbx
    148d:	f3 0f 11 74 24 14    	movss  %xmm6,0x14(%rsp)
    1493:	48 c1 e3 02          	shl    $0x2,%rbx
    1497:	f3 41 0f 10 74 24 20 	movss  0x20(%r12),%xmm6
    149e:	48 01 d0             	add    %rdx,%rax
    14a1:	f3 0f 11 7c 24 18    	movss  %xmm7,0x18(%rsp)
    14a7:	f3 41 0f 10 7c 24 1c 	movss  0x1c(%r12),%xmm7
    14ae:	48 01 dd             	add    %rbx,%rbp
    14b1:	4c 8d 2c 81          	lea    (%rcx,%rax,4),%r13
    14b5:	f3 41 0f 10 5c 24 2c 	movss  0x2c(%r12),%xmm3
    14bc:	49 03 5c 24 10       	add    0x10(%r12),%rbx
    14c1:	f3 0f 11 34 24       	movss  %xmm6,(%rsp)
    14c6:	4c 8d 24 91          	lea    (%rcx,%rdx,4),%r12
    14ca:	f3 0f 11 7c 24 1c    	movss  %xmm7,0x1c(%rsp)
    14d0:	eb 25                	jmp    14f7 <ljg_cpu._omp_fn.0+0xc7>
    14d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    14d8:	66 0f ef c0          	pxor   %xmm0,%xmm0
    14dc:	f3 41 0f 11 04 24    	movss  %xmm0,(%r12)
    14e2:	49 83 c4 04          	add    $0x4,%r12
    14e6:	48 83 c5 0c          	add    $0xc,%rbp
    14ea:	48 83 c3 0c          	add    $0xc,%rbx
    14ee:	4d 39 e5             	cmp    %r12,%r13
    14f1:	0f 84 09 01 00 00    	je     1600 <ljg_cpu._omp_fn.0+0x1d0>
    14f7:	f3 0f 10 45 00       	movss  0x0(%rbp),%xmm0
    14fc:	f3 0f 10 55 04       	movss  0x4(%rbp),%xmm2
    1501:	f3 0f 5c 03          	subss  (%rbx),%xmm0
    1505:	f3 0f 5c 53 04       	subss  0x4(%rbx),%xmm2
    150a:	f3 0f 10 4d 08       	movss  0x8(%rbp),%xmm1
    150f:	f3 0f 5c 4b 08       	subss  0x8(%rbx),%xmm1
    1514:	f3 0f 59 c0          	mulss  %xmm0,%xmm0
    1518:	f3 0f 59 d2          	mulss  %xmm2,%xmm2
    151c:	f3 0f 59 c9          	mulss  %xmm1,%xmm1
    1520:	f3 0f 58 c2          	addss  %xmm2,%xmm0
    1524:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    1528:	66 0f ef c9          	pxor   %xmm1,%xmm1
    152c:	0f 2e c8             	ucomiss %xmm0,%xmm1
    152f:	0f 87 e5 00 00 00    	ja     161a <ljg_cpu._omp_fn.0+0x1ea>
    1535:	0f 28 d0             	movaps %xmm0,%xmm2
    1538:	f3 0f 51 d2          	sqrtss %xmm2,%xmm2
    153c:	0f 2f da             	comiss %xmm2,%xmm3
    153f:	76 97                	jbe    14d8 <ljg_cpu._omp_fn.0+0xa8>
    1541:	f3 0f 10 2c 24       	movss  (%rsp),%xmm5
    1546:	f3 0f 10 0d 02 0b 00 	movss  0xb02(%rip),%xmm1        # 2050 <_fini+0x99c>
    154d:	00 
    154e:	f3 0f 11 5c 24 10    	movss  %xmm3,0x10(%rsp)
    1554:	f3 0f 11 54 24 0c    	movss  %xmm2,0xc(%rsp)
    155a:	f3 0f 5e ea          	divss  %xmm2,%xmm5
    155e:	0f 28 c5             	movaps %xmm5,%xmm0
    1561:	f3 0f 11 6c 24 04    	movss  %xmm5,0x4(%rsp)
    1567:	e8 84 fb ff ff       	callq  10f0 <powf@plt>
    156c:	f3 0f 10 6c 24 04    	movss  0x4(%rsp),%xmm5
    1572:	f3 0f 10 0d da 0a 00 	movss  0xada(%rip),%xmm1        # 2054 <_fini+0x9a0>
    1579:	00 
    157a:	f3 0f 11 44 24 08    	movss  %xmm0,0x8(%rsp)
    1580:	0f 28 c5             	movaps %xmm5,%xmm0
    1583:	e8 68 fb ff ff       	callq  10f0 <powf@plt>
    1588:	f3 0f 10 2c 24       	movss  (%rsp),%xmm5
    158d:	f3 0f 10 54 24 0c    	movss  0xc(%rsp),%xmm2
    1593:	f3 0f 5c 54 24 14    	subss  0x14(%rsp),%xmm2
    1599:	f3 0f 11 44 24 04    	movss  %xmm0,0x4(%rsp)
    159f:	0f 28 cd             	movaps %xmm5,%xmm1
    15a2:	f3 0f 59 cd          	mulss  %xmm5,%xmm1
    15a6:	0f 28 c2             	movaps %xmm2,%xmm0
    15a9:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    15ad:	0f 57 05 ac 0a 00 00 	xorps  0xaac(%rip),%xmm0        # 2060 <_fini+0x9ac>
    15b4:	f3 0f 58 c9          	addss  %xmm1,%xmm1
    15b8:	f3 0f 5e c1          	divss  %xmm1,%xmm0
    15bc:	e8 9f fa ff ff       	callq  1060 <expf@plt>
    15c1:	f3 0f 10 64 24 08    	movss  0x8(%rsp),%xmm4
    15c7:	f3 0f 5c 64 24 04    	subss  0x4(%rsp),%xmm4
    15cd:	0f 28 d0             	movaps %xmm0,%xmm2
    15d0:	f3 0f 10 4c 24 18    	movss  0x18(%rsp),%xmm1
    15d6:	f3 0f 10 5c 24 10    	movss  0x10(%rsp),%xmm3
    15dc:	f3 0f 10 05 74 0a 00 	movss  0xa74(%rip),%xmm0        # 2058 <_fini+0x9a4>
    15e3:	00 
    15e4:	f3 0f 59 44 24 1c    	mulss  0x1c(%rsp),%xmm0
    15ea:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    15ee:	f3 0f 59 c4          	mulss  %xmm4,%xmm0
    15f2:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    15f6:	e9 e1 fe ff ff       	jmpq   14dc <ljg_cpu._omp_fn.0+0xac>
    15fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1600:	48 83 c4 28          	add    $0x28,%rsp
    1604:	5b                   	pop    %rbx
    1605:	5d                   	pop    %rbp
    1606:	41 5c                	pop    %r12
    1608:	41 5d                	pop    %r13
    160a:	c3                   	retq   
    160b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1610:	83 c0 01             	add    $0x1,%eax
    1613:	31 d2                	xor    %edx,%edx
    1615:	e9 41 fe ff ff       	jmpq   145b <ljg_cpu._omp_fn.0+0x2b>
    161a:	f3 0f 11 5c 24 04    	movss  %xmm3,0x4(%rsp)
    1620:	e8 ab fa ff ff       	callq  10d0 <sqrtf@plt>
    1625:	f3 0f 10 5c 24 04    	movss  0x4(%rsp),%xmm3
    162b:	0f 28 d0             	movaps %xmm0,%xmm2
    162e:	e9 09 ff ff ff       	jmpq   153c <ljg_cpu._omp_fn.0+0x10c>
    1633:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    163a:	00 00 00 00 
    163e:	66 90                	xchg   %ax,%ax

0000000000001640 <rbf_cpu>:
    1640:	48 83 ec 28          	sub    $0x28,%rsp
    1644:	31 c9                	xor    %ecx,%ecx
    1646:	89 54 24 10          	mov    %edx,0x10(%rsp)
    164a:	31 d2                	xor    %edx,%edx
    164c:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
    1651:	48 89 e6             	mov    %rsp,%rsi
    1654:	48 89 3c 24          	mov    %rdi,(%rsp)
    1658:	48 8d 3d 01 fd ff ff 	lea    -0x2ff(%rip),%rdi        # 1360 <rbf_cpu._omp_fn.0>
    165f:	e8 ac fa ff ff       	callq  1110 <GOMP_parallel@plt>
    1664:	48 83 c4 28          	add    $0x28,%rsp
    1668:	c3                   	retq   
    1669:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001670 <ljg_cpu>:
    1670:	48 83 ec 38          	sub    $0x38,%rsp
    1674:	0f 14 d3             	unpcklps %xmm3,%xmm2
    1677:	0f 14 c1             	unpcklps %xmm1,%xmm0
    167a:	89 4c 24 18          	mov    %ecx,0x18(%rsp)
    167e:	0f 16 c2             	movlhps %xmm2,%xmm0
    1681:	31 c9                	xor    %ecx,%ecx
    1683:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    1688:	31 d2                	xor    %edx,%edx
    168a:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
    168f:	48 89 e6             	mov    %rsp,%rsi
    1692:	48 89 3c 24          	mov    %rdi,(%rsp)
    1696:	48 8d 3d 93 fd ff ff 	lea    -0x26d(%rip),%rdi        # 1430 <ljg_cpu._omp_fn.0>
    169d:	f3 0f 11 64 24 2c    	movss  %xmm4,0x2c(%rsp)
    16a3:	0f 11 44 24 1c       	movups %xmm0,0x1c(%rsp)
    16a8:	e8 63 fa ff ff       	callq  1110 <GOMP_parallel@plt>
    16ad:	48 83 c4 38          	add    $0x38,%rsp
    16b1:	c3                   	retq   

Disassembly of section .fini:

00000000000016b4 <_fini>:
    16b4:	f3 0f 1e fa          	endbr64 
    16b8:	48 83 ec 08          	sub    $0x8,%rsp
    16bc:	48 83 c4 08          	add    $0x8,%rsp
    16c0:	c3                   	retq   
