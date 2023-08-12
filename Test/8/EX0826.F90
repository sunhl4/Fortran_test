program ex0826
implicit none
    interface 
        subroutine sub(a, b)
        implicit none
        integer :: a 
        integer, optional :: b
        end subroutine sub
    end interface
    call sub(1)
    call sub(2, 3)
    stop
end program ex0826

subroutine sub(a, b)
    implicit none
    integer :: a 
    integer, optional :: b
    if (present(b)) then
        write(*,"('a =',I3,' b = ',I3)") a, b
    else
        write(*,"('a =',I3,' b = unknow')") a 
    end if 
    return
end subroutine sub
