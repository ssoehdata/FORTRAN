! Example 5.1 



        
       ! Free Format is specified by the second asterisk in the second READ and WRITE statements
       READ(*,*)  
       WRITE(*,*) 
       ! Formats can be used in either reading or writing 
        
        WRITE (*,100) i, result 
        100 FORMAT ('The result for iteration ', I3, ' is ', F7.3)
        
        ! I3 and F7.3 are the 'format descriptors' associated with variables
        ! i and result respectively.


        WRITE (*,100) i, x              ! Format in FORMAT statement 
        100 FORMAT (1X,I6,F10.2) 

        CHARACTER(len=20) :: string 
        string = '(1X,I6,F10.2)'
        WRITE(*,string) i, x 
        WRITE (*, '(1X,I6,F10.2)') i, x !Format in character constant 



       ! Control Characters in Printer Output 

       ! The following FORMAT statements illustrate the use of the control character.
       ! They will print a heading at the top of a new page, skip one line, and then 
       ! print column headings for Table 5-1 below it: 

       WRITE  (*,100)
       100 FORMAT ('1','This headingis at the top of a new page.')
       WRITE(*,110)
       110 FORMAT ('0',' Control Character  Action ')
       WRITE (*,120)
       120 FORMAT (' ',' =================  ====== ')

