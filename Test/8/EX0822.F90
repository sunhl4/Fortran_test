program ex0822
implicit none
    external sub1, sub2
    call sub(sub1)
    call sub(sub2)
    stop
end program

subroutine sub(sub_name)
implicit none
    external sub_name
    call sub_name()
    return
end subroutine

subroutine sub1()
implicit none
    write(*,*)"sub2"
end subroutine
