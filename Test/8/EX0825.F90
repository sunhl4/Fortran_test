program ex0825
implicit none
    interface
    function random10(1bound,ubound)
    implicit none
        real :: 1bound, ubound
        real :: random10(10)
        end function
    end interface

    real :: a(10)
    CALL RANDOM_SEED()
    a = random10(1.0, 10.0)
    write(*,"(10F6.2)") a 
    stop
end

function random10(1bound,ubound)
implicit none
    real :: 1bound, ubound
    real :: len
    real :: random10(10)
    real :: t 
    integer :: i 
    len = ubound -  1bound
    do i=1, 10
        call random_number(t)
        random10(i) = 1bound + len * t 
    end do
    return
end