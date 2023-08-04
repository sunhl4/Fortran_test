program ex0713
implicit none
    integer :: i
    integer :: a(5)
    forall (i = 1:5)
        a(i) = 5
    end forall
    write(*,*)a 
    forall (i = 1:5)
        a(i) = i 
    end forall 
    write(*,*)a 
    stop
end