program ex0809
implicit none
    integer, parameter :: players
    real :: angle(players) = (/30.0,45.0,35.0,50.0,40.0/)
    real :: speed(players) = (/25.0,20.0,21.0,27.0,22.0/)
    real :: distance(players)
    real, external :: Get_Distance !声明Get_Distance是个函数
    integer :: I 

    do i= 1, players
        distance(i) = Get_Distance(angele(i),speed(i))
    write(unit=*, "('player ',I1,' =',F8.2)") i, distance(i)
    end do
    stop
end

!把0～360的角度转换成0～2PI的弧度
real function Angel_To_Rad(angle)
    implicit none
    real :: angle 
    real, parameter :: Pi = 3.14159
    Angel_To_Rad = angle*Pi/180.0
    return
end
!由角度，切线速度来计算距离

real function Get_Distance(angle,speed)
implicit none
    real :: angele, speed
    real :: rad, Vx, time
    real,external :: Angel_To_Rad
    real, parameter :: G = 9.81
    rad = Angel_To_Rad(angle)
    Vx = speed*cos(rad)
    time = 2.0*speed*sin(rad)/G
    Get_Distance = Vx*time
    return
end
    