! 程式名稱：sum_to_n —— 計算 1 + 2 + ... + N 的總和
program sum_to_n
  ! 強制所有變數都必須明確宣告，避免隱式型別錯誤
  implicit none
  ! 宣告 64 位元整數：n 為上限、i 為迴圈計數器、total 為累加總和（64 位元可避免大 N 時溢位）
  integer(kind=8) :: n, i, total
  ! 從標準輸入讀取使用者輸入的 N
  read(*,*) n
  ! 將總和初始化為 0
  total = 0
  ! 迴圈：i 從 1 跑到 n
  do i = 1, n
    ! 把目前的 i 加進總和
    total = total + i
  ! 迴圈結束
  end do
  ! 以指定格式輸出結果：字串 + 整數 N + 字串 + 整數總和
  print '(A,I0,A,I0)', 'Sum of 1 to ', n, ' = ', total
! 程式結束
end program sum_to_n
