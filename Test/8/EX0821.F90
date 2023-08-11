program ex0821
implicit none
    real, external :: func
    real, intrinsic :: sin

    call ExecFunc(func)
    call ExecFunc(sin)

    stop
end program
subroutine ExecFunc(f)
    implicit none
    real, external :: f 
    write(*,*)f(1.0)
    return
end

real function func(num)
implicit none 
    real :: num
    func = num*2
    return
end function
 
