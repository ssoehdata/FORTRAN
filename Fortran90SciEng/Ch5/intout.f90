! Integer Ouput the "I" descriptor 
program inputoutput 
    
    INTEGER :: Number = 3, L = 5378, Kappa = -12345

    PRINT '(1X, 2I5, I7, I10)', Number, Number - 3, L, Kappa 
    PRINT '(1X, 2I5.2, I7, I10.7)', Number, Number -3, L, Kappa
    PRINT '(1X, 2I5.0, I7, I10)', Number, Number -3, L, Kappa
    ! Alternate style
    PRINT 30, Number, Number -3, L, Kappa
    30 FORMAT (1X, 2I5, I7, I10)

end program inputoutput