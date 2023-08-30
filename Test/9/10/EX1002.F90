program ex012

    implicit none
    ! integer, pointer :: p
    ! allocate(p)
    ! p = 100
    ! write(*,*)p
    ! stop
    character(len = 79) :: min
    character(len = 79) :: spr
    character(len = 79) :: pur 
    min = "mineral water is: 矿泉水"
    spr = "spring water is also: 矿泉水"
    pur = "purified water is : 纯净水"
    write(*, fmt=*) min
    write(*, fmt=*) spr
    write(*, fmt=*) pur
    
    


end program ex012
