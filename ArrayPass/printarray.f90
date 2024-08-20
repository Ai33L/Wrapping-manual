module printmod
implicit none
public
contains
subroutine printarray(Q)
    implicit none
    real (kind = 8), intent(inout) :: Q(5, 2)
    integer :: i, j
    do i = 1, 2
        do j = 1, 5
            write(*, fmt = "(TL10, F10.2)", advance = "no") Q(j, i)
        end do
        write(*, *)
    end do
end subroutine printarray
end module printmod
