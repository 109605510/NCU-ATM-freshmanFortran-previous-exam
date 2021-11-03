!!! 格式化輸出圓周率至小數點10位 Ans:3.14159XXXXX

implicit none
real pai
!----------
pai = acos(-1.)

write(*,"('pai =',1x,f12.10 )") pai

! 法2：
! print 2021,'pai =',pai
! 2021 format(a5,1x,f12.10)

stop
end

