module func
contains

function getmin(p)
    implicit none
    integer, pointer :: p(:)
    integer, pointer :: getmin
    integer :: i, s
    integer :: min

    s = size(p,1) !查询数组的大小
    min = 2**30
    do i = 1, s
        if (min > p(i)) then
            min = p(i)
            getmin => p(i)
        end if 
    end do 
    return
end function
end module

program ex1007
implicit none
    use func
    integer, target :: a(8) = (/ 10, 15, 8, 25, 9, 20, 17, 19 /)
    integer, pointer :: p(:) 
    p => a(1:8:2)
    write(*,*)getmin(p)
    stop
end

