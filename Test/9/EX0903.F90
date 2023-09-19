program ex0903

implicit none
    character(len=20) :: filename = "ex0903.f90"
    logical alive
    inquire(file = filename, exist = alive) 
    ! inquire 查询filename字符串内包含的文件名是否存在
    ! 如果存在则alive的值为.TURE.
    if (alive) then
        write(*,*) filename, " exist."
    else
        write(*,*) filename, " doesn't exist."
    end if 
    stop
end

