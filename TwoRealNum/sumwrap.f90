subroutine sumwrapper(a, b) bind(c)
    use iso_c_binding, only: c_int, c_double
    use numsummod, only: numsum
    implicit none
    real(c_double), intent(in), value :: a, b
    call numsum(a, b)
end subroutine sumwrapper
