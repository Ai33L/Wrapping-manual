subroutine arraywrap(Q) bind(c)
    use iso_c_binding, only: c_int, c_double
    use printmod, only: printarray
    implicit none
    real(c_double), intent(inout) :: Q(5,2)
    call printarray(Q)
end subroutine arraywrap