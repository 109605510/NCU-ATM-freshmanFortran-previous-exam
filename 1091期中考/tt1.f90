!!! 由多個矩形近似"曲線y=x^4-3x^3-4x^2"與x軸所夾之面積

implicit none
integer i
integer plon
   parameter (plon=70)
real x, y
real dx
real xl
   parameter (xl=-2.)
real xr
   parameter (xr=5.)
real area
!------------------
dx = (xr-xl)/float(plon)
area = 0
do i=1,plon
   x = xl + 0.5*dx + float(i-1)*dx
   y = x**4 - 3.*x**3 - 4.*x**2
   area = area + dx*abs(y)   !y的絕對值為曲線至x軸長度
enddo

print*,'area=',area

stop
end
