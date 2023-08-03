program ex0613
implicit none
    integer :: i
    integer :: strlen 
    integer, parameter :: key = 2
    character(len=20) :: string

    write(*,*) "Enconde string:"
    read(*,*) string
    strlen = len_trim(string) ! 取得字符串实际的长度

    do i = 1, strlen
        string(i:i) = char(ichar(string(i:i))-key)
    end do
    write(*,"('sting:', A20)") string
    stop
end