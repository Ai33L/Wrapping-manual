subroutine wrapping() bind(c)
    use hellomod, only: printing
    call printing
end subroutine wrapping
