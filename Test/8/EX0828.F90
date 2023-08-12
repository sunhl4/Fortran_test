program ex0828
implicit none
    integer :: n
    integer, external :: fact
    write (*,*) 'N = '
    read(*,*)N
    write(*,"(I2,'! = ',I8)")n,fact(n)
    stop
end

recursive integer function fact(n) result(ans)
implicit none
integer, intent(in) :: N

    if (n<0)then
        ans = -1
        return
    else if (n<=1) then
        ans = 1
        return
    end if
    ans = n * fact(n-1)
    return
end

