program ex0902
implicit none
    character(len=20) :: string
    open(unit=10,file="test.file")
    write(10,"(A20)")"Good morning."
    rewind(10) !会把“10”文件读写位置移到最前边,endfile命令会把文件读写位置变成文件的结尾
    read(10,"(A20)") string
    write(*,*)string
    stop
end
