! running this returns equivalent of dir command in windows  / ls cmd in linux
program exec_command 

    implicit none 
    integer :: stop_code 
    call execute_command_line("dir")
    call execute_command_line & 
        ("stop_test.exe", exitstat=stop_code)
    print *, stop_code 

end program exec_command 
