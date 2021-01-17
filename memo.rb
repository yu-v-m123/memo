require "csv"
puts "1.新規でメモを作成 2.既存のメモを編集する"

number = gets.to_i

if number == 1
  puts "拡張子を除いたファイル名を入力してください"
  new_name = gets.chomp.to_s
  p "メモしたい内容を入力してください"
  p "完了したらCtrl + Dを押下してください"
  CSV.open("#{new_name}.csv","w") do |csv|
  new_memo = readlines
  csv << new_memo
  end

elsif number == 2
  puts "編集したいファイル名を拡張子を除いて入力してください"
  edit_name = gets.chomp.to_s
  p "追記したい内容を入力してください"
  p "完了したらCtrl + Dを押下してください"
  CSV.open("#{edit_name}.csv","a") do |csv|
  edit_memo = readlines
  csv << edit_memo
  end

else
  puts "正しい値ではありません"
end