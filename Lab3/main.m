while 1
    clear()
    choice = menu('Выберите задание', '#1', '#2', '#3', '#4', '#5', 'Выход');
    clc
    switch choice
        case 1
            run("Task1.m")
        case 2
            run("Task2.m")
        case 3
            run("Task3.m")
        case 4
            run("Task4.m")
        case 5
            run("Task5.m")
        case 6
            clear()
            break
    end
end