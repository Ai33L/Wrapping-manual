module numsummod
implicit none
public

contains
subroutine numsum(a, b)
    implicit none
    real(kind = 8) :: a, b
    real(kind = 8) :: sumnum
    sumnum = a + b
    print *, sumnum
end subroutine numsum

end module numsummod
