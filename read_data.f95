program test
    implicit none
    integer :: nlines,i,io
    real, dimension(:), allocatable :: x,y

    nlines = 0 
    OPEN (1, file = 'data_lagrange.txt') 
    DO
        READ(1,*,iostat=io)
        IF (io/=0) EXIT 
        nlines = nlines + 1 
    END DO 
    CLOSE (1)

    allocate(x(nlines) ,y(nlines))
    open(2,file='data_lagrange.txt')
    do i = 1,nlines
        read(2,*) x(i),y(i)
        write(*,*) x(i),y(i)
    end do
    close(2)
end program