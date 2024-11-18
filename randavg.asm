randavg:
  addi sp,sp,-448
  sw ra,444(sp)
  sw s0,440(sp)
  addi s0,sp,448
  sw zero,-20(s0)
  li a5,100
  sw a5,-32(s0)
  sw zero,-24(s0)
  j .L2
.L3:
  sw a0,-40(s0)
  lw a4,-24(s0)
  addi a5,s0,-440
  slli a4,a4,2
  add a5,a4,a5
  lw a4,-40(s0)
  sw a4,0(a5)
  lw a5,-24(s0)
  addi a5,a5,1
  sw a5,-24(s0)
.L2:
  lw a4,-24(s0)
  lw a5,-32(s0)
  blt a4,a5,.L3
  sw zero,-28(s0)
  j .L4
.L5:
  lw a4,-28(s0)
  addi a5,s0,-440
  slli a4,a4,2
  add a5,a4,a5
  lw a5,0(a5)
  lw a4,-20(s0)
  add a5,a4,a5
  sw a5,-20(s0)
  lw a5,-28(s0)
  addi a5,a5,1
  sw a5,-28(s0)
.L4:
  lw a4,-28(s0)
  lw a5,-32(s0)
  blt a4,a5,.L5
  lw a4,-20(s0)
  lw a5,-32(s0)
  div a5,a4,a5
  sw a5,-36(s0)
  lw a1,-36(s0)
  lw a5,-36(s0)
  mv a0,a5
  lw ra,444(sp)
  lw s0,440(sp)
  addi sp,sp,448
  jr ra