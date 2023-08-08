program ex0817
implicit none
    integer, parameter :: size = 5
    integer :: s = size
    integer :: a(size) = (/ 1,2,3,4,5 /)
    call UseArray1(a,size)!把常量输入做数组大小
    call UseArray1(a,s) !把一般变量s输入做数组大小
    call UseArray2(a) !不输入数组大小
    call UseArray3(a)
    stop
end

subroutine UseArray1(num, size)
implicit none
    integer :: size
    integer :: num(size) !输入数组大小可用变量来赋值
    write(*,*)num
    return
end

subroutine UseArray2(num)
implicit none
    integer :: num(*) !不赋值数组大小
    integer :: I
    write(*,*)(num(i),i =1,5)
    !如果输入的数组大小小于5，write在执行时会出现错误
    return
end

subroutine UseArray3(num)
implicit none
    integer :: num(-2:2)!可以重新定义数组的坐标范围
    write(*,*)num(0)
    return
end
