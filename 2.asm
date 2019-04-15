.data
m: .float 0.1
n: .float 4.0
.text

main:
  li.s $f0,m
  li.s $f2,n
  add.s $f3,$f0,$f2
  sub.s $f4,$f0,$f2
