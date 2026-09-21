! simple program demonstrating coarrays

program hello 

    implicit none 

    print *, "Hello from", this_image(), & 
        "out of", num_images(), "images()", "images."

end program hello 

