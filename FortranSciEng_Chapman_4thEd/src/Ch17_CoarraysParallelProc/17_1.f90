!    Simple proof of concept program
!       with ifort: 
!       ifort /Qcoarray:shared /Qcoarray-num-images:6
!       17_1.f90 -o 17_1
!       - produces (win) 17_1.exe 
!       
PROGRAM hello_Coarrays
    WRITE (*,*) 'Hello from image ', this_image(), 'out of ', &
        num_images(), 'images.'

END PROGRAM hello_Coarrays
