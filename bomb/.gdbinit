# ./gdbinit
set args ans.txt


# b phase_1
# b phase_2
# b phase_3
# b phase_4
# b phase_5
# # b *(phase_5+0x29)
# b *0x4010bd
# b *(phase_5+100)
b phase_6

# b phase_defused
# command
# jump *(phase_defused + 0x2A)
# end

# b *(explode_bomb + 0x44)
# command
# j *(explode_bomb + 0x81)
# end

r