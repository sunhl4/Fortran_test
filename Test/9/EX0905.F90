program ex0905
implicit none
    character (len=79) :: filename
    character (len=79) :: buffer
    integer, parameter :: fileid = 10
    integer :: status = 0
    logical :: alive

    write (*,*) "Filename"
    read (*,"(A79)") filename
    inquire (file = filename, exist = alive)

    if (alive) then
        open (unit = fileid, file = filename,&
            access = "sequential", status = "old")
        do while (.TRUE.)
            read (unit = fileid, fmt = "(A79)", iostat = status) buffer
            if (status/=0) exit
            ! status=0 表示文件读取在正常状态，>0 读取发生意外或错误；<0 读取到了终点
            write(*,"(A79)") buffer
        end do
    else
        write(*,*)TRIM(filename), " doesn't exist."
    end if 
    stop

end
