module hellomod
use, intrinsic :: iso_fortran_env
implicit none
public

contains
subroutine printing
        print *, 'Hello World!'
        return
    end subroutine
end module hellomod

program hellomain
    use hellomod, only: printing
    call printing
end program hellomain