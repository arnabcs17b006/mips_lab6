
.data
m: .float 0.1
n: .float 4.0
.text

main:
  l.s $f1,m
  l.s $f2,n
  mul.s $f0,$f1,$f2
  div.s $f3,$f1,$f2
