program sum_to_n
  implicit none
  integer(kind=8) :: n, i, total
  read(*,*) n
  total = 0
  do i = 1, n
    total = total + i
  end do
  print '(A,I0,A,I0)', 'Sum of 1 to ', n, ' = ', total
end program sum_to_n
