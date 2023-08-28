module typedef
    type student
        integer Chinese, English, Math
    end type 
end module
program ex0907
use typedef
implicit none
    type(student) :: s
    character(len=80) :: filename = "data.txt"
    integer, parameter :: fileid = 10
    logical alive
    integer :: error
    integer :: no 

    inquire(file = filename, exist = alive)
    if (.not. alive)then
        write(unit=*, fmt=*) trim(filename). " doesn't exist."
        stop
    end if 

    open (fileid, file=filename)
    do while (.true.)
        read(fileid, "(5XI2,/,5xi3,6xi3,6xi3)",  iostat = error)no, stat
        if (error/=0)exist
        write(unit=*, "('请输入'I2'号同学的中文， 英文及数学成绩')")i
        read(*,*)s(i)%Chinese, s(i) %English, s(i)%Math
        end do 
        close
        stop
    end
     
        
        
