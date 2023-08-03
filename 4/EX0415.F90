! This line is no use
program ex0415
    character(len=20) string
    character(len=5)  substring
    string = "Have a nice day."
    substring = "nice"
    write(unit=*, fmt=*) ichar("A")
    write(*,*) char(65)
    write(*,*) len(string)
    write(*,*) len_trim(string)
    write(*,*) index (string,substring)
end


