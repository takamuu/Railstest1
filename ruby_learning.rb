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


# # 自分の得意な言語で
# # Let's チャレンジ！！
# height, width = gets.split(" ").map(&:to_i)

# all_errata = []

# height.times do
#   all_errata.push(gets.chomp.split("").map(&:to_s))
# end
# p all_errata

# all_score = []
# height.times do
#   all_score.push(gets.split(" ").map(&:to_i))
# end

# total_score = 0

# all_errata.each_with_index do |errata, number|
#   errata.each_with_index do |circle_cross, position|
#     if circle_cross == "o"
#       total_score += all_score[number][position]
#     end
#   end
# end

# p total_score


# # B051:汚れてしまった魔法陣
# # 入力例１
# # 3
# # 6 1 8
# # 7 5 3
# # 2 0 0

# # 出力例1
# # 6 1 8
# # 7 5 3
# # 2 9 4

# # 入力例
# # 5
# # 1 15 8 24 0
# # 19 3 21 12 10
# # 13 0 20 6 4
# # 25 9 2 18 11
# # 7 16 14 5 23

# # 出力例2
# # 1 15 8 24 17
# # 19 3 21 12 10
# # 13 22 20 6 4
# # 25 9 2 18 11
# # 7 16 14 5 23

# magic_circle = []
# input_N.times do
#   magic_circle << gets.chomp.split(" ").map(&:to_i)
# end

# max_row_value = 0
# magic_circle.each { |i|
#   if !i.include?(0)
#     max_row_value = i.sum
#   end
# }

# sum_value = 0
# v = 0
# secondary_index = []
# magic_circle.each_with_index { |magic, i|
#   magic.each_with_index { |num, j|
#     if num == 0
#       while v < input_N
#         sum_value += magic_circle[v][j]
#         v += 1
#       end
#       magic_circle[i][j] = max_row_value - sum_value
#       v = 0
#       sum_value = 0
#     end
#   }
# }

# magic_circle.each { |l|
#   puts l.join(" ")
# }
# # 縦に0が並んだ場合を考慮すれば解決するはず！


# # B068:チョコの分割-------------------
# @height, width = gets.split(" ").map(&:to_i)

# chocolates = []
# @height.times do
#   chocolates << gets.chomp.split(" ").map(&:to_i)
# end

# height_num = 0
# alice_start_num = 0
# alice_end_num = 0
# bob_start_num = 1
# bob_end_num = width - 1
# judge_array = []
# @replace = []
# alice_array = []
# bob_array = []
# @pa = []
# chocolates.each { |array|
#   array.each_with_index { |alice, i|
#     break if i == bob_end_num
#     alice_end_num = i
#     bob_start_num = i + 1

#     judge_array << (array[alice_start_num..alice_end_num].sum == array[bob_start_num..bob_end_num].sum)
#     if (array[alice_start_num..alice_end_num].sum == array[bob_start_num..bob_end_num].sum)
#       alice_array = array[alice_start_num..alice_end_num].map! { |x| x = "A" }
#       bob_array = array[bob_start_num..bob_end_num].map! { |x| x = "B" }
#       @pa << (alice_array + bob_array).join
#     end
#   }
# }

# def judgement(answer)
#   counter = 0
#   answer.each { |i|
#     if i == true
#       counter += 1
#     end
#   }
#   if counter == @height
#     puts "Yes"
#     puts @pa
#   else
#     puts "No"
#   end
# end

# judgement(judge_array)


# # B055:タクシー料金----------------
# require "pry"
# taxi_type, @distance = gets.split(" ").map(&:to_i)

# array = []
# taxi_type.times {
#   array << gets.split(" ").map(&:to_i)
# }

# @first_ride_distance = 0
# @first_fare = 0
# @addition_distance = 0
# @additional_fare = 0
# @count = 0
# @lowest_price = []

# def fare_calc(array_element)
#   @count = 0
#   @lowest_distance = array_element[0]
#   @first_fare = array_element[1]
#   @additional_fare = array_element[3]
#   until @distance < @lowest_distance
#     @lowest_distance = @lowest_distance + array_element[2]
#     @count += 1
#   end
#   @lowest_price << @first_fare + (@additional_fare * @count)
# end

# array.each { |array_element| fare_calc(array_element) }

# puts @lowest_price.minmax.join(" ")


# # B040:たのしい暗号解読----------
# require "pry"
# N, alphabet = gets.split(" ")
# alphabet_array = []
# p alphabet_array = alphabet.chomp.split("")

# p encryption = gets.chomp.split("")

# index_array = []
# encryption.each { |character|
#   index_array << alphabet_array.find_index(character)
# }
# p index_array
# index_array.gsub!(/15,
#                15 => "p")
# #                "E" => "3",
# #                "G" => "6",
# #                "I" => "1",
# #                "O" => "0",
# #                "S" => "5",
# #                "Z" => "2")
# p index_array

# # B081:花壇のロープ-------------------------------
# height, width = gets.split(" ").map(&:to_i)

# flower_beds = []
# height.times { flower_beds << gets.chomp.split("") }

# flower_index = []

# flower_beds.each_with_index { |flower_bed_array, vertical|
#     flower_bed_array.each_with_index { |flower_array, i|
#       flower_index << [vertical, i] if flower_array == "#"
#     }
# }

# total_ropes = flower_index.length * 4

# @vartical_position = []
# @horizontal_position = []

# def vartical_side_by_side(element)
#     element.each { |first_position|
#         @vartical_position << [first_position[0] + 1, first_position[1]]
#     }
# end

# def horizontal_side_by_side(element)
#     element.each { |first_position|
#         @horizontal_position << [first_position[0], first_position[1] + 1]
#     }
# end

# vartical_side_by_side(flower_index)
# horizontal_side_by_side(flower_index)
# side_by_side = (@vartical_position & flower_index).count + (@horizontal_position & flower_index).count
# p total_ropes - (side_by_side * 2)


# # B 暗号-----------------------------------
# class Code
#   attr_accessor :cipher_text
#   attr_reader :alphabets, :alphabet_checker, :change_string_list, :replace_num, :replace_string
  
#   def initialize(replace_num, replace_string, cipher_text)
#     @cipher_text = cipher_text
#     @replace_num = replace_num.to_i
#     @replace_string = replace_string
#     @replace_strings = replace_string.chars
#     @alphabets = [*'a'..'z']
#     @alphabet_checker = alphabets.join('|')
#     @change_string_list = @replace_strings.zip(alphabets).to_h
#   end

#   def change_question
#     @cipher_text = cipher_text.gsub(/#{alphabet_checker}/, change_string_list)
#   end
  
#   def crack_the_code
#     replace_num.times { change_question }
#     puts cipher_text
#   end
# end
# # 置換回数, 置換文字
# replace_num, replace_string = gets.split.map(&:to_s)
# # 暗号文
# cipher_text = gets.chomp.to_s
# Code.new(replace_num, replace_string, cipher_text).crack_the_code

# B091:山頂を探せ--------------------------------

# @height = gets.to_i

# @mountain_peaks = []
# @height.times { @mountain_peaks << gets.chomp.split(" ").map(&:to_i) }

# @mountain_index = []
# @mountain_peaks.each_with_index { |mountain_array, vertical_index|
#   mountain_array.each_index { |horizontal_index|
#     @mountain_index << [vertical_index, horizontal_index]
#   }
# }

# @altitude_around = []
# @current_altitude = []

# def get_around(element)
#   element.each { |current_index|
#     @current_altitude = @mountain_peaks[current_index[0]][current_index[1]]
#     left_judge_range(current_index)
#     right_judge_range(current_index)
#     up_judge_range(current_index)
#     down_judge_range(current_index)
#     comparison
#     @altitude_around = []
#   }
# end

# def left_judge_range(index)
#   if -1 < index[0] - 1
#     @altitude_around << @mountain_peaks[index[0] - 1][index[1]]
#   else
#     @altitude_around << 0
#   end
# end

# def right_judge_range(index)
#   if index[0] + 1 < @height
#     @altitude_around << @mountain_peaks[index[0] + 1][index[1]]
#   else
#     @altitude_around << 0
#   end
# end

# def up_judge_range(index)
#   if -1 < index[1] - 1
#     @altitude_around << @mountain_peaks[index[0]][index[1] - 1]
#   else
#     @altitude_around << 0
#   end
# end

# def down_judge_range(index)
#   if index[1] + 1 < @height
#     @altitude_around << @mountain_peaks[index[0]][index[1] + 1]
#   else
#     @altitude_around << 0
#   end
# end

# @answer = []

# def comparison
#   if @altitude_around.all? { |i| i < @current_altitude }
#     @answer << @current_altitude
#   end
# end

# get_around(@mountain_index)
# puts @answer.sort.reverse

# paiza C055:ログのフィルター--------------------------------
# number_string = gets.chomp.to_i
# char_extract = gets.chomp.to_s

# char_array = []
# number_string.times {
#   char_array << gets.chomp.to_s
# }

# output_array = []
# char_array.each { |char|
#   output_array << char if char.include?(char_extract)
# }

# if output_array == []
#   puts "None"
# else
#   puts output_array
# end

# # C055:ログのフィルター【クラス化】--------------------------
# class LogFilter
#   attr_accessor :output_array
#   attr_reader :number_string, :char_extract, :char_array

#   def initialize(data)
#     @output_array = data[:output_array]
#     @number_string = data[:number_string]
#     @char_extract = data[:char_extract]
#     @char_array = data[:char_array]
#   end

#   def run_filter
#     number_string.times { char_array << gets.chomp.to_s }
#   end

#   def output
#     # output_array.empty? ? puts "None" : puts output_array
#     if output_array == []
#       puts "None"
#     else
#       puts output_array
#     end
#   end
# end

# number_string = gets.chomp.to_i
# char_extract = gets.chomp.to_s
# logfilter = LogFilter.new(
#   output_array: output_array,
#   number_string: number_string,
#   char_extract: char_extract,
#   char_array: char_array
# )
# logfilter.run_filter
# logfilter.output

# # C075:ポイント払い------------------------------------
# balance, bus_rides = gets.split(" ").map(&:to_i)

# fare = []
# total_point = 0
# bus_rides.times { 
#     fare = gets.to_i
#     if fare <= total_point
#         total_point -= fare
#     else
#         balance -= fare
#         total_point += (fare / 10)
#     end
#     puts "#{balance} #{total_point}"
# }

# # 【クラス化】--------------
# class Busride
#     attr_accessor :fare, :total_point, :balance, :bus_rides


# # C077:【30万人記念問題】レポートの評価--------------------------
#     deadline, question = gets.split.map(&:to_i)

# score = 0

# allocation = 100 / question

# def evalution(score)
#     case score
#     when 80..100
#         puts "A"
#     when 70..79
#         puts "B"
#     when 60..69
#         puts "C"
#     when 0..59
#         puts "D"
#     end
# end

# question.times do
#     expiration_date, correct_answer = gets.split.map(&:to_i)
#     score = allocation * correct_answer
#     if expiration_date < 1
#     elsif expiration_date < 10
#         score = (score * 0.8).floor 
#     elsif  expiration_date > 9
#         score = 0
#     end
#     evalution(score)
# end

# position = gets.split(" ").map(&:to_i)

# @front_move, @right_move, @back_move, @left_move = gets.split(" ").map(&:to_i)
# @direction = { F: @front_move, R: @right_move, B: @back_move, L: @left_move }
# # p @direction

# order_num = gets.to_i

# @action_order = []


# def current_direction(direction)
#  case direction.to_a
#  when { F: @front_move, R: @right_move, B: @back_move, L: @left_move }.to_a
#      if @direction_order == "R"
#          @direction = { L: @left_move, F: @front_move, R: @right_move, B: @back_move }
#      elsif @direction_order == "L"
#          @direction = { R: @right_move ,B: @back_move, L: @left_move, F: @front_move }
#      elsif @direction_order == "B"
#          @direction = { B: @back_move, L: @left_move, F: @front_move, R: @right_move }
#      end
#  when { L: @left_move, F: @front_move, R: @right_move, B: @back_move }.to_a
#      if @direction_order == "R"
#          @direction = { B: @back_move, L: @left_move, F: @front_move, R: @right_move }
#      elsif @direction_order == "L"
#          @direction = { F: @front_move, R: @right_move, B: @back_move, L: @left_move }
#      elsif @direction_order == "B"
#          @direction = { R: @right_move ,B: @back_move, L: @left_move, F: @front_move }
#      end
#  when { B: @back_move, L: @left_move, F: @front_move, R: @right_move }.to_a
#      if @direction_order == "R"
#          @direction = { R: @right_move ,B: @back_move, L: @left_move, F: @front_move }
#      elsif @direction_order == "L"
#          @direction = { L: @left_move, F: @front_move, R: @right_move, B: @back_move }
#      elsif @direction_order == "B"
#          @direction = { F: @front_move, R: @right_move, B: @back_move, L: @left_move }
#      end
#  when { R: @right_move ,B: @back_move, L: @left_move, F: @front_move }.to_a
#      if @direction_order == "R"
#          @direction = { F: @front_move, R: @right_move, B: @back_move, L: @left_move }
#      elsif @direction_order == "L"
#          @direction = { B: @back_move, L: @left_move, F: @front_move, R: @right_move }
#      elsif @direction_order == "B"
#          @direction = { L: @left_move, F: @front_move, R: @right_move, B: @back_move }
#      end
#  end
# end


# order_num.times { 
#     @action_order = gets.split(" ").map(&:to_s)  
#         if @action_order[0] == "t"
#             @direction_order = @action_order[1]
#             current_direction(@direction)
#         elsif @action_order[0] == "m"
#             case @action_order[1]
#             when "F"
#                 @direction.each_with_index { |element, index|
#                 if element.include?(:F)
#                     case index
#                     when 0
#                         position[1] += @direction[:F]
#                     when 1
#                         position[0] += @direction[:F]
#                     when 2
#                         position[1] -= @direction[:F] 
#                     when 3        
#                         position[0] -= @direction[:F]
#                     end
#                 end
#                 }
#             when "R"
#                  @direction.each_with_index { |element, index|
#                 if element.include?(:R)
#                     case index
#                     when 0
#                         position[1] += @direction[:R]
#                     when 1
#                         position[0] += @direction[:R]
#                     when 2
#                         position[1] -= @direction[:R] 
#                     when 3        
#                         position[0] -= @direction[:R]
#                     end
#                 end
#                 }
#             when "B"
#                  @direction.each_with_index { |element, index|
#                 if element.include?(:B)
#                     case index
#                     when 0
#                         position[1] += @direction[:B]
#                     when 1
#                         position[0] += @direction[:B]
#                     when 2
#                         position[1] -= @direction[:B] 
#                     when 3        
#                         position[0] -= @direction[:B]
#                     end
#                 end
#                 }
#             when "L"
#                 @direction.each_with_index { |element, index|
#                 if element.include?(:L)
#                     case index
#                     when 0
#                         position[1] += @direction[:L]
#                     when 1
#                         position[0] += @direction[:L]
#                     when 2
#                         position[1] -= @direction[:L] 
#                     when 3        
#                         position[0] -= @direction[:L]
#                     end
#                 end
#                 }
#             end
#         end
    
# }
# puts "#{position[0]}" + " " + "#{position[1]}"

# Paiza C086:ハンドルネームの生成---------------------------------
# letter = gets.chomp.to_s

# 以下どちらでもOK
# p letter.delete('aiueoAIUEO')
# puts letter.gsub!(/a|i|u|e|o/i, "")


# # Paiza C039 :古代の数式--------------------------------------
# letter = gets.chomp.to_s

# # p letter.count("/") + letter.count("<") * 10
# p letter.split('+')

# クラス化---------
# class AncientMath
#     attr_accessor :ancient_char

#     def initialize(ancient_char)
#         @ancient_char = ancient_char
#     end

#     def count_letters
#         @ancient_char.count("/") + @ancient_char.count("<") * 10
#     end

#     def output
#         puts count_letters
#     end
# end

# letter = gets.chomp.to_s
# ancient_math = AncientMath.new(letter) 
# ancient_math.output
# <<<<<///+<<</// をコンソールに入力すると動作確認できる

# # Paiza C021:暴風域にいますか？-------------------------------------
# circle_x, circle_y, radius_sc, radius_bc = gets.split.map(&:to_i)

# people = gets.to_i

# people.times { person_place_x, person_place_y = gets.split.map(&:to_i)
#   if radius_sc ** 2 <= (person_place_x - circle_x) ** 2 + (person_place_y - circle_y) ** 2 && 
#     (person_place_x - circle_x) ** 2 + (person_place_y - circle_y) ** 2 <= radius_bc ** 2
#     puts "yes"
#   else
#     puts "no"
#   end
# }

# Paiza B095:カラオケ大会------------------
# class User
#     attr_accessor :name

#     def initialize(name)
#         @name = name
#     end
# end
# user = User.new('Alice')
# p user.name
# user.name = 'Bob'
# p user.name

# # Paiza B
# singers, song_length = gets.split(" ").map(&:to_i)

# correct_pitch = []
# song_length.times { correct_pitch << gets.to_i }

# singers_pitch = []
# all_singers_pitch = []

# singers.times {
#   song_length.times { singers_pitch << gets.to_i }
#   all_singers_pitch << singers_pitch
#   singers_pitch = []
# }

# def score_calculation(calc)
#   case calc.abs
#   when 0..5
#     0
#   when 6..10
#     1
#   when 11..20
#     2
#   when 21..30
#     3
#   when 31..1000
#     5
#   end
# end

# pitch_score = 100
# all_singers_score = []
# num = 0
# all_singers_pitch.each { |pitch|
#   song_length.times {
#     difference = correct_pitch[num] - pitch[num]
#     pitch_score -= score_calculation(difference)
#     num += 1
#   }
#   num = 0
#   if pitch_score < 0
#     all_singers_score << 0
#   else
#     all_singers_score << pitch_score
#   end
# }

# p all_singers_score.max

# Paiza C023:クジの当選番号--------------------------------
# winning_number = gets.split.map(&:to_i)
# lottery_tickets = gets.to_i

# lottery_tickets.times {
#     p lottery_number = gets.split.map(&:to_i)

#     p (lottery_number & winning_number).size
# }

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class Lottery
#   attr_reader :lottery_tickets, :winning_number

#   def initialize(lottery_tickets, winning_number)
#     @lottery_tickets = lottery_tickets
#     @winning_number = winning_number
#   end

#   def count_winning_number
#     lottery_tickets.times {
#       lottery_number = gets.split.map(&:to_i)
#       p (lottery_number & winning_number).size
#     }
#   end
# end

# winning_number = gets.split.map(&:to_i)
# lottery_tickets = gets.to_i

# lottery = Lottery.new(lottery_tickets, winning_number)
# lottery.count_winning_number

# # クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

# class Lottery
#   attr_reader :lottery_tickets, :winning_number

#   def initialize(args)
#     @lottery_tickets = args[:lottery_tickets]
#     @winning_number = args[:winning_number]
#   end

#   def count_winning_number
#     lottery_tickets.times {
#       lottery_number = gets.split.map(&:to_i)
#       p (lottery_number & winning_number).size
#     }
#   end
# end

# winning_number = gets.split.map(&:to_i)
# lottery_tickets = gets.to_i

# args = { lottery_tickets: lottery_tickets, winning_number: winning_number }
# lottery = Lottery.new(args)
# lottery.count_winning_number

# # Paiza C052:ゲームの画面--------------------------------
# height, width = gets.split.map(&:to_i)
# distance_x, distance_y = gets.split.map(&:to_i)

# p (height * distance_y.abs) + (width * distance_x.abs) - (distance_x.abs * distance_y.abs)

# # クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class Scroll
#   attr_reader :height, :width, :distance_x, :distance_y

#   def initialize(args)
#     @height = args[:height]
#     @width = args[:width]
#     @distance_x = args[:distance_x]
#     @distance_y = args[:distance_y]
#   end

#   def redraw_area
#     p (height * distance_y.abs) + (width * distance_x.abs) - (distance_x.abs * distance_y.abs)
#   end
# end

# height, width = gets.split.map(&:to_i)
# distance_x, distance_y = gets.split.map(&:to_i)

# args = { height: height, width: width, distance_x: distance_x, distance_y: distance_y }
# scroll = Scroll.new(args)
# scroll.redraw_area

# Paiza C019:完全数とほぼ完全数--------------------------------------
# int_num = gets.to_i
# divisors_array = int_num.times.map { gets.to_i }

# def divisor(num)
#   result = []
#   i = 1
#   while i < num
#     remainder = num % i
#     if remainder == 0
#       result << i
#     end
#     i += 1
#   end
#   return result
# end

# divisors_array.each { |num|
#   if num == divisor(num).sum
#     puts "perfect"
#   elsif (num - divisor(num).sum).abs <= 1
#     puts "nearly"
#   else
#     puts "neither"
#   end
# }

# クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class PerfectNumJudgment
#   attr_reader :divisors_array

#   def initialize(args)
#     @divisors_array = args[:divisors_array]
#   end

#   def divisor(num)
#     result = []
#     i = 1
#     while i < num
#       remainder = num % i
#       if remainder == 0
#         result << i
#       end
#       i += 1
#     end
#     return result
#   end

#   def sum_value(num)
#     divisor(num).sum
#   end

#   def result_output
#     divisors_array.each { |num| judge(num) }
#   end

#   def judge(num)
#     value = sum_value(num)
#     if num == value
#       puts "perfect"
#     elsif (num - value).abs == 1
#       puts "nearly"
#     else
#       puts "neither"
#     end
#   end
# end

# int_num = gets.to_i
# divisors_array = int_num.times.map { gets.to_i }

# args = { divisors_array: divisors_array }
# perfect_num_judgment = PerfectNumJudgment.new(args)
# perfect_num_judgment.result_output

# # Paiza C059:パリティチェック--------------------------------------
# inputs_num = gets.to_i
# two_dimensions_array = inputs_num.times.map { gets.chomp.split("").map(&:to_i) }

# def binary_calc(binary)
#   binary.count(1).odd? ? 1 : 0
# end

# answer = 4.times.map do |i|
#   binary = two_dimensions_array.transpose[i]
#   binary_calc(binary)
# end

# puts answer.join

# # クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

# class ParityCheck
#   attr_accessor :answer
#   attr_reader :two_dimensions_array

#   def initialize(args)
#     @two_dimensions_array = args[:two_dimensions_array]
#     @answer = args[:answer]
#   end

#   def binary_check(binary)
#     binary.count(1).odd? ? 1 : 0
#   end

#   def array_transpose
#     self.answer = 4.times.map do |i|
#       binary = two_dimensions_array.transpose[i]
#       binary_check(binary)
#     end
#   end

#   def output
#     puts self.answer.join
#   end
# end

# inputs_num = gets.to_i
# two_dimensions_array = inputs_num.times.map { gets.chomp.split("").map(&:to_i) }

# args = { two_dimensions_array: two_dimensions_array }
# paritycheck = ParityCheck.new(args)
# paritycheck.array_transpose
# paritycheck.output

# # Paiza C010:安息の地を求めて-------------------------------------
# construction_a, construction_b, rudius = gets.split.map(&:to_i)

# shades = gets.to_i

# shade_position = shades.times.map { gets.split.map(&:to_i) }

# def distance_judge(a, b, x, y, rudius)
#   if ((x - a) ** 2 + (y - b) ** 2) >= rudius ** 2
#     puts "silent"
#   else
#     puts "noisy"
#   end
# end

# shade_position.each do |position|
#   shade_x = position[0]
#   shade_y = position[1]
#   distance_judge(construction_a, construction_b, shade_x, shade_y, rudius)
# end

# # クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class LandRest
#   attr_reader :shade_position, :construction_a, :construction_b, :rudius

#   def initialize(args)
#     @shade_position = args[:shade_position]
#     @construction_a = args[:construction_a]
#     @construction_b = args[:construction_b]
#     @rudius = args[:rudius]
#   end

#   def array_assignment
#     shade_position.each do |shade_x, shade_y|
#       rest_area?(shade_x, shade_y) ? (puts "silent") : (puts "noisy")
#     end
#   end
  
#   def rest_area?(x, y)
#     ((x - construction_a) ** 2 + (y - construction_b) ** 2) >= rudius ** 2
#   end
# end

# construction_a, construction_b, rudius = gets.split.map(&:to_i)
# shades = gets.to_i
# shade_position = shades.times.map { gets.split.map(&:to_i) }

# args = { construction_a: construction_a, construction_b: construction_b, rudius: rudius, shade_position: shade_position }
# landrest = LandRest.new(args)
# landrest.array_assignment

# # Paiza C079:カードを集める----------------------------------
# card_buy, card_type = gets.split.map(&:to_i)

# card_array = card_buy.times.map { gets.to_i }

# default_arr = Array(1..card_type)
# uniq_arr = card_array.uniq

# if uniq_arr.sort != default_arr
#   puts "unlucky"
# else
#   card_array.each.with_index(1) do |card, index|
#     uniq_arr.delete(card)
#     uniq_arr
#     if uniq_arr.empty?
#       puts index
#       break
#     end
#   end
# end

# # クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class CollectCard
#   attr_accessor :default_arr, :uniq_arr
#   attr_reader :card_array

#   def initialize(args)
#     @default_arr = args[:default_arr]
#     @uniq_arr = args[:uniq_arr]
#     @card_array = args[:card_array]
#   end

#   def luck_judge
#     default_arr = [*1..card_type]
#     uniq_arr = card_array.uniq
#     if uniq_arr.sort != default_arr
#       puts "unlucky"
#     else
#       card_array.each.with_index(1) do |card, index|
#         uniq_arr.delete(card)
#         uniq_arr
#         if uniq_arr.empty?
#           puts index
#           break
#         end
#       end
#     end
#   end
# end

# # Paiza C087:数字の規則-------------------------------
# int_num = gets.chomp.to_i

# sum_num = int_num.to_i + int_num.to_s.reverse.to_i

# p sum_num.to_i if sum_num.to_s == sum_num.to_s.reverse

# while sum_num.to_s != sum_num.to_s.reverse
#   sum_num = sum_num.to_i + sum_num.to_s.reverse.to_i
#   p sum_num.to_i if sum_num.to_s == sum_num.to_s.reverse
# end

# # クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class NumberRule
#   attr_accessor :sum_num
#   attr_reader :int_num
  
#   def initialize(args)
#     @int_num = args[:int_num]
#     @sum_num = 0
#   end

#   def total_create
#     self.sum_num = int_num + reverse_num
#   end

#   def reverse_num
#     int_num.to_s.reverse.to_i
#   end

#   def sum_num_reverse_num
#     sum_num.to_s.reverse.to_i
#   end

#   def palindrome?
#     sum_num == sum_num_reverse_num
#   end

#   def palindrome_create
#     until palindrome?
#       self.sum_num += sum_num_reverse_num
#     end
#     p sum_num
#   end
# end

# int_num = gets.chomp.to_i
# number_rule = NumberRule.new(int_num: int_num)
# number_rule.total_create
# number_rule.palindrome_create

# # Paiza C032:お得な買い物-----------------------
# int_num = gets.to_i
# merchandise = int_num.times.map { gets.split.map(&:to_i) }
# grocery = 0
# books = 0
# clothing = 0
# others = 0

# merchandise_array.each do |merchan|
#   case merchan[0]
#   when 0
#     grocery += merchan[1]
#   when 1
#     books += merchan[1]
#   when 2
#     clothing += merchan[1]
#   when 3
#     others += merchan[1]
#   end
# end

# p (grocery / 100) * 5 + (books / 100) * 3 + (clothing / 100) * 2 + (others / 100) * 1

# # クラス化 args使用↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

# class PointCalculation
#   GROCERY_RATIO = { id: 0, rate: 5 }
#   BOOKS_RATIO = { id: 1, rate: 3 }
#   CLOTHING_RATIO = { id: 2, rate: 2 }
#   OTHERS_RATION = { id: 3, rate: 1 }
#   attr_accessor :grocery, :books, :clothing, :others, :total_point
#   attr_reader :merchandise

#   def initialize(args)
#     @grocery = 0
#     @books = 0
#     @clothing = 0
#     @others = 0
#     @total_point = 0
#     @merchandise = args[:merchandise]
#   end

#   def classification
#     merchandise.each do |id, price|
#       case id
#       when GROCERY_RATIO[:id]
#         self.grocery += price
#       when BOOKS_RATIO[:id]
#         self.books += price
#       when CLOTHING_RATIO[:id]
#         self.clothing += price
#       when OTHERS_RATION[:id]
#         self.others += price
#       end
#     end
#   end

#   def total_point_calc
#     (grocery / 100) * GROCERY_RATIO[:rate] + (books / 100) * BOOKS_RATIO[:rate] + (clothing / 100) * CLOTHING_RATIO[:rate] + (others / 100) * OTHERS_RATION[:rate]
#   end

#   def output
#     p total_point_calc
#   end
# end

# int_num = gets.to_i
# merchandise = int_num.times.map { gets.split.map(&:to_i) }

# pointcalculation = PointCalculation.new(merchandise: merchandise)
# pointcalculation.classification
# pointcalculation.output

# Paiza C092 :工場のベルトコンベア------------------------------------------------
# process, parts_A, parts_B = gets.split.map(&:to_i)

# signals = gets.chomp.split("").map(&:to_s)
# signal_partA = gets.chomp.split("").map(&:to_s)
# signal_partB = gets.chomp.split("").map(&:to_s)

# signals.each do |signal|
#   signal_partA.shift if signal == signal_partA[0]
#   signal_partB.shift if signal == signal_partB[0]
# end

# puts "#{signal_partA.count} #{signal_partB.count}"

# # クラス化 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

# class BeltConveyor
#   attr_accessor :signal_partA, :signal_partB
#   attr_reader :signals

#   def initialize(args)
#     @signals = args[:signals]
#     @signal_partA = args[:signal_partA]
#     @signal_partB = args[:signal_partB]
#   end

#   def signal_judge 
#     signals.each do |signal|
#     self.signal_partA.shift if signal == signal_partA.first
#     self.signal_partB.shift if signal == signal_partB.first
#     end

#     puts "#{signal_partA.count} #{signal_partB.count}"
#   end
# end

# process, parts_A, parts_B = gets.split.map(&:to_i)
# signals = gets.chomp.split("").map(&:to_s)
# signal_partA = gets.chomp.split("").map(&:to_s)
# signal_partB = gets.chomp.split("").map(&:to_s)

# args = { signals: signals, signal_partA: signal_partA, signal_partB: signal_partB }
# beltconveyor = BeltConveyor.new(args)
# beltconveyor.signal_judge

# # Paiza C034:先生の宿題----------------------------------------
# int_a, plus_minas, int_b, equal_field, int_c = gets.split.map(&:to_s)

# def calc_result(a, plus_minas, b, c)
#   case
#   when (a == "x") && (plus_minas == "+")
#     p c.to_i - b.to_i
#   when a == "x" && plus_minas == "-"
#     p c.to_i + b.to_i
#   when b == "x" && plus_minas == "+"
#     p c.to_i - a.to_i
#   when b == "x" && plus_minas == "-"
#     p a.to_i - c.to_i
#   when c == "x" && plus_minas == "+"
#     p a.to_i + b.to_i
#   when c == "x" && plus_minas == "-"
#     p a.to_i - b.to_i
#   end
# end

# calc_result(int_a, plus_minas, int_b, int_c)

# # クラス化 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class CalculationHomework
#   attr_reader :int_a, :int_b, :int_c, :plus_minas

#   def initialize(args)
#     @int_a = args[:int_a]
#     @int_b = args[:int_b]
#     @int_c = args[:int_c]
#     @plus_minas = args[:plus_minas]
#   end

#   def calc_result(a, plus_minas, b, c)
#     case
#     when a == "x" && plus_minas == "+"
#       p c.to_i - b.to_i
#     when a == "x" && plus_minas == "-"
#       p c.to_i + b.to_i
#     when b == "x" && plus_minas == "+"
#       p c.to_i - a.to_i
#     when b == "x" && plus_minas == "-"
#       p a.to_i - c.to_i
#     when c == "x" && plus_minas == "+"
#       p a.to_i + b.to_i
#     when c == "x" && plus_minas == "-"
#       p a.to_i - b.to_i
#     end
#   end
# end

# int_a, plus_minas, int_b, equal_field, int_c = gets.split.map(&:to_s)
# args = { int_a: int_a, int_b: int_b, int_c: int_c, plus_minas: plus_minas }
# calclationhomeword = CalculationHomework.new(args)
# calclationhomeword.calc_result(int_a, plus_minas, int_b, int_c)

# # Paiza C071:直角三角形------------------------------------

# int_M, int_N = gets.split.map(&:to_i)

# int_arr = []

# [*1..(int_M - 1)].each do |int_m|
#   [*1..(int_N - 1)].each do |int_n|
#     x = ((int_m) ** 2) + ((int_n) ** 2)
#     if x ** (1 / 2.0) - (x ** (1 / 2.0)).to_i == 0
#       int_arr << x ** (1 / 2.0)
#     end
#   end
# end
# p int_arr.count

# # クラス化 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class RightTriangles
#   attr_accessor :triangle_count
#   attr_reader :first_num, :second_num

#   def initialize(args)
#     @first_num = args[:first_num]
#     @second_num = args[:second_num]
#     @triangle_count = 0
#   end

#   def hypotenuse_judgement
#     p first_numbers = create_numbers(first_num)
#     p second_numbers = create_numbers(second_num)

#     first_numbers.product(second_numbers) do |x, y|
#       self.triangle_count += 1 if hypotenuse_correct?(x, y)
#     end
#   end

#   def create_numbers(num)
#     [*1..(num - 1)]
#   end

#   def hypotenuse_correct?(first_side, second_side)
#     p x = (first_side ** 2) + (second_side ** 2)
#     x ** (1 / 2.0) - (x ** (1 / 2.0)).to_i == 0
#   end

#   def output_hypotenuse_count
#     puts triangle_count
#   end
# end

# first_num, second_num = gets.split.map(&:to_i)
# args = {
#   first_num: first_num,
#   second_num: second_num,
# }
# right_triangles = RightTriangles.new(args)
# right_triangles.hypotenuse_judgement
# right_triangles.output_hypotenuse_count

# # Paiza C091:みかんの仕分け-----------------------------
# class OrangeSort
#   attr_reader :box_weight, :num_times

#   def initialize(args)
#     @box_weight = args[:box_weight]
#     @num_times = args[:num_times]
#   end

#   def sorting(array)
#     array.each { |orange_weight| box_weight_output(orange_weight) }
#   end

#   def box_weight_output(orange_weight)
#     if near_box(orange_weight) == 0
#       p box_weight
#     else
#       p near_box(orange_weight)
#     end
#   end

#   def near_box(orange_weight)
#     (orange_weight / box_weight).round * box_weight
#   end
# end

# box_weight, num_times = gets.split.map(&:to_i)
# oranges_weight_arr = num_times.times.map { gets.to_f }

# args = { box_weight: box_weight, num_times: num_times }
# orangesort = OrangeSort.new(args)
# orangesort.sorting(oranges_weight_arr)

# # Paiza C094:国民の税金---------------------------------------------------
# times_num = gets.to_i

# national_income = times_num.times.map { gets.to_i }

# total_tax = 0

# national_income.each do |income|
#   case income
#   when 0..100000
#     next
#   when 100001..750000
#     total_tax += ((income - 100000) * 0.1).floor
#   when 750001..1500000
#     total_tax += 65000 + ((income - 750000) * 0.2).floor
#   else
#     total_tax += 215000 + ((income - 1500000) * 0.4).floor
#   end
# end
# p total_tax

# # クラス化 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class NationalIncome
#   attr_accessor :total_tax
#   attr_reader :national_income_array

#   def initialize(args)
#     @total_tax = 0
#     @national_income_array = args[:national_income_array]
#   end

#   def decimal_truncation(tax)
#     tax.floor
#   end

#   def tax_calculation(income)
#     case income
#     when 0..100000
#       self.total_tax += 0
#     when 100001..750000
#       self.total_tax += decimal_truncation((income - 100000) * 0.1)
#     when 750001..1500000
#       self.total_tax += 65000 + decimal_truncation((income - 750000) * 0.2)
#     else
#       self.total_tax += 215000 + decimal_truncation((income - 1500000) * 0.4)
#     end
#   end

#   def total_tax_output
#     national_income_array.each { |income| tax_calculation(income) }
#     p total_tax
#   end
# end



# times_num = gets.to_i
# national_income_array = times_num.times.map { gets.to_i }

# national_income = NationalIncome.new(national_income_array: national_income_array)
# national_income.total_tax_output

# # Paiza C054:【ぱいじょ！コラボ問題】スピード違反の取り締まり---------------------------------------------------
# times_num, @speed_limit = gets.split.map(&:to_i)

# time_position_array = times_num.times.map { gets.split.map(&:to_i) }

# def speed_over?(result)
#   @speed_limit <= result.max ? (puts "YES") : (puts "NO")
# end

# previous_point = []
# later_point = []
# result = []
# time_position_array.each { |element|
#   previous_point = element if previous_point.empty?
#   later_point = element
#   position_deff = later_point.first - previous_point.first
#   distance_diff = later_point.last - previous_point.last
#   begin
#     result << distance_diff / position_deff
#   rescue => e
#   end

#   previous_point = later_point
#   result
# }
# speed_over?(result)

# Paiza C044:手の組み合わせ---------------------------------------------------
# num_people = gets.to_i

# game_array = num_people.times.map { gets.chomp.to_s }

# case
# when game_array.uniq.sort == ["paper", "rock"]
#   puts "paper"
# when game_array.uniq.sort == ["paper", "scissors"]
#   puts "scissors"
# when game_array.uniq.sort == ["rock", "scissors"]
#   puts "rock"
# when game_array.uniq.sort == ["paper", "rock", "scissors"]
#   puts "draw"
# when game_array.uniq.count(1)
#   puts "draw"
# end

# クラス化 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
class RockPaperScissors
  attr_reader :game_array

  def initialize(args)
    @game_array = args[:game_array]
  end

  def remove_duplicates
    game_array.uniq.sort
  end

  def count
    game_array.uniq.count(1)
  end

  def gamejudge
    case
    when remove_duplicates == ["paper", "rock"]
      puts "paper"
    when remove_duplicates == ["paper", "scissors"]
      puts "scissors"
    when remove_duplicates == ["rock", "scissors"]
      puts "rock"
    when remove_duplicates == ["paper", "rock", "scissors"]
      puts "draw"
    when count
      puts "draw"
    end
  end
end

num_people = gets.to_i
game_array = num_people.times.map { gets.chomp.to_s }
rockpaperscissors = RockPaperScissors.new(game_array: game_array)
rockpaperscissors.gamejudge

