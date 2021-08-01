# puts <<~TEXT
#        やんばるCODE学習メモ
#        HP制作

#        SEO対策として、以下のような決まりごとを守っていないと、クローラーからの評価が下がり、検索上位に表示されない。
#        <H1>大見出し
#        <H2>中見出し
#        <p>段落
#        <Table>表   <H3>小見出し
#        <li>リスト


# URI 
# URL　
# URN　名前付き、永続的

# URLを用いてWebサーバーにコンテンツを要求する
# https://railsguides.jp/getting_started.html 

# AWS 
# Webサーバ　Nginx 
# アプリケーションサーバ　Unicorn

# Stack Overflow
# Github issues

# 20分調べてわからなかったら質問する
# ・やりたいこと
# ・現在の状況
# ・試したこと

# エラーをアウトプット→ブログ・Qiita

# READEMEに最低限書くべきこと
# ・プロジェクトのタイトル
# ・プロジェクトの概要説明
# ・使用言語、環境
# ・使い方
# ・インストール方法
# ・テスト方法
# ・デプロイ方法

# エラー解決力を上げる方法
# →人に教えると理解力・定着率が上がる

# まとめ
# １．エラー解決が仕事
# ２．答えは必ずある
# ３．ログをよく読む
# ４．仮説を立てる
# ５．検証する
# ６．検索する
# ７．質問する

#      TEXT

# puts <<~MENDAN
#        １．アウトプットのアピール
#        技術ブログを作成する
#        Quiitaでも評価される
#        Twitterは？
#        ポートフォリオの技術力だけでは未経験者は届かないので、技術力よりも、面接まで行く人はWantedryの記載をしっかりして、これまで、どういった事をやってきたかを明確に書いている



# ぺじゅん：教員　３年目　初学者
# とうやま　Stoyama：ライブ　初学者
# おおしろあみ　ami.o：フロントエンジニア
# はやと：学習経験あり、既にRails基礎終了→チーム開発へ
# Yoshiaki Ohashi：飲食　初学者

# 進捗とか学習したこと、悩み、質問を

#      MENDAN

# puts "hello"
# puts 3 + 4
# puts "1"
# p "1"
# puts "私の"
# puts "名前は"
# puts "吉崎です"
# puts "---------"
# print "私の"
# print "名前は"
# print "吉崎です"

# puts <<~TEXT

#        こんにちは

#        吉崎です

#        宜しくお願い致します！

#        SELECT * FROM USERS

#      TEXT

# users = ["saitou", "taira", "yamada", "hayashi"]

# users.each do |user|
#   puts user
# end

# puts "---------"
# puts "Q8"

# l = %w(ruby php python javascript)
# p l.map(&:capitalize)
# p l.map(&:upcase)

# programming_languages = %w(ruby php python javascript)

# # 以下に回答を記載
# programming_languages.map!(&:capitalize)
# upper_case_programming_languages = programming_languages.map(&:upcase)
# # 以下は変更しないで下さい
# p programming_languages
# p upper_case_programming_languages

# puts "----------"
# names = ["田中", "佐藤", "佐々木", "高橋"]
# names.each.with_index(1) do |name, i|
#   puts "会員No.#{i} #{name}さん"
# end
# foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
# foods.each do |food|
#   if food.include? "うに"
#     puts "#{food}は好物です"
#   else
#     puts "#{food}はまぁまぁ好きです"
#   end
# end
# p

# puts "----------"
# puts "Q11"
# puts "ユーザーの趣味一覧"
# sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
# sports.flatten!.uniq!
# sports.each.with_index(1) do |sport, i|
#   puts "No#{i} #{sport}"
# end

# #Hash
# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 246, "c" => 300 }
# h3 = { "b" => 357, "d" => 400 }
# p h1.merge!(h2, h3) { |key, v1, v2| v1 }
# #=> {"a"=>100, "b"=>200, "c"=>300, "d"=>400}
# p h1                 #=> {"a"=>100, "b"=>200, "c"=>300, "d"=>400}

# puts "----------"
# puts "Q14"
# data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }
# p data.keys



# ---オブジェクト指向---
# class Car
#   # colorの値を表示するメソッド（値を取り出すのでゲッターと呼ばれている）
#   def color
#     @color
#   end

#   # @colorに値を代入（変数に値を設定することをセッターという）
#   def color=(color)
#     # インスタンス変数
#     @color = color
#   end
# end

# # クラスをインスタンス化[クラスメソッド]
# car = Car.new
# # Carクラスのcolorにredを代入（セッターを利用）
# car.color = "red"
# # Carクラスのcolorに格納されたredの値を取得（ゲッターを利用）[インスタンスメソッド]
# puts car.color


# # ---initialiezeメソッド---
# class Car
#   # initializeメソッドで初期値を設定
#   def initialize
#     @color = "red"
#   end

#   def color
#     @color
#   end
  
#   def color=(color)
#     @color = color
#   end
# end

# # インスタンス化された瞬間にinitializeメソッドが呼び出されcolorにredが代入される
# car = Car.new

# # colorにredを代入する記述が要らなくなる
# # car.color = "red"

# # color を呼び出すとredが表示される
# puts car.color

# # ---initialiezeメソッドで引数を受け取れるようにする---

# class Car
#   def initialize(color)
#     @color = color
#   end

#   # セッター
#   def color
#     @color
#   end

#    # ゲッター
#   def color=(color)
#     @color = color
#   end
# end

# # インスタンス化する際にinitializeメソッドに値を渡す
# car1 = Car.new("red")
# car2 = Car.new("green")
# car3 = Car.new("blue")

# # colorを呼び出すと代入された値が表示される
# puts car1.color
# puts car2.color
# puts car3.color

# # ---アクセサ（セッター、ゲッター）---
# class Car
#   # ゲッター
#   attr_reader :color
#   # セッター
#   attr_writer :color
#   def initialize(color)
#     @color = color
#   end
# end

# class Car
#   # セッター＆ゲッター
#   attr_accessor :color
#   def initialize(color)
#     @color = color
#   end
# end

# class Car
#   attr_accessor :color
#   def initialize(color)
#     @color = color
#   end
# end

# car1 = Car.new("red")
# car2 = Car.new("green")
# car3 = Car.new("blue")

# puts car1.color
# puts car2.color
# puts car3.color


# ---price,capacityを追加---
# class Car
#   attr_accessor :color, :price, :capacity
#   def initialize(color, price, capacity)
#     @color = color
#     @price = price
#     @capacity = capacity
#   end
# end

# car1 = Car.new("red", 1000021, 4)
# car2 = Car.new("blue", 1002000, 20)
# car3 = Car.new("green", 3000000, 6)

# puts car1.color
# puts car1.price
# puts car1.capacity

# puts car2.color
# puts car2.price
# puts car2.capacity

# puts car3.color
# puts car3.price
# puts car3.capacity


# class User

#   # コードを追加
#   attr_accessor :name, :age, :gender
#   def initialize(params)
#     @name = params[:name]
#     @age = params[:age]
#     @gender = params[:gender]
#   end

#   def info
#     puts <<~TEXT
#     名前:#{@name}
#     年齢:#{@age}
#     性別:#{@gender}
#     TEXT
#   end
# end
#   user1 = User.new(name: "神里", age: 32, gender: "男")
#   user2 = User.new(name: "あじー", age: 32, gender: "男")

#   user1.info
#   puts "-------------"
#   user2.info


# class UserQ20
#   # 以下に回答を記載
#   attr_accessor :name, :age
#   def initialize(params)
#     @name = params[:name]
#     @age = params[:age]
#   end
# end

# users = [ UserQ20.new(name: "たま", age: 3) ]
# p users[0].name

# input_line = gets
# def calc
#   s = gets.chomp.to_i
#   s * 1500
# end
# puts calc()


# paiza D ----------------------
# def text
#   s = gets.chomp.to_s
#   i = s.length
#   n = i + 2
#   puts ("+" * n)
#   puts "+#{s}+"
#   puts ("+" * n)
# end
# text()


# def calc
#   n = gets.chomp.to_i
#   m = gets.chomp.to_i
#   n * m
# end
# puts calc()

# def calc
#   n = gets.chomp.to_i
#   "*" * n
# end

# puts calc()

# paiza C -----------------------
# require "bigdecimal/util"

# # 生鮮食品量、販売割合（％）、お惣菜の販売割合（％）を標準入力の配列を取得（bigdecimal型）
# food = gets.split.map(&:to_d)

# # 売れ残りの割合
# unsold = (100 - food[1]) * 1 / 100
# # お惣菜が売れ残った割合
# side_dish_unsold = (100 - food[2]) * 1 / 100
# # 売れ残った量を計算
# unsold_amount = (food[0] * unsold) * side_dish_unsold

# puts unsold_amount.to_f


## piza C -------------------------
# line = gets.split("")

# line.each_with_index { |word, i|
#   case word
#   when "A"
#     line[i] = 4
#   when "E"
#     line[i] = 3
#   when "G"
#     line[i] = 6
#   when "I"
#     line[i] = 1
#   when "O"
#     line[i] = 0
#   when "S"
#     line[i] = 5
#   when "Z"
#     line[i] = 2
#   end
# }
# puts line.join.chomp

# info = gets.chomp.to_s
# puts info.gsub(/A|E|G|I|O|S|Z/,
#                "A" => "4",
#                "E" => "3",
#                "G" => "6",
#                "I" => "1",
#                "O" => "0",
#                "S" => "5",
#                "Z" => "2")


# # 株の問題----------------------------
# N, c_1, c_2 = gets.split(" ").map(&:to_i)

# prices = []
# stock = 0
# profit = 0

# N.times do
#   prices.push(gets.to_i)
# end

# i = 0
# prices.each { |p|
#   i = i + 1
#   if i < N
#     if p <= c_1
#       stock += 1
#       profit -= p
#     elsif p >= c_2
#       profit += stock * p
#       stock = 0
#     end
#   else
#     profit += stock * p
#   end
# }

# puts profit

# # フミヤさんの回答 
# # 初期値 ===================================
# @profit = 0 # 利益
# @stock_holdings = 0 #保有株の数
# days, min_stock_price, max_stock_price = gets.split.map(&:to_i) # 日数/最安値/最高値
# # メソッド ===================================
# # 株を売る
# def sell(stock_price)
#   if @stock_holdings > 0
#     @profit += @stock_holdings * stock_price
#     @stock_holdings = 0
#   end
# end

# # 株を買う
# def buy(stock_price)
#   @stock_holdings += 1
#   @profit -= stock_price
# end

# # 実行 ===================================
# days.times do |i|
#   # 当日の株価
#   stock_price = gets.to_i
#   day = i + 1
#   if days == day # 最終日の場合
#     # 株を売る
#     sell(stock_price)
#     break
#   end
#   case
#   when stock_price <= min_stock_price
#     # 株を買う
#     buy(stock_price)
#   when stock_price >= max_stock_price
#     # 株を売る
#     sell(stock_price)
#   end
# end
# # 出力
# puts @profit

# # 球が箱に収まる問題--------------------
# # 普通に記述した場合
# box_num, ball_radius = gets.split.map(&:to_i)
# @min_length = ball_radius * 2  # 直径
# box_num.times do |i|
#   number = i + 1
#   box = gets.split.map(&:to_i)
#   if box.all? { |n| n >= @min_length }
#     puts number
#   end
# end
# # クラス化した場合
# class Box
#   attr_reader :box_num, :ball_radius

#   def initialize(box_num, ball_radius)
#     @box_num = box_num # 箱の数
#     @min_length = ball_radius * 2  # 直径
#   end

#   def box_judgment
#     box_num.times do |i|
#       number = i + 1
#       box = gets.split.map(&:to_i)
#       judgment(box, number)
#     end
#   end

#   def judgment(box, number)
#     puts number if box.all? { |n| n >= @min_length }
#   end
# end

# box_num, ball_radius = gets.split.map(&:to_i)
# Box.new(box_num, ball_radius).box_judgment

# # C017:ハイアンドロー・カードゲーム----------------
# parent_a, parent_b = gets.split(" ").map(&:to_i)
# num = gets.to_i

# array = []
# num.times do
#   array.push(gets.split(" ").map(&:to_i))
# end

# array.each { |children|
#   i = 0
#   if children[i] > parent_a
#     puts "Low"
#   elsif children[i] < parent_a
#     puts "High"
#   elsif children[i] == parent_a
#     i += 1
#     if children[i] > parent_b
#       puts "High"
#     else
#       puts "Low"
#     end
#   end
# }

# # フミヤさんの回答--------------------------
# parent_num_a, parent_num_b = gets.split.map(&:to_i)
# num = gets.to_i
# num.times do
#   children_num_a, children_num_b = gets.split.map(&:to_i)
#   case
#   # 親が大きい
#   when parent_num_a > children_num_a
#     puts "High"
#     # 親が小さい
#   when parent_num_a < children_num_a
#     puts "Low"
#     # 引き分け
#   when parent_num_a == children_num_a
#     if parent_num_b < children_num_b
#       puts "High"
#     else
#       puts "Low"
#     end
#   end
# end

# class Game
#   attr_reader :parent_num_a, :parent_num_b, :num

#   def initialize(parent_num_a, parent_num_b, num)
#     @parent_num_a = parent_num_a
#     @parent_num_b = parent_num_b
#     @num = num
#   end

#   def play_game
#     num.times do
#       children_num_a, children_num_b = gets.split.map(&:to_i)
#       judgement(children_num_a, children_num_b)
#     end
#   end

#   def judgement(children_num_a, children_num_b)
#     case
#     # 親が大きい
#     when parent_num_a > children_num_a
#       puts "High"
#       # 親が小さい
#     when parent_num_a < children_num_a
#       puts "Low"
#       # 引き分け
#     when parent_num_a == children_num_a
#       if parent_num_b < children_num_b
#         puts "High"
#       else
#         puts "Low"
#       end
#     end
#   end
# end

# parent_num_a, parent_num_b = gets.split.map(&:to_i)
# num = gets.to_i
# Game.new(parent_num_a, parent_num_b, num).play_game


# # 標準入力 文字列を一文字ずつ分けて配列に入れる
# # Tokyo
# line = gets.split('')
# p line
# # => ["T", "o", "k", "y", "o"]

# # 標準入力 複数要素ある場合に、空欄を空欄で分けて配列に入れる
# # Tokyo Osaka Kyoto
# line = gets.split(" ")
# p line
# # => ["Tokyo", "Osaka", "Kyoto"]

# # 標準入力
# # Tokyo
# # Osaka
# # Kyoto
# line = readlines.map(&:chomp)
# p line 
# # => ["Tokyo", "Osaka", "Kyoto"]

# # 標準入力 複数行に複数要素がある場合
# # Tokyo Osaka Kyoto
# # Japan USA China
# lines = readlines(chomp: true).map { |line| line.split(" ") }
# p lines


# C049:【ぱいじょ！コラボ問題】エレベーター
# 入力値 
# N回移動します：3
# 移動した階数：3
# 移動した回数：1
# 移動した回数：4
# 但し、

# number = gets.to_i

# floor_numbers = []

# number.times do
#   floor_numbers.push(gets.to_i)
# end

# before_i = 1
# difference = 0
# floor_numbers.each { |number|
#   difference += (before_number - number).abs
#   before_number = number
# }

# p difference

# 忘れた-------------------------------
# # クラス化
# class Elevator
#   attr_reader :number, :floor_numbers, :before_i, :difference

#   def initialize(number, floor_numbers, before_i, difference)
#     @floor_numbers = floor_numbers
#     @number = number
#     @before_i = before_i
#     @difference = difference
#   end

#   def get_value
#     number = gets.to_i
#     number.times do
#       floor_numbers.push(gets.to_i)
#     end
#   end

#   def get_diff
#     floor_number.each { |i|
#       difference += (before_i - i).abs
#       before_i = i
#     }

#     p difference
#   end

# end

#  elevator = Elevator.new(3,1,4,3)
#  elevator.get_value()
#  elavator.get_diff()


# 自分の得意な言語で
# Let's チャレンジ！！
height, width = gets.split(" ").map(&:to_i)

all_errata = []

height.times do
  all_errata.push(gets.chomp.split("").map(&:to_s))
end
p all_errata

all_score = []
height.times do
  all_score.push(gets.split(" ").map(&:to_i))
end

total_score = 0

all_errata.each_with_index do |errata, number|
  errata.each_with_index do |circle_cross, position|
    if circle_cross == "o"
      total_score += all_score[number][position]
    end
  end
end

p total_score


# B051:汚れてしまった魔法陣
# 入力例１
# 3
# 6 1 8
# 7 5 3
# 2 0 0

# 出力例1
# 6 1 8
# 7 5 3
# 2 9 4

# 入力例
# 5
# 1 15 8 24 0
# 19 3 21 12 10
# 13 0 20 6 4
# 25 9 2 18 11
# 7 16 14 5 23

# 出力例2
# 1 15 8 24 17
# 19 3 21 12 10
# 13 22 20 6 4
# 25 9 2 18 11
# 7 16 14 5 23

magic_circle = []
input_N.times do
  magic_circle << gets.chomp.split(" ").map(&:to_i)
end

max_row_value = 0
magic_circle.each { |i|
  if !i.include?(0)
    max_row_value = i.sum
  end
}

sum_value = 0
v = 0
secondary_index = []
magic_circle.each_with_index { |magic, i|
  magic.each_with_index { |num, j|
    if num == 0
      while v < input_N
        sum_value += magic_circle[v][j]
        v += 1
      end
      magic_circle[i][j] = max_row_value - sum_value
      v = 0
      sum_value = 0
    end
  }
}

magic_circle.each { |l|
  puts l.join(" ")
}
# 縦に0が並んだ場合を考慮すれば解決するはず！


# B068:チョコの分割-------------------
@height, width = gets.split(" ").map(&:to_i)

chocolates = []
@height.times do
  chocolates << gets.chomp.split(" ").map(&:to_i)
end

height_num = 0
alice_start_num = 0
alice_end_num = 0
bob_start_num = 1
bob_end_num = width - 1
judge_array = []
@replace = []
alice_array = []
bob_array = []
@pa = []
chocolates.each { |array|
  array.each_with_index { |alice, i|
    break if i == bob_end_num
    alice_end_num = i
    bob_start_num = i + 1

    judge_array << (array[alice_start_num..alice_end_num].sum == array[bob_start_num..bob_end_num].sum)
    if (array[alice_start_num..alice_end_num].sum == array[bob_start_num..bob_end_num].sum)
      alice_array = array[alice_start_num..alice_end_num].map! { |x| x = "A" }
      bob_array = array[bob_start_num..bob_end_num].map! { |x| x = "B" }
      @pa << (alice_array + bob_array).join
    end
  }
}

def judgement(answer)
  counter = 0
  answer.each { |i|
    if i == true
      counter += 1
    end
  }
  if counter == @height
    puts "Yes"
    puts @pa
  else
    puts "No"
  end
end

judgement(judge_array)
