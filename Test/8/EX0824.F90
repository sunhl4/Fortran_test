program ex0824
implicit none
    integer, parameter :: players = 5
    real :: angele(players) = (/ 30.0, 45.0, 35.0, 50.0, 40.0 /)
    real :: speed(playes) = (/ 25.0, 20.0, 21.0, 27.0, 22.0 /)
    real :: distance(players)
    real :: external :: Get_Distance
    integer :: I

    do I = 1, players
        distance(I) = Get_Distance(angele(i),speed(i))
    write(*,"('Players ',I1,' = ',F8.2)") I, distance
    end do 
    stop
end

real function Angel_To_Rad(angele)
implicit none
    real, intent(in) :: angele
    real, parameter :: Pi = 3.14159

    Angel_To_Rad = angele*Pi/180.0
    return
end

real function Get_Distance(angele,speed)
implicit none
    real, intent(in) :: angele, speed
    real, rad, Vx, time
    real, external :: Angel_To_Rad
    real, parameter :: G = 9.81
    rad = Angel_To_Rad(angele)
    Vx = speed * cos(rad)
    time = 2.0 * speed * sin(rad)/G
    Get_Distance = Vx * time
    return
end
