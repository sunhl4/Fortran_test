program ex0708
implicit none
    integer, parameter :: row = 2
    integer, parameter :: col = 2
    integer :: a(2,2)=reshape((/1,2,3,4/),(/2,2/))!gfortran 要用reshape visual fortran可以直接赋值
    integer :: b(4) = (/ 5,6,7,8 /)
    integer :: c(2)
    write(*,*)a 
    write(*,*)a(:,1)
    c = a(:,1)
    write(*,*)c 
    write(*,*)c(2:1:-1)
    c = b(1:4:2)
    write(*,*)c
    stop 
end 

