program escape
    !Accepts as input an intial velocity v
    !Prints max height attained,
    !   if object does not escape Earth
    ! Prints final escape velocity, vfinal,
    !   if object escapes

    !Parameters
    !   g = acceleration of gravity near Earth's surface
    !       in meters / sec **2 (m/s**2)
    !   RE = radius of the Earth (in meters)

    implicit none
    real :: v, h, vfinal
    real, parameter :: g = 9.80, RE = 6.366e6

    read *, v
    print *, "Intital velocity of object =", v, "m/s"
    if (v ** 2 < 2 * g * RE) then
        h = RE / (1 - v **2 / (2 * g * RE))
        print *, "The object attains a height of", &
                  h -RE, "m"
    print *, "above the Earth's surface" // &
             "before returning to Earth."
    else if (v ** 2 == 2 * g * RE) then 
        print *, "This velocity is the escape " // &
                  "velocity of the Earth."
        print *, "The object just barely escapes " // &
                 "from Earth's gravity."
    else 
        vfinal = sqrt (v ** 2 - 2 * g * RE)
        print * , "The object escapes with velocity", &
                    vfinal, "m/s."
    end if 
end program escape 