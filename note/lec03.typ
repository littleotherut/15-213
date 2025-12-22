#set text(font:("DejaVu Sans","Noto Sans CJK SC"))

= Machine-level Programming 

== I. Basic 

=== I.I History of intel processors and architectures

- Complex instruction set Computer(CISC) \ 指令具有多种复杂格式（x86）
- Reduced instruction Set Computer(RISC) \ 指令格式简单，指令长度固定（ARM）


=== I.II C, assembly and machine code

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