program kindparam
    print *, kind(0)
    print *, kind(0.0)
    print *, kind((0.0, 0.0))
    print*, kind(.false.)
    print*, kind("a")
    print*, selected_real_kind(8, 70)
    print*, selected_int_kind(8)
end program kindparam