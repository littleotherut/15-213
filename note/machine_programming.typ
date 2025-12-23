#set text(font:("DejaVu Sans","Noto Sans CJK SC"))

= Machine-level Programming 

== I. Basics

=== i. Assembly Basics: Registers, operands, move

==== *What is Assembly*
- 一种编程语言，具备数据类型，控制流结构等。同时，它是“中间态”，指令有限且需要明确指明（数据来源（具体寄存器），跳转位置，等等）
- 汇编语言的具体内容依赖于ISA（Instruction Set Architecture，指令集架构）
  \ eg: x86, ARM, RISC-V,等 

==== (指令格式):  
  #table(
    columns: 3,
    [operation], [Register name], [Register name],
    [add], [ %rbx ], [ %rax ]
  )
==== Registers
- CPU内部存储数据的单元（共16个通用寄存器，每个寄存器64位）
  - %r?x(a,b,c,d)：返回值，被调用保存，参4，参3
  - %r?i(s,d)：参2，参1
  - %r?p(b,s)：被调用保存，栈指针
  - %r?(8-15) (x86-64新增)：参5，参6，调保，调保，被调保存\*4
==== Memory
除寄存器外的任何存储单元



=== i. History of intel processors and architectures

- Complex instruction set Computer(CISC) \ 指令具有多种复杂格式（x86）
- Reduced instruction Set Computer(RISC) \ 指令格式简单，指令长度固定（ARM）


=== ii. C, assembly and machine code

==== Definitions

- Architecture 
  \ 指令集架构 ISA (Instruction Set Architecture)
  \ 定义机器语言的指令集，包括如何理解以及执行assembly code 的方法
- MicroArchitecture （微架构）
  \ 具体实现某一ISA的硬件设计
- Code Forms 
  \ Machine code : 处理器执行的二进制代码
  \ Assembly code : 机器码的符号化表示

==== Programmer's view
- PC : Program Counter, 指向下一条将要执行的指令
- Registers : 处理器内部的高速存储单元
- Memory : 主存储器，可寻址的Byte数组,存储数据和指令，
  \ 以栈的形式存储信息来支持函数调用
- Condition Codes : 存储最近实用的算数或逻辑运算的状态信息，用于条件跳转

==== Assembly Characteristics (汇编语言特点)
- 数据类型(Data types):
  - 