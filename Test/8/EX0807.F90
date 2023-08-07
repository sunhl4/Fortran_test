program ex0807
implicit none
    real :: a = 1
    real :: b = 2
    real, external :: add ! 声明add是个函数而不是变量

! 调用函数add， 调用函数不必使用call命令
    write(*,*)add(a,b)
    stop
end

function add(a,b)
implicit none
    real :: a, b 
    real :: add !可以使用 real function add(a,b)来代替
    !add 跟函数名称一样，这里不是用来声明变量，是声明这个函数会返回的数值类型
    add = a + b 
    return 
end
