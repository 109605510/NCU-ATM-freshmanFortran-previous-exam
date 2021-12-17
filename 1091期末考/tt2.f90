implicit none
integer i
integer j
real p(12,4)   ! 12欄4列
real sum, sum2
real avg1, avg2, avg3, avg4
real avg5, avg6, avg7, avg8
real avg9
real sigma

!----------------------
open(1,file='a1.txt',form='formatted')

j=0
10 continue
   j=j+1
   read(1,*,end=20) (p(i,j),i=1,12)
   goto 10
20 continue

!----------------------
sum = 0
do i=1,12
   sum = sum + p(i,4)
enddo

avg1 = sum/12.

print*,'(1) Annual average of CO2 in 2017 =',avg1

!-----------------------
sum = 0
do i=1,12
   sum = sum + p(i,3)
enddo

avg2 = sum/12.

print*,'(2) Annual average of CO2 in 2018 =',avg2

!-----------------------
sum = 0
do i=1,12
   sum = sum + p(i,2)
enddo

avg3 = sum/12.

print*,'(3) Annual average of CO2 in 2019 =',avg3

!-----------------------
sum = 0
do i=1,12
   sum = sum + p(i,1)
enddo

avg4 = sum/12.

print*,'(4) Annual average of CO2 in 2020 =',avg4

!-----------------------
sum = 0
do j=1,4
   sum = sum + p(1,j)
enddo

avg5 = sum/4.

print*,'(5) Jan average of CO2 during 2017-2020 =',avg5

!-----------------------
sum = 0
do j=1,4
   sum = sum + p(4,j)
enddo

avg6 = sum/4.

print*,'(6) Apr average of CO2 during 2017-2020 =',avg6

!-----------------------
sum = 0
do j=1,4
   sum = sum + p(7,j)
enddo

avg7 = sum/4.

print*,'(7) Jul average of CO2 during 2017-2020 =',avg7

!-----------------------
sum = 0
do j=1,4
   sum = sum + p(10,j)
enddo

avg8 = sum/4.

print*,'(8) Oct average of CO2 during 2017-2020 =',avg8

!-----------------------
sum = 0
do j=1,4
   do i=1,12
      sum = sum + p(i,j)
   enddo
enddo

avg9 = sum/48.

print*,'(9) Average of all CO2 during 2017-2020 =',avg9

!-----------------------
sum2 = 0   ! sum2為離均差平方和
do j=1,4
   do i=1,12
      sum2 = sum2 + (  p(i,j)-avg9  )**2
   enddo
enddo

sigma = (sum2/48.)**(1./2.)   ! n有48項、real開根號要小心

print*,'(10) Standard deviation of CO2 during 2017-2020 =',sigma



stop
end
