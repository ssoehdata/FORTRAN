program vowel
    implicit none 

    character :: letter
    !character :: a 
    
    print *, "Enter an Uppercase letter."
    read *, letter

    if (letter == "A") then 
        print *, "VOWEL"     
    else if (letter == "E") then 
            print *, "VOWEL"        
        else if  (letter == "I") then
            print *, "VOWEL"            
        else if   (letter == "O") then 
            print*,"VOWEL"                
        else if   (letter == "U") then 
            print *, "VOWEL"                                     
        else
            print *, "CONSONANT"
                    
    end if
end program vowel

