program ex0806
implicit none
    integer, parameter :: players =5
    real :: angle(players) = (/30.0,45.0,35.0,50.0,40.0/)
    real :: speed(players) = (/25.0,20.0,21.0,27.0,22.0/)
    real :: distance(players)
    integer :: I 
    do I = 1, players
        call Get_Distance(angle(1),speed(i),distance(i))
    write(*,"('players ',I1, ' =',F8.2)")I , distance(i)
    end do
    stop
end
!把0～360 的角度转换成0～2PI的弧度
subroutine Angel_To_Rad(angle,rad)
    implicit none
    real :: angele, rad
    real, parameter :: Pi = 3.14159

    rad = angele*PI/180.0
    return
end
!由角度、切线速度来计算投射距离
subroutine Get_Distance(angle,speed,distance)
implicit none
    real :: angle , speed
    real :: distance
    real :: rad,Vx,time !内部使用
    real, parameter :: G = 9.81

    call Angel_To_Rad(angele, rad)
    Vx = speed*cos(rad)/G
    distance = Vx * time
    rerurn 
end
