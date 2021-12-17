implicit none
integer r   ! km
parameter (r=6371)
real pi
real s
real mass
real density
real v

!--------------------------
pi = acos(-1.)
s = 4.*pi*float(r**2)   ! 球體表面積=4*π*(r^2)
print*,'Earth surface area (m)=',s*1000000   ! 半徑換成meter


! 大氣對地表的總力=大氣總壓力*地球表面積 mg=ps, then m=ps/g
mass = 101325*(s*1000000)/9.8
print*,'Total mass of the atmosphere (kg)=',mass


! 密度(g/cm^3)=質量(g)/體積(cm^3)
v = ( 4*pi*r*r*r/3 ) * (1E+15)  ! 球體體積公式、km^3換cm^3
density = 5.972E+027/v   
print*,'Earth density (g/cm^3)=',density


stop
end

