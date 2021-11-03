!!! 印出1~100所有可被2,3,5,7整除之數的和，最後加總之。

implicit none
integer i
integer A, B, C, D
!------------
A = 0
do i=1,100
   if (mod(i,2).eq.0) A=A+i   ! i/2的餘數=0 (i可被2整除)
enddo
print*,'A=',A

B = 0
do i=101,1000
   if (mod(i,3).eq.0) B=B+i   ! i/3的餘數=0 (i可被3整除)
enddo
print*,'B=',B

C = 0
do i=1001,10000
   if (mod(i,5).eq.0) C=C+i   ! i/5的餘數=0 (i可被5整除)
enddo
print*,'C=',C

D = 0
do i=10001,100000
   if (mod(i,7).eq.0) D=D+i   ! i/7的餘數=0 (i可被7整除)
enddo
print*,'D=',D

print*,'A+B+C+D=',A+B+C+D

stop
end
