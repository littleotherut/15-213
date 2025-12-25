
bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400678 <_init>:
  400678:	48 83 ec 08          	sub    $0x8,%rsp
  40067c:	48 8b 05 75 29 20 00 	mov    0x202975(%rip),%rax        # 602ff8 <__gmon_start__>
  400683:	48 85 c0             	test   %rax,%rax
  400686:	74 05                	je     40068d <_init+0x15>
  400688:	e8 93 00 00 00       	call   400720 <__gmon_start__@plt>
  40068d:	48 83 c4 08          	add    $0x8,%rsp
  400691:	c3                   	ret

Disassembly of section .plt:

00000000004006a0 <.plt>:
  4006a0:	ff 35 62 29 20 00    	push   0x202962(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4006a6:	ff 25 64 29 20 00    	jmp    *0x202964(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4006ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006b0 <free@plt>:
  4006b0:	ff 25 62 29 20 00    	jmp    *0x202962(%rip)        # 603018 <free@GLIBC_2.2.5>
  4006b6:	68 00 00 00 00       	push   $0x0
  4006bb:	e9 e0 ff ff ff       	jmp    4006a0 <.plt>

00000000004006c0 <puts@plt>:
  4006c0:	ff 25 5a 29 20 00    	jmp    *0x20295a(%rip)        # 603020 <puts@GLIBC_2.2.5>
  4006c6:	68 01 00 00 00       	push   $0x1
  4006cb:	e9 d0 ff ff ff       	jmp    4006a0 <.plt>

00000000004006d0 <strlen@plt>:
  4006d0:	ff 25 52 29 20 00    	jmp    *0x202952(%rip)        # 603028 <strlen@GLIBC_2.2.5>
  4006d6:	68 02 00 00 00       	push   $0x2
  4006db:	e9 c0 ff ff ff       	jmp    4006a0 <.plt>

00000000004006e0 <printf@plt>:
  4006e0:	ff 25 4a 29 20 00    	jmp    *0x20294a(%rip)        # 603030 <printf@GLIBC_2.2.5>
  4006e6:	68 03 00 00 00       	push   $0x3
  4006eb:	e9 b0 ff ff ff       	jmp    4006a0 <.plt>

00000000004006f0 <__libc_start_main@plt>:
  4006f0:	ff 25 42 29 20 00    	jmp    *0x202942(%rip)        # 603038 <__libc_start_main@GLIBC_2.2.5>
  4006f6:	68 04 00 00 00       	push   $0x4
  4006fb:	e9 a0 ff ff ff       	jmp    4006a0 <.plt>

0000000000400700 <calloc@plt>:
  400700:	ff 25 3a 29 20 00    	jmp    *0x20293a(%rip)        # 603040 <calloc@GLIBC_2.2.5>
  400706:	68 05 00 00 00       	push   $0x5
  40070b:	e9 90 ff ff ff       	jmp    4006a0 <.plt>

0000000000400710 <strcmp@plt>:
  400710:	ff 25 32 29 20 00    	jmp    *0x202932(%rip)        # 603048 <strcmp@GLIBC_2.2.5>
  400716:	68 06 00 00 00       	push   $0x6
  40071b:	e9 80 ff ff ff       	jmp    4006a0 <.plt>

0000000000400720 <__gmon_start__@plt>:
  400720:	ff 25 2a 29 20 00    	jmp    *0x20292a(%rip)        # 603050 <__gmon_start__>
  400726:	68 07 00 00 00       	push   $0x7
  40072b:	e9 70 ff ff ff       	jmp    4006a0 <.plt>

0000000000400730 <fopen@plt>:
  400730:	ff 25 22 29 20 00    	jmp    *0x202922(%rip)        # 603058 <fopen@GLIBC_2.2.5>
  400736:	68 08 00 00 00       	push   $0x8
  40073b:	e9 60 ff ff ff       	jmp    4006a0 <.plt>

0000000000400740 <getline@plt>:
  400740:	ff 25 1a 29 20 00    	jmp    *0x20291a(%rip)        # 603060 <getline@GLIBC_2.2.5>
  400746:	68 09 00 00 00       	push   $0x9
  40074b:	e9 50 ff ff ff       	jmp    4006a0 <.plt>

0000000000400750 <exit@plt>:
  400750:	ff 25 12 29 20 00    	jmp    *0x202912(%rip)        # 603068 <exit@GLIBC_2.2.5>
  400756:	68 0a 00 00 00       	push   $0xa
  40075b:	e9 40 ff ff ff       	jmp    4006a0 <.plt>

0000000000400760 <strstr@plt>:
  400760:	ff 25 0a 29 20 00    	jmp    *0x20290a(%rip)        # 603070 <strstr@GLIBC_2.2.5>
  400766:	68 0b 00 00 00       	push   $0xb
  40076b:	e9 30 ff ff ff       	jmp    4006a0 <.plt>

0000000000400770 <__ctype_b_loc@plt>:
  400770:	ff 25 02 29 20 00    	jmp    *0x202902(%rip)        # 603078 <__ctype_b_loc@GLIBC_2.3>
  400776:	68 0c 00 00 00       	push   $0xc
  40077b:	e9 20 ff ff ff       	jmp    4006a0 <.plt>

Disassembly of section .text:

0000000000400780 <_start>:
  400780:	31 ed                	xor    %ebp,%ebp
  400782:	49 89 d1             	mov    %rdx,%r9
  400785:	5e                   	pop    %rsi
  400786:	48 89 e2             	mov    %rsp,%rdx
  400789:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40078d:	50                   	push   %rax
  40078e:	54                   	push   %rsp
  40078f:	49 c7 c0 f0 10 40 00 	mov    $0x4010f0,%r8
  400796:	48 c7 c1 80 10 40 00 	mov    $0x401080,%rcx
  40079d:	48 c7 c7 6d 08 40 00 	mov    $0x40086d,%rdi
  4007a4:	e8 47 ff ff ff       	call   4006f0 <__libc_start_main@plt>
  4007a9:	f4                   	hlt
  4007aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004007b0 <deregister_tm_clones>:
  4007b0:	b8 8f 30 60 00       	mov    $0x60308f,%eax
  4007b5:	55                   	push   %rbp
  4007b6:	48 2d 88 30 60 00    	sub    $0x603088,%rax
  4007bc:	48 83 f8 0e          	cmp    $0xe,%rax
  4007c0:	48 89 e5             	mov    %rsp,%rbp
  4007c3:	77 02                	ja     4007c7 <deregister_tm_clones+0x17>
  4007c5:	5d                   	pop    %rbp
  4007c6:	c3                   	ret
  4007c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007cc:	48 85 c0             	test   %rax,%rax
  4007cf:	74 f4                	je     4007c5 <deregister_tm_clones+0x15>
  4007d1:	5d                   	pop    %rbp
  4007d2:	bf 88 30 60 00       	mov    $0x603088,%edi
  4007d7:	ff e0                	jmp    *%rax
  4007d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007e0 <register_tm_clones>:
  4007e0:	b8 88 30 60 00       	mov    $0x603088,%eax
  4007e5:	55                   	push   %rbp
  4007e6:	48 2d 88 30 60 00    	sub    $0x603088,%rax
  4007ec:	48 c1 f8 03          	sar    $0x3,%rax
  4007f0:	48 89 e5             	mov    %rsp,%rbp
  4007f3:	48 89 c2             	mov    %rax,%rdx
  4007f6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4007fa:	48 01 d0             	add    %rdx,%rax
  4007fd:	48 d1 f8             	sar    $1,%rax
  400800:	75 02                	jne    400804 <register_tm_clones+0x24>
  400802:	5d                   	pop    %rbp
  400803:	c3                   	ret
  400804:	ba 00 00 00 00       	mov    $0x0,%edx
  400809:	48 85 d2             	test   %rdx,%rdx
  40080c:	74 f4                	je     400802 <register_tm_clones+0x22>
  40080e:	5d                   	pop    %rbp
  40080f:	48 89 c6             	mov    %rax,%rsi
  400812:	bf 88 30 60 00       	mov    $0x603088,%edi
  400817:	ff e2                	jmp    *%rdx
  400819:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400820 <__do_global_dtors_aux>:
  400820:	80 3d 69 28 20 00 00 	cmpb   $0x0,0x202869(%rip)        # 603090 <completed.6355>
  400827:	75 11                	jne    40083a <__do_global_dtors_aux+0x1a>
  400829:	55                   	push   %rbp
  40082a:	48 89 e5             	mov    %rsp,%rbp
  40082d:	e8 7e ff ff ff       	call   4007b0 <deregister_tm_clones>
  400832:	5d                   	pop    %rbp
  400833:	c6 05 56 28 20 00 01 	movb   $0x1,0x202856(%rip)        # 603090 <completed.6355>
  40083a:	f3 c3                	repz ret
  40083c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400840 <frame_dummy>:
  400840:	48 83 3d d8 25 20 00 	cmpq   $0x0,0x2025d8(%rip)        # 602e20 <__JCR_END__>
  400847:	00 
  400848:	74 1e                	je     400868 <frame_dummy+0x28>
  40084a:	b8 00 00 00 00       	mov    $0x0,%eax
  40084f:	48 85 c0             	test   %rax,%rax
  400852:	74 14                	je     400868 <frame_dummy+0x28>
  400854:	55                   	push   %rbp
  400855:	bf 20 2e 60 00       	mov    $0x602e20,%edi
  40085a:	48 89 e5             	mov    %rsp,%rbp
  40085d:	ff d0                	call   *%rax
  40085f:	5d                   	pop    %rbp
  400860:	e9 7b ff ff ff       	jmp    4007e0 <register_tm_clones>
  400865:	0f 1f 00             	nopl   (%rax)
  400868:	e9 73 ff ff ff       	jmp    4007e0 <register_tm_clones>

000000000040086d <main>:
  40086d:	55                   	push   %rbp
  40086e:	48 89 e5             	mov    %rsp,%rbp
  400871:	48 83 ec 20          	sub    $0x20,%rsp
  400875:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400878:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40087c:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  400880:	75 13                	jne    400895 <main+0x28>
  400882:	48 8b 05 ff 27 20 00 	mov    0x2027ff(%rip),%rax        # 603088 <stdin@GLIBC_2.2.5>
  400889:	48 89 05 08 28 20 00 	mov    %rax,0x202808(%rip)        # 603098 <infile>
  400890:	e9 82 00 00 00       	jmp    400917 <main+0xaa>
  400895:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  400899:	75 59                	jne    4008f4 <main+0x87>
  40089b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40089f:	48 83 c0 08          	add    $0x8,%rax
  4008a3:	48 8b 00             	mov    (%rax),%rax
  4008a6:	be 10 11 40 00       	mov    $0x401110,%esi
  4008ab:	48 89 c7             	mov    %rax,%rdi
  4008ae:	e8 7d fe ff ff       	call   400730 <fopen@plt>
  4008b3:	48 89 05 de 27 20 00 	mov    %rax,0x2027de(%rip)        # 603098 <infile>
  4008ba:	48 8b 05 d7 27 20 00 	mov    0x2027d7(%rip),%rax        # 603098 <infile>
  4008c1:	48 85 c0             	test   %rax,%rax
  4008c4:	75 51                	jne    400917 <main+0xaa>
  4008c6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4008ca:	48 83 c0 08          	add    $0x8,%rax
  4008ce:	48 8b 10             	mov    (%rax),%rdx
  4008d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4008d5:	48 8b 00             	mov    (%rax),%rax
  4008d8:	48 89 c6             	mov    %rax,%rsi
  4008db:	bf 12 11 40 00       	mov    $0x401112,%edi
  4008e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4008e5:	e8 f6 fd ff ff       	call   4006e0 <printf@plt>
  4008ea:	bf 08 00 00 00       	mov    $0x8,%edi
  4008ef:	e8 5c fe ff ff       	call   400750 <exit@plt>
  4008f4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4008f8:	48 8b 00             	mov    (%rax),%rax
  4008fb:	48 89 c6             	mov    %rax,%rsi
  4008fe:	bf 2f 11 40 00       	mov    $0x40112f,%edi
  400903:	b8 00 00 00 00       	mov    $0x0,%eax
  400908:	e8 d3 fd ff ff       	call   4006e0 <printf@plt>
  40090d:	bf 08 00 00 00       	mov    $0x8,%edi
  400912:	e8 39 fe ff ff       	call   400750 <exit@plt>
  400917:	bf 50 11 40 00       	mov    $0x401150,%edi
  40091c:	e8 9f fd ff ff       	call   4006c0 <puts@plt>
  400921:	bf 98 11 40 00       	mov    $0x401198,%edi
  400926:	e8 95 fd ff ff       	call   4006c0 <puts@plt>
  40092b:	bf c8 11 40 00       	mov    $0x4011c8,%edi
  400930:	e8 8b fd ff ff       	call   4006c0 <puts@plt>
  400935:	b8 00 00 00 00       	mov    $0x0,%eax
  40093a:	e8 83 01 00 00       	call   400ac2 <read_line>
  40093f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400943:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400947:	48 89 c7             	mov    %rax,%rdi
  40094a:	e8 dd 02 00 00       	call   400c2c <phase_1>
  40094f:	84 c0                	test   %al,%al
  400951:	75 e2                	jne    400935 <main+0xc8>
  400953:	bf 98 11 40 00       	mov    $0x401198,%edi
  400958:	e8 63 fd ff ff       	call   4006c0 <puts@plt>
  40095d:	bf 38 13 40 00       	mov    $0x401338,%edi
  400962:	e8 59 fd ff ff       	call   4006c0 <puts@plt>
  400967:	b8 00 00 00 00       	mov    $0x0,%eax
  40096c:	e8 51 01 00 00       	call   400ac2 <read_line>
  400971:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400975:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400979:	48 89 c7             	mov    %rax,%rdi
  40097c:	e8 18 03 00 00       	call   400c99 <phase_2>
  400981:	84 c0                	test   %al,%al
  400983:	75 e2                	jne    400967 <main+0xfa>
  400985:	bf 48 14 40 00       	mov    $0x401448,%edi
  40098a:	e8 31 fd ff ff       	call   4006c0 <puts@plt>
  40098f:	bf 98 11 40 00       	mov    $0x401198,%edi
  400994:	e8 27 fd ff ff       	call   4006c0 <puts@plt>
  400999:	bf 90 14 40 00       	mov    $0x401490,%edi
  40099e:	e8 1d fd ff ff       	call   4006c0 <puts@plt>
  4009a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4009a8:	e8 15 01 00 00       	call   400ac2 <read_line>
  4009ad:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009b5:	48 89 c7             	mov    %rax,%rdi
  4009b8:	e8 30 04 00 00       	call   400ded <phase_3>
  4009bd:	84 c0                	test   %al,%al
  4009bf:	75 e2                	jne    4009a3 <main+0x136>
  4009c1:	bf 98 11 40 00       	mov    $0x401198,%edi
  4009c6:	e8 f5 fc ff ff       	call   4006c0 <puts@plt>
  4009cb:	bf 70 16 40 00       	mov    $0x401670,%edi
  4009d0:	e8 eb fc ff ff       	call   4006c0 <puts@plt>
  4009d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4009da:	e8 e3 00 00 00       	call   400ac2 <read_line>
  4009df:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4009e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009e7:	48 89 c7             	mov    %rax,%rdi
  4009ea:	e8 6a 04 00 00       	call   400e59 <phase_4>
  4009ef:	84 c0                	test   %al,%al
  4009f1:	75 e2                	jne    4009d5 <main+0x168>
  4009f3:	bf 98 17 40 00       	mov    $0x401798,%edi
  4009f8:	e8 c3 fc ff ff       	call   4006c0 <puts@plt>
  4009fd:	bf 98 11 40 00       	mov    $0x401198,%edi
  400a02:	e8 b9 fc ff ff       	call   4006c0 <puts@plt>
  400a07:	bf c0 17 40 00       	mov    $0x4017c0,%edi
  400a0c:	e8 af fc ff ff       	call   4006c0 <puts@plt>
  400a11:	b8 00 00 00 00       	mov    $0x0,%eax
  400a16:	e8 a7 00 00 00       	call   400ac2 <read_line>
  400a1b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a23:	48 89 c7             	mov    %rax,%rdi
  400a26:	e8 e5 04 00 00       	call   400f10 <phase_5>
  400a2b:	84 c0                	test   %al,%al
  400a2d:	75 e2                	jne    400a11 <main+0x1a4>
  400a2f:	bf f1 18 40 00       	mov    $0x4018f1,%edi
  400a34:	e8 87 fc ff ff       	call   4006c0 <puts@plt>
  400a39:	bf 98 11 40 00       	mov    $0x401198,%edi
  400a3e:	e8 7d fc ff ff       	call   4006c0 <puts@plt>
  400a43:	bf 10 19 40 00       	mov    $0x401910,%edi
  400a48:	e8 73 fc ff ff       	call   4006c0 <puts@plt>
  400a4d:	b8 00 00 00 00       	mov    $0x0,%eax
  400a52:	e8 6b 00 00 00       	call   400ac2 <read_line>
  400a57:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a5b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a5f:	48 89 c7             	mov    %rax,%rdi
  400a62:	e8 38 05 00 00       	call   400f9f <phase_6>
  400a67:	84 c0                	test   %al,%al
  400a69:	75 e2                	jne    400a4d <main+0x1e0>
  400a6b:	bf 8a 1a 40 00       	mov    $0x401a8a,%edi
  400a70:	e8 4b fc ff ff       	call   4006c0 <puts@plt>
  400a75:	bf 98 11 40 00       	mov    $0x401198,%edi
  400a7a:	e8 41 fc ff ff       	call   4006c0 <puts@plt>
  400a7f:	bf a0 1a 40 00       	mov    $0x401aa0,%edi
  400a84:	e8 37 fc ff ff       	call   4006c0 <puts@plt>
  400a89:	b8 00 00 00 00       	mov    $0x0,%eax
  400a8e:	e8 2f 00 00 00       	call   400ac2 <read_line>
  400a93:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a97:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a9b:	48 89 c7             	mov    %rax,%rdi
  400a9e:	e8 68 05 00 00       	call   40100b <phase_7>
  400aa3:	84 c0                	test   %al,%al
  400aa5:	75 e2                	jne    400a89 <main+0x21c>
  400aa7:	bf 98 11 40 00       	mov    $0x401198,%edi
  400aac:	e8 0f fc ff ff       	call   4006c0 <puts@plt>
  400ab1:	bf 1a 1d 40 00       	mov    $0x401d1a,%edi
  400ab6:	e8 05 fc ff ff       	call   4006c0 <puts@plt>
  400abb:	b8 00 00 00 00       	mov    $0x0,%eax
  400ac0:	c9                   	leave
  400ac1:	c3                   	ret

0000000000400ac2 <read_line>:
  400ac2:	55                   	push   %rbp
  400ac3:	48 89 e5             	mov    %rsp,%rbp
  400ac6:	48 83 ec 20          	sub    $0x20,%rsp
  400aca:	bf 28 1d 40 00       	mov    $0x401d28,%edi
  400acf:	e8 ec fb ff ff       	call   4006c0 <puts@plt>
  400ad4:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  400adb:	00 
  400adc:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  400ae3:	00 
  400ae4:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400aeb:	00 
  400aec:	48 8b 15 a5 25 20 00 	mov    0x2025a5(%rip),%rdx        # 603098 <infile>
  400af3:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
  400af7:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400afb:	48 89 ce             	mov    %rcx,%rsi
  400afe:	48 89 c7             	mov    %rax,%rdi
  400b01:	e8 3a fc ff ff       	call   400740 <getline@plt>
  400b06:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400b0a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400b0e:	0f b6 00             	movzbl (%rax),%eax
  400b11:	84 c0                	test   %al,%al
  400b13:	74 07                	je     400b1c <read_line+0x5a>
  400b15:	48 83 7d f8 01       	cmpq   $0x1,-0x8(%rbp)
  400b1a:	75 26                	jne    400b42 <read_line+0x80>
  400b1c:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  400b23:	00 
  400b24:	48 8b 15 5d 25 20 00 	mov    0x20255d(%rip),%rdx        # 603088 <stdin@GLIBC_2.2.5>
  400b2b:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
  400b2f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  400b33:	48 89 ce             	mov    %rcx,%rsi
  400b36:	48 89 c7             	mov    %rax,%rdi
  400b39:	e8 02 fc ff ff       	call   400740 <getline@plt>
  400b3e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400b42:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400b46:	c9                   	leave
  400b47:	c3                   	ret

0000000000400b48 <remove_white_space>:
  400b48:	55                   	push   %rbp
  400b49:	48 89 e5             	mov    %rsp,%rbp
  400b4c:	48 83 ec 30          	sub    $0x30,%rsp
  400b50:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400b54:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  400b5b:	00 
  400b5c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400b60:	48 89 c7             	mov    %rax,%rdi
  400b63:	e8 68 fb ff ff       	call   4006d0 <strlen@plt>
  400b68:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400b6c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400b70:	48 83 c0 01          	add    $0x1,%rax
  400b74:	be 01 00 00 00       	mov    $0x1,%esi
  400b79:	48 89 c7             	mov    %rax,%rdi
  400b7c:	e8 7f fb ff ff       	call   400700 <calloc@plt>
  400b81:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400b85:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400b8c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400b93:	eb 6c                	jmp    400c01 <remove_white_space+0xb9>
  400b95:	e8 d6 fb ff ff       	call   400770 <__ctype_b_loc@plt>
  400b9a:	48 8b 00             	mov    (%rax),%rax
  400b9d:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400ba0:	48 63 ca             	movslq %edx,%rcx
  400ba3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  400ba7:	48 01 ca             	add    %rcx,%rdx
  400baa:	0f b6 12             	movzbl (%rdx),%edx
  400bad:	48 0f be d2          	movsbq %dl,%rdx
  400bb1:	48 01 d2             	add    %rdx,%rdx
  400bb4:	48 01 d0             	add    %rdx,%rax
  400bb7:	0f b7 00             	movzwl (%rax),%eax
  400bba:	0f b7 c0             	movzwl %ax,%eax
  400bbd:	25 00 20 00 00       	and    $0x2000,%eax
  400bc2:	85 c0                	test   %eax,%eax
  400bc4:	75 37                	jne    400bfd <remove_white_space+0xb5>
  400bc6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400bc9:	48 63 d0             	movslq %eax,%rdx
  400bcc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400bd0:	48 01 d0             	add    %rdx,%rax
  400bd3:	0f b6 00             	movzbl (%rax),%eax
  400bd6:	84 c0                	test   %al,%al
  400bd8:	74 23                	je     400bfd <remove_white_space+0xb5>
  400bda:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400bdd:	48 63 d0             	movslq %eax,%rdx
  400be0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400be4:	48 01 c2             	add    %rax,%rdx
  400be7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400bea:	48 63 c8             	movslq %eax,%rcx
  400bed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400bf1:	48 01 c8             	add    %rcx,%rax
  400bf4:	0f b6 00             	movzbl (%rax),%eax
  400bf7:	88 02                	mov    %al,(%rdx)
  400bf9:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  400bfd:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400c01:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c04:	48 98                	cltq
  400c06:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  400c0a:	48 83 c2 01          	add    $0x1,%rdx
  400c0e:	48 39 d0             	cmp    %rdx,%rax
  400c11:	72 82                	jb     400b95 <remove_white_space+0x4d>
  400c13:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400c16:	48 98                	cltq
  400c18:	48 8d 50 01          	lea    0x1(%rax),%rdx
  400c1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c20:	48 01 d0             	add    %rdx,%rax
  400c23:	c6 00 00             	movb   $0x0,(%rax)
  400c26:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c2a:	c9                   	leave
  400c2b:	c3                   	ret

0000000000400c2c <phase_1>:
  400c2c:	55                   	push   %rbp
  400c2d:	48 89 e5             	mov    %rsp,%rbp
  400c30:	48 83 ec 20          	sub    $0x20,%rsp
  400c34:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400c38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c3c:	48 89 c7             	mov    %rax,%rdi
  400c3f:	e8 04 ff ff ff       	call   400b48 <remove_white_space>
  400c44:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400c48:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400c4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c53:	be 48 1d 40 00       	mov    $0x401d48,%esi
  400c58:	48 89 c7             	mov    %rax,%rdi
  400c5b:	e8 00 fb ff ff       	call   400760 <strstr@plt>
  400c60:	48 85 c0             	test   %rax,%rax
  400c63:	74 09                	je     400c6e <phase_1+0x42>
  400c65:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400c6c:	eb 0a                	jmp    400c78 <phase_1+0x4c>
  400c6e:	bf 70 1d 40 00       	mov    $0x401d70,%edi
  400c73:	e8 48 fa ff ff       	call   4006c0 <puts@plt>
  400c78:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c7c:	48 89 c7             	mov    %rax,%rdi
  400c7f:	e8 2c fa ff ff       	call   4006b0 <free@plt>
  400c84:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400c88:	48 89 c7             	mov    %rax,%rdi
  400c8b:	e8 20 fa ff ff       	call   4006b0 <free@plt>
  400c90:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  400c94:	0f 95 c0             	setne  %al
  400c97:	c9                   	leave
  400c98:	c3                   	ret

0000000000400c99 <phase_2>:
  400c99:	55                   	push   %rbp
  400c9a:	48 89 e5             	mov    %rsp,%rbp
  400c9d:	48 83 ec 30          	sub    $0x30,%rsp
  400ca1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400ca5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ca9:	48 89 c7             	mov    %rax,%rdi
  400cac:	e8 97 fe ff ff       	call   400b48 <remove_white_space>
  400cb1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400cb5:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400cbc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400cc0:	be 30 1e 40 00       	mov    $0x401e30,%esi
  400cc5:	48 89 c7             	mov    %rax,%rdi
  400cc8:	e8 43 fa ff ff       	call   400710 <strcmp@plt>
  400ccd:	85 c0                	test   %eax,%eax
  400ccf:	0f 85 89 00 00 00    	jne    400d5e <phase_2+0xc5>
  400cd5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400cd9:	be 40 1e 40 00       	mov    $0x401e40,%esi
  400cde:	48 89 c7             	mov    %rax,%rdi
  400ce1:	e8 7a fa ff ff       	call   400760 <strstr@plt>
  400ce6:	0f b6 40 02          	movzbl 0x2(%rax),%eax
  400cea:	88 45 ef             	mov    %al,-0x11(%rbp)
  400ced:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400cf1:	be 43 1e 40 00       	mov    $0x401e43,%esi
  400cf6:	48 89 c7             	mov    %rax,%rdi
  400cf9:	e8 62 fa ff ff       	call   400760 <strstr@plt>
  400cfe:	0f b6 40 02          	movzbl 0x2(%rax),%eax
  400d02:	88 45 ee             	mov    %al,-0x12(%rbp)
  400d05:	e8 66 fa ff ff       	call   400770 <__ctype_b_loc@plt>
  400d0a:	48 8b 00             	mov    (%rax),%rax
  400d0d:	48 0f be 55 ef       	movsbq -0x11(%rbp),%rdx
  400d12:	48 01 d2             	add    %rdx,%rdx
  400d15:	48 01 d0             	add    %rdx,%rax
  400d18:	0f b7 00             	movzwl (%rax),%eax
  400d1b:	0f b7 c0             	movzwl %ax,%eax
  400d1e:	25 00 20 00 00       	and    $0x2000,%eax
  400d23:	85 c0                	test   %eax,%eax
  400d25:	74 2b                	je     400d52 <phase_2+0xb9>
  400d27:	e8 44 fa ff ff       	call   400770 <__ctype_b_loc@plt>
  400d2c:	48 8b 00             	mov    (%rax),%rax
  400d2f:	48 0f be 55 ee       	movsbq -0x12(%rbp),%rdx
  400d34:	48 01 d2             	add    %rdx,%rdx
  400d37:	48 01 d0             	add    %rdx,%rax
  400d3a:	0f b7 00             	movzwl (%rax),%eax
  400d3d:	0f b7 c0             	movzwl %ax,%eax
  400d40:	25 00 20 00 00       	and    $0x2000,%eax
  400d45:	85 c0                	test   %eax,%eax
  400d47:	74 09                	je     400d52 <phase_2+0xb9>
  400d49:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400d50:	eb 7a                	jmp    400dcc <phase_2+0x133>
  400d52:	bf 48 1e 40 00       	mov    $0x401e48,%edi
  400d57:	e8 64 f9 ff ff       	call   4006c0 <puts@plt>
  400d5c:	eb 6e                	jmp    400dcc <phase_2+0x133>
  400d5e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d62:	be 6c 1e 40 00       	mov    $0x401e6c,%esi
  400d67:	48 89 c7             	mov    %rax,%rdi
  400d6a:	e8 a1 f9 ff ff       	call   400710 <strcmp@plt>
  400d6f:	85 c0                	test   %eax,%eax
  400d71:	75 4f                	jne    400dc2 <phase_2+0x129>
  400d73:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400d77:	be 7d 1e 40 00       	mov    $0x401e7d,%esi
  400d7c:	48 89 c7             	mov    %rax,%rdi
  400d7f:	e8 dc f9 ff ff       	call   400760 <strstr@plt>
  400d84:	0f b6 40 05          	movzbl 0x5(%rax),%eax
  400d88:	88 45 ed             	mov    %al,-0x13(%rbp)
  400d8b:	e8 e0 f9 ff ff       	call   400770 <__ctype_b_loc@plt>
  400d90:	48 8b 00             	mov    (%rax),%rax
  400d93:	48 0f be 55 ed       	movsbq -0x13(%rbp),%rdx
  400d98:	48 01 d2             	add    %rdx,%rdx
  400d9b:	48 01 d0             	add    %rdx,%rax
  400d9e:	0f b7 00             	movzwl (%rax),%eax
  400da1:	0f b7 c0             	movzwl %ax,%eax
  400da4:	25 00 20 00 00       	and    $0x2000,%eax
  400da9:	85 c0                	test   %eax,%eax
  400dab:	74 09                	je     400db6 <phase_2+0x11d>
  400dad:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400db4:	eb 16                	jmp    400dcc <phase_2+0x133>
  400db6:	bf 48 1e 40 00       	mov    $0x401e48,%edi
  400dbb:	e8 00 f9 ff ff       	call   4006c0 <puts@plt>
  400dc0:	eb 0a                	jmp    400dcc <phase_2+0x133>
  400dc2:	bf 88 1e 40 00       	mov    $0x401e88,%edi
  400dc7:	e8 f4 f8 ff ff       	call   4006c0 <puts@plt>
  400dcc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400dd0:	48 89 c7             	mov    %rax,%rdi
  400dd3:	e8 d8 f8 ff ff       	call   4006b0 <free@plt>
  400dd8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400ddc:	48 89 c7             	mov    %rax,%rdi
  400ddf:	e8 cc f8 ff ff       	call   4006b0 <free@plt>
  400de4:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  400de8:	0f 95 c0             	setne  %al
  400deb:	c9                   	leave
  400dec:	c3                   	ret

0000000000400ded <phase_3>:
  400ded:	55                   	push   %rbp
  400dee:	48 89 e5             	mov    %rsp,%rbp
  400df1:	48 83 ec 20          	sub    $0x20,%rsp
  400df5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400df9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400dfd:	48 89 c7             	mov    %rax,%rdi
  400e00:	e8 43 fd ff ff       	call   400b48 <remove_white_space>
  400e05:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400e09:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400e10:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400e14:	be cc 1e 40 00       	mov    $0x401ecc,%esi
  400e19:	48 89 c7             	mov    %rax,%rdi
  400e1c:	e8 ef f8 ff ff       	call   400710 <strcmp@plt>
  400e21:	85 c0                	test   %eax,%eax
  400e23:	75 09                	jne    400e2e <phase_3+0x41>
  400e25:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400e2c:	eb 0a                	jmp    400e38 <phase_3+0x4b>
  400e2e:	bf d8 1e 40 00       	mov    $0x401ed8,%edi
  400e33:	e8 88 f8 ff ff       	call   4006c0 <puts@plt>
  400e38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400e3c:	48 89 c7             	mov    %rax,%rdi
  400e3f:	e8 6c f8 ff ff       	call   4006b0 <free@plt>
  400e44:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400e48:	48 89 c7             	mov    %rax,%rdi
  400e4b:	e8 60 f8 ff ff       	call   4006b0 <free@plt>
  400e50:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  400e54:	0f 95 c0             	setne  %al
  400e57:	c9                   	leave
  400e58:	c3                   	ret

0000000000400e59 <phase_4>:
  400e59:	55                   	push   %rbp
  400e5a:	48 89 e5             	mov    %rsp,%rbp
  400e5d:	48 83 ec 20          	sub    $0x20,%rsp
  400e61:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400e65:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400e69:	48 89 c7             	mov    %rax,%rdi
  400e6c:	e8 d7 fc ff ff       	call   400b48 <remove_white_space>
  400e71:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400e75:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400e7c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400e80:	be 56 1f 40 00       	mov    $0x401f56,%esi
  400e85:	48 89 c7             	mov    %rax,%rdi
  400e88:	e8 83 f8 ff ff       	call   400710 <strcmp@plt>
  400e8d:	85 c0                	test   %eax,%eax
  400e8f:	74 15                	je     400ea6 <phase_4+0x4d>
  400e91:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400e95:	be 5a 1f 40 00       	mov    $0x401f5a,%esi
  400e9a:	48 89 c7             	mov    %rax,%rdi
  400e9d:	e8 6e f8 ff ff       	call   400710 <strcmp@plt>
  400ea2:	85 c0                	test   %eax,%eax
  400ea4:	75 09                	jne    400eaf <phase_4+0x56>
  400ea6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400ead:	eb 40                	jmp    400eef <phase_4+0x96>
  400eaf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400eb3:	be 68 1f 40 00       	mov    $0x401f68,%esi
  400eb8:	48 89 c7             	mov    %rax,%rdi
  400ebb:	e8 50 f8 ff ff       	call   400710 <strcmp@plt>
  400ec0:	85 c0                	test   %eax,%eax
  400ec2:	74 15                	je     400ed9 <phase_4+0x80>
  400ec4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400ec8:	be 6c 1f 40 00       	mov    $0x401f6c,%esi
  400ecd:	48 89 c7             	mov    %rax,%rdi
  400ed0:	e8 3b f8 ff ff       	call   400710 <strcmp@plt>
  400ed5:	85 c0                	test   %eax,%eax
  400ed7:	75 0c                	jne    400ee5 <phase_4+0x8c>
  400ed9:	bf 80 1f 40 00       	mov    $0x401f80,%edi
  400ede:	e8 dd f7 ff ff       	call   4006c0 <puts@plt>
  400ee3:	eb 0a                	jmp    400eef <phase_4+0x96>
  400ee5:	bf d0 1f 40 00       	mov    $0x401fd0,%edi
  400eea:	e8 d1 f7 ff ff       	call   4006c0 <puts@plt>
  400eef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400ef3:	48 89 c7             	mov    %rax,%rdi
  400ef6:	e8 b5 f7 ff ff       	call   4006b0 <free@plt>
  400efb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400eff:	48 89 c7             	mov    %rax,%rdi
  400f02:	e8 a9 f7 ff ff       	call   4006b0 <free@plt>
  400f07:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  400f0b:	0f 95 c0             	setne  %al
  400f0e:	c9                   	leave
  400f0f:	c3                   	ret

0000000000400f10 <phase_5>:
  400f10:	55                   	push   %rbp
  400f11:	48 89 e5             	mov    %rsp,%rbp
  400f14:	48 83 ec 20          	sub    $0x20,%rsp
  400f18:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400f1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400f20:	48 89 c7             	mov    %rax,%rdi
  400f23:	e8 20 fc ff ff       	call   400b48 <remove_white_space>
  400f28:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400f2c:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400f33:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400f37:	be 2c 20 40 00       	mov    $0x40202c,%esi
  400f3c:	48 89 c7             	mov    %rax,%rdi
  400f3f:	e8 cc f7 ff ff       	call   400710 <strcmp@plt>
  400f44:	85 c0                	test   %eax,%eax
  400f46:	75 09                	jne    400f51 <phase_5+0x41>
  400f48:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400f4f:	eb 2d                	jmp    400f7e <phase_5+0x6e>
  400f51:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400f55:	be 3d 20 40 00       	mov    $0x40203d,%esi
  400f5a:	48 89 c7             	mov    %rax,%rdi
  400f5d:	e8 ae f7 ff ff       	call   400710 <strcmp@plt>
  400f62:	85 c0                	test   %eax,%eax
  400f64:	75 09                	jne    400f6f <phase_5+0x5f>
  400f66:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400f6d:	eb 0f                	jmp    400f7e <phase_5+0x6e>
  400f6f:	bf 50 20 40 00       	mov    $0x402050,%edi
  400f74:	b8 00 00 00 00       	mov    $0x0,%eax
  400f79:	e8 62 f7 ff ff       	call   4006e0 <printf@plt>
  400f7e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400f82:	48 89 c7             	mov    %rax,%rdi
  400f85:	e8 26 f7 ff ff       	call   4006b0 <free@plt>
  400f8a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400f8e:	48 89 c7             	mov    %rax,%rdi
  400f91:	e8 1a f7 ff ff       	call   4006b0 <free@plt>
  400f96:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  400f9a:	0f 95 c0             	setne  %al
  400f9d:	c9                   	leave
  400f9e:	c3                   	ret

0000000000400f9f <phase_6>:
  400f9f:	55                   	push   %rbp
  400fa0:	48 89 e5             	mov    %rsp,%rbp
  400fa3:	48 83 ec 20          	sub    $0x20,%rsp
  400fa7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400fab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400faf:	48 89 c7             	mov    %rax,%rdi
  400fb2:	e8 91 fb ff ff       	call   400b48 <remove_white_space>
  400fb7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400fbb:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400fc2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400fc6:	be d0 20 40 00       	mov    $0x4020d0,%esi
  400fcb:	48 89 c7             	mov    %rax,%rdi
  400fce:	e8 3d f7 ff ff       	call   400710 <strcmp@plt>
  400fd3:	85 c0                	test   %eax,%eax
  400fd5:	75 09                	jne    400fe0 <phase_6+0x41>
  400fd7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400fde:	eb 0a                	jmp    400fea <phase_6+0x4b>
  400fe0:	bf d8 20 40 00       	mov    $0x4020d8,%edi
  400fe5:	e8 d6 f6 ff ff       	call   4006c0 <puts@plt>
  400fea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400fee:	48 89 c7             	mov    %rax,%rdi
  400ff1:	e8 ba f6 ff ff       	call   4006b0 <free@plt>
  400ff6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400ffa:	48 89 c7             	mov    %rax,%rdi
  400ffd:	e8 ae f6 ff ff       	call   4006b0 <free@plt>
  401002:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  401006:	0f 95 c0             	setne  %al
  401009:	c9                   	leave
  40100a:	c3                   	ret

000000000040100b <phase_7>:
  40100b:	55                   	push   %rbp
  40100c:	48 89 e5             	mov    %rsp,%rbp
  40100f:	48 83 ec 20          	sub    $0x20,%rsp
  401013:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401017:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40101b:	48 89 c7             	mov    %rax,%rdi
  40101e:	e8 25 fb ff ff       	call   400b48 <remove_white_space>
  401023:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401027:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  40102e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401032:	be 18 22 40 00       	mov    $0x402218,%esi
  401037:	48 89 c7             	mov    %rax,%rdi
  40103a:	e8 d1 f6 ff ff       	call   400710 <strcmp@plt>
  40103f:	85 c0                	test   %eax,%eax
  401041:	75 09                	jne    40104c <phase_7+0x41>
  401043:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40104a:	eb 0a                	jmp    401056 <phase_7+0x4b>
  40104c:	bf 60 22 40 00       	mov    $0x402260,%edi
  401051:	e8 6a f6 ff ff       	call   4006c0 <puts@plt>
  401056:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40105a:	48 89 c7             	mov    %rax,%rdi
  40105d:	e8 4e f6 ff ff       	call   4006b0 <free@plt>
  401062:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401066:	48 89 c7             	mov    %rax,%rdi
  401069:	e8 42 f6 ff ff       	call   4006b0 <free@plt>
  40106e:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  401072:	0f 95 c0             	setne  %al
  401075:	c9                   	leave
  401076:	c3                   	ret
  401077:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40107e:	00 00 

0000000000401080 <__libc_csu_init>:
  401080:	41 57                	push   %r15
  401082:	41 89 ff             	mov    %edi,%r15d
  401085:	41 56                	push   %r14
  401087:	49 89 f6             	mov    %rsi,%r14
  40108a:	41 55                	push   %r13
  40108c:	49 89 d5             	mov    %rdx,%r13
  40108f:	41 54                	push   %r12
  401091:	4c 8d 25 78 1d 20 00 	lea    0x201d78(%rip),%r12        # 602e10 <__frame_dummy_init_array_entry>
  401098:	55                   	push   %rbp
  401099:	48 8d 2d 78 1d 20 00 	lea    0x201d78(%rip),%rbp        # 602e18 <__do_global_dtors_aux_fini_array_entry>
  4010a0:	53                   	push   %rbx
  4010a1:	4c 29 e5             	sub    %r12,%rbp
  4010a4:	31 db                	xor    %ebx,%ebx
  4010a6:	48 c1 fd 03          	sar    $0x3,%rbp
  4010aa:	48 83 ec 08          	sub    $0x8,%rsp
  4010ae:	e8 c5 f5 ff ff       	call   400678 <_init>
  4010b3:	48 85 ed             	test   %rbp,%rbp
  4010b6:	74 1e                	je     4010d6 <__libc_csu_init+0x56>
  4010b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4010bf:	00 
  4010c0:	4c 89 ea             	mov    %r13,%rdx
  4010c3:	4c 89 f6             	mov    %r14,%rsi
  4010c6:	44 89 ff             	mov    %r15d,%edi
  4010c9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  4010cd:	48 83 c3 01          	add    $0x1,%rbx
  4010d1:	48 39 eb             	cmp    %rbp,%rbx
  4010d4:	75 ea                	jne    4010c0 <__libc_csu_init+0x40>
  4010d6:	48 83 c4 08          	add    $0x8,%rsp
  4010da:	5b                   	pop    %rbx
  4010db:	5d                   	pop    %rbp
  4010dc:	41 5c                	pop    %r12
  4010de:	41 5d                	pop    %r13
  4010e0:	41 5e                	pop    %r14
  4010e2:	41 5f                	pop    %r15
  4010e4:	c3                   	ret
  4010e5:	90                   	nop
  4010e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4010ed:	00 00 00 

00000000004010f0 <__libc_csu_fini>:
  4010f0:	f3 c3                	repz ret

Disassembly of section .fini:

00000000004010f4 <_fini>:
  4010f4:	48 83 ec 08          	sub    $0x8,%rsp
  4010f8:	48 83 c4 08          	add    $0x8,%rsp
  4010fc:	c3                   	ret
