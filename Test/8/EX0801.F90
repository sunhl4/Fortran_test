program ex0801
implicit none
    call message()
    call message()
    stop
end

!子程序message
subroutine message()
    implicit none
    write(*,*)"Hello."
    return
end
