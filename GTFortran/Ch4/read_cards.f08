! S.124 
! reads in card numbers and prints them
program read_cards
    implicit none
    integer, dimension(20000) :: lost_card 
    integer :: number_of_lost_cards, i, iostat_var 

    do i = 1, 20000
        read(unit=*, fmt=*, iostat=iostat_var) lost_card(i)
        if(iostat_var < 0) then 
            number_of_lost_cards = i - 1 
            exit
        end if 
    end do

    print "(4i8)",  lost_card(1:number_of_lost_cards)

end program read_cards
