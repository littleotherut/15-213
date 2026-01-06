# ./gdbinit

set args -i input.txt -q
# ctarget

b getbuf
# b *0x401802
# b *0x401d48
# b *0x5561dc78
b touch2
# b hexmatch
# b *0x40186a

# rsi = seghandler , rdi = 
r
