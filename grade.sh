#!/bin/bash
# 任務達成評分系統：輸入前四題的結果（Y/N），達標即給 20 分
q=("一、Fortran 程式編譯並成功輸出結果" "二、三次隨機驗證皆正確" "三、Git 原版 commit + 註解版 commit" "四、推送到 GitHub")
total=0
for i in 0 1 2 3; do
  read -p "${q[$i]} 是否達成？(Y/N) " a
  if [[ "$a" =~ ^[Yy]$ ]]; then echo "  → 達標 +20"; total=$((total+20)); else echo "  → 未達標 +0"; fi
done
echo "五、評分系統本身完成 +20"; total=$((total+20))
echo "總分：$total / 100"
