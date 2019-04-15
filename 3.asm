
.data
m: .float 0.1
n: .float 4.0
.text

main:
  li.s $f1,m
  li.s $f2,n
  mul.s $f0,$f1,$f2
  div.s $f3,$f1,$f2
