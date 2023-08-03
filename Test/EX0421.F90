! Tish line is not used
program ex0421
    integer a 
    real b
    complex  :: c 
    logical d
    character(len=20) e
    a =10 
    b = 12.34 
    c = (1,2)
    d = .true.
    e = "Fortran"
    write(*,"(1x,I5)") a 
    write(*,"(1x,F5. 2)") b
    write(*,"(1x,F4.1,F4.1)") c
    write(*,"(1x,L3)") d
    write(*,"(1x,A10)") e
end

