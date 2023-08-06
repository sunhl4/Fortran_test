program ex0801
implicit none
    call sub1()
    call sub2()
    stop
end

subroutine sub1()
implicit none
    write(*,*)"This is sub1"
    call sub2()
    return
end subroutine sub1

subroutine sub2()
implicit none
    write(*,*)"This is sub2"
    return
end subroutine sub2
