program ex012

    implicit none
    integer, pointer :: p
    allocate(p)
    p = 100
    write(*,*)p
    stop

end program ex012
