puts <<~TEXT
      旅行プランを選択して下さい。

      1. 沖縄旅行（10000円）
      2. 北海道旅行（20000円）
      3. 九州旅行（15000円）

    TEXT

plans = [
  {name: "沖縄旅行", price: 10000},
  {name: "北海道旅行", price: 20000},
  {name: "九州旅行", price: 15000},
]

while true
  print "プランの番号を選択 > "
  selected_plan_num = gets.to_i
  break if (1..3).include?(selected_plan_num)
  puts "1~3の番号を入力してください"
end
chosen_plan = plans[selected_plan_num - 1]

puts "#{chosen_plan[:name]}ですね。何名で予約されますか？"
while true
  print "人数を入力 > "
  number_of_people = gets.to_i
  break if number_of_people >= 1
  puts "1以上を入力してください"
end

puts "#{number_of_people}名ですね。"

total_price = chosen_plan[:price] * number_of_people
if number_of_people >= 5
  puts "5名以上ですので10%割引となります。"
  total_price *= 0.9
end
puts "合計料金は#{total_price.floor}円になります。"
