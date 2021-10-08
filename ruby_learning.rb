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

# # Paiza C044:手の組み合わせ---------------------------------------------------
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

# # クラス化 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class RockPaperScissors
#   attr_reader :game_array

#   def initialize(args)
#     @game_array = args[:game_array]
#   end

#   def remove_duplicates
#     game_array.uniq.sort
#   end

#   def count
#     game_array.uniq.count(1)
#   end

#   def gamejudge
#     case
#     when remove_duplicates == ["paper", "rock"]
#       puts "paper"
#     when remove_duplicates == ["paper", "scissors"]
#       puts "scissors"
#     when remove_duplicates == ["rock", "scissors"]
#       puts "rock"
#     when remove_duplicates == ["paper", "rock", "scissors"]
#       puts "draw"
#     when count
#       puts "draw"
#     end
#   end
# end

# num_people = gets.to_i
# game_array = num_people.times.map { gets.chomp.to_s }
# rockpaperscissors = RockPaperScissors.new(game_array: game_array)
# rockpaperscissors.gamejudge

# paiza C085:壊れかけのキーボード-----------------------------------------------------
# durability = gets.split.map(&:to_i)
# # p durability
# input_char = gets.chomp.split("").map(&:to_s)
# # p input_char
# alphabets = [*"a".."z"]
# numbers = [*"0".."25"]
# table = alphabets.zip(numbers).to_h
# # p table[]

# box = []
# # p replace.chars
# input_char.each do |char|
#   index = char.gsub(/[a-z]/, table).to_i
#   # p durability[index]
#   if durability[index] > 0
#     box << alphabets[index]
#     durability[index] -= 1
#     #  p durability
#   else
#     next
#   end
# end
# puts box.join

# # paiza C058:模様そろえ-----------------------------------------------------
# align_direction = []
# initial_state = []
# num_sides, align_direction, initial_state = gets.split.map(&:to_s)
# # p num_sides, align_direction, initial_state

# num_times = 0
# until align_direction == initial_state
#   ini_str = initial_state[0]
#   initial_state.slice!(0)
#   initial_state.concat(ini_str)
#   num_times += 1
# end
# p num_times

# # クラス化 ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

# class AlignPattern
#   attr_accessor :num_times
#   attr_reader :align_direction, :initial_state

#   def initialize(args)
#     @num_times = 0
#     @align_direction = args[:align_direction]
#     @initial_state = args[:initial_state]
#   end

#   def 
#     until align_direction == initial_state
#     ini_str = initial_state[0]
#     initial_state.slice!(0)
#     initial_state.concat(ini_str)
#     num_times += 1
#   end
#   p num_times

#   end
# end

# # B019:グレースケール画像の縮小-NG---------------------------------------------------
# image_size, shrink = gets.split.map(&:to_i)

# all_pixel_num = image_size.times.map { gets.split.map(&:to_i) }


# initial_index = 0
# divide_index = image_size / shrink
# vertical_divide_array = []
# horizon_divide_array = []
# answer = []
# divide_index.times do
#     all_pixel_num.each.with_index(1) do |pixel_num, index|
#         if index % shrink != 0
#             vertical_divide_array << pixel_num[initial_index..divide_index]
#         else
#             vertical_divide_array << pixel_num[initial_index..divide_index]
#             p answer << vertical_divide_array.flatten.sum / shrink**2
#             vertical_divide_array = []
#         end
#     end
#     p initial_index += shrink
#     p divide_index += shrink
# end

# p answer.each_slice(image_size/shrink).to_a

# # B019:グレースケール画像の縮小-OK---------------------------------------------------
# image_size, shrink = gets.split.map(&:to_i)
# # image_size, shrink
# all_pixel_num = image_size.times.map { gets.split.map(&:to_i) }
# # all_pixel_num

# position_arr = [*0..image_size-1].each_slice(shrink).to_a

# initial_index = 0
# divide_index = image_size / shrink
# vertical_divide_array = []
# horizon_divide_array = []
# answer = []

# position_arr.each do |position|
#     all_pixel_num.each_with_index do |pixel_num, pixel_index|
#     pixel_num
#         if (pixel_index + 1) % shrink == 0
#             # p  pixel_num[position.first..position.last]
#            vertical_divide_array << pixel_num[position.first..position.last]
#              answer << vertical_divide_array.flatten.sum / shrink**2
#             vertical_divide_array = []
#         else
            
#             vertical_divide_array << pixel_num[position.first..position.last]
#         end
#     end
# end

#  final_answer = answer.each_slice(image_size/shrink).to_a.transpose
# final_answer.each do |final|
#     puts final.join(' ')
# end

# # paiza C072:モンスターの進化-------------------------------------------
# attack, defence, agility = gets.split.map(&:to_i)
# # p attack, defence, agility

# num_times = gets.to_i

# answer_arr = []
# num_times.times do
#   evolution_values = gets.split.map(&:to_s)
#   att_range1 = evolution_values[1].to_i
#   att_range2 = evolution_values[2].to_i
#   def_range1 = evolution_values[3].to_i
#   def_range2 = evolution_values[4].to_i
#   agi_range1 = evolution_values[5].to_i
#   agi_range2 = evolution_values[6].to_i
#   if attack.between?(att_range1, att_range2) && defence.between?(def_range1, def_range2) && agility.between?(agi_range1, agi_range2)
#     answer_arr << evolution_values[0]
#   end
# end

# puts "no evolution" if answer_arr.empty?
# puts answer_arr

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class MonsterEvolution
#   attr_accessor :att_range_start, :att_range_end,
#                 :def_range_start, :def_range_end,
#                 :agi_range_start, :agi_range_end,
#                 :answer_arr, :evolution_values
#   attr_reader :attack, :defence, :agility, :num_times

#   def initialize(args)
#     @att_range_start = args[:att_range_start]
#     @att_range_end = args[:att_range_end]
#     @def_range_start = args[:def_range_start]
#     @def_range_end = args[:def_range_end]
#     @agi_range_start = args[:agi_range_start]
#     @agi_range_end = args[:agi_range_end]
#     @attack = args[:attack]
#     @defence = args[:defence]
#     @agility = args[:agility]
#     @evolution_values = args[:evolution_values]
#     @answer_arr = []
#     @num_times = args[:num_times]
#   end

#   def substitution
#     num_times.times do
#       self.evolution_values = gets.split.map(&:to_s)
#       self.att_range_start = evolution_values[1].to_i
#       self.att_range_end = evolution_values[2].to_i
#       self.def_range_start = evolution_values[3].to_i
#       self.def_range_end = evolution_values[4].to_i
#       self.agi_range_start = evolution_values[5].to_i
#       self.agi_range_end = evolution_values[6].to_i
#       evolutionjudge
#     end
#   end

#   def evolutionjudge
#     if attack.between?(att_range_start, att_range_end) && defence.between?(def_range_start, def_range_end) && agility.between?(agi_range_start, agi_range_end)
#       self.answer_arr << evolution_values[0]
#     end
#   end

#   def output
#     puts "no evolution" if answer_arr.empty?
#     puts answer_arr
#   end
# end

# attack, defence, agility = gets.split.map(&:to_i)
# num_times = gets.to_i
# args = { attack: attack, defence: defence, agility: agility, num_times: num_times }
# monsterevolution = MonsterEvolution.new(args)
# monsterevolution.substitution
# monsterevolution.output

# # paiza B017:手役の強さ--------------------------------------------
# cards = gets.chomp.chars.map(&:to_s)

# cards_num = cards.group_by(&:itself).transform_values(&:size)
# # p cards_num = cards_num.sort.to_h

# def includejudge?(cards_num)
#   cards_num.key?("*")
# end

# def organize(cards_num)
#   cards_num.delete("*")
# end

# if includejudge?(cards_num)
#   organize(cards_num)
#   p cards_num.length
#   case cards_num.length
#   when 0
#     puts "FourCard"
#   when 1
#     puts "FourCard"
#   when 2
#     puts "ThreeCard"
#   when 3
#     puts "OnePair"
#   when 4
#     puts "NoPair"
#   end
# else
#   case cards_num.length
#   when 1
#     puts "FourCard"
#   when 2
#     puts "ThreeCard" if cards_num.value?(3)
#     puts "TwoPair" if cards_num.value?(2)
#   when 3
#     puts "OnePair"
#   when 4
#     puts "NoPair"
#   end
# end

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class CardGame
#   attr_accessor :cards_num
#   attr_reader :cards

#   def initialize(args)
#     @cards = args[:cards]
#     @cards_num = create_hash
#   end

#   def create_hash
#     cards.group_by(&:itself).transform_values(&:size)
#   end
#   def includejudge?
#     cards_num.key?("*")
#   end

#   def organize
#     cards_num.delete("*")
#   end

#   def include_wildcard
#     case cards_num.length
#     when 0
#       puts "FourCard"
#     when 1
#       puts "FourCard"
#     when 2
#       puts "ThreeCard"
#     when 3
#       puts "OnePair"
#     when 4
#       puts "NoPair"
#     end
#   end

#   def not_include_wildcard
#     case cards_num.length
#     when 1
#       puts "FourCard"
#     when 2
#       puts "ThreeCard" if cards_num.value?(3)
#       puts "TwoPair" if cards_num.value?(2)
#     when 3
#       puts "OnePair"
#     when 4
#       puts "NoPair"
#     end
#   end

#   def judgement
#     if includejudge?
#       organize
#       include_wildcard
#     else
#       not_include_wildcard
#     end
#   end
# end

# cards = gets.chomp.chars.map(&:to_s)

# args = { cards: cards }
# cardgame = CardGame.new(args)
# cardgame.judgement

# # プロを目指す人のためのRuby入門 伊藤 淳一--------------------------------------------------------
# # クラスオブジェクトの特異メソッド
# class User
#   def initialize(name)
#       @name = name
#   end
#   #self.を付けるとクラスメソッドになる
#   def self.create_users(names)
#     names.map do |name|
#       User.new(name)
#     end
#   end
#   #これはインスタンスメソッド
#   def hello
#     "Hello,Iam #{@name}."
#   end
# end

# names = ['Alice','Bob','Carol']
# #クラスメソッドの呼び出し
# users = User.create_users(names)
# users.each do |user|
#   #インスタンスメソッドの呼び出し
#   puts user.hello
# end

# class Gate
#   STATIONS = [:umeda, :juso, :mikuni]
#   FARES = [150, 190]

#   def initialize(name)
#     @name = name
#   end

#   # enterメソッドは、引数として渡された切符(Ticket)に自分の駅名を保存する
#   def enter(ticket)
#     ticket.stamp(@name)
#   end

#   # exitメソッドは、引数として渡された切符(Ticket)から運賃(fare)と乗車駅を取得する
#   # 更に乗車駅と自分の駅名から運賃を割り出す。運賃がたりていればtrueを、そうでなければfalseを返す
#   def exit(ticket)
#     fare = calc_fare(ticket)
#     fare <= ticket.fare
#   end

#   def calc_fare(ticket)
#     from = STATIONS.index(ticket.stamped_at)
#     to = STATIONS.index(@name)
#     distance = to - from
#     FARES[distance - 1]
#   end
# end

# class Ticket
#   attr_reader :fare, :stamped_at

#   def initialize(fare)
#     @fare = fare
#   end

#   # Ticketクラスにstampというメソッドを用意する。このメソッドに駅名を渡すとその駅名がTicketクラスのインスタンスに保持される
#   # 乗車駅を取得する場合はTicketクラスのstamp_atメソッドを使う
#   def stamp(name)
#     @stamped_at = name
#   end
# end


# p umeda = Gate.new(:umeda)
# p juso = Gate.new(:juso)
# p mikuni = Gate.new(:mikuni)

# p ticket = Ticket.new(150)
# p umeda.enter(ticket)
# p mikuni.exit(ticket)
# p umeda.stamp(ticket)

# # paiza B096:爆弾の大爆発------------------------------------------------------------
# row, column = gets.split.map(&:to_i)

# all_bomb = row.times.map { gets.chomp.chars.map(&:to_s) }

# swap_all_bomb = all_bomb.transpose

# swap_all_bomb.each do |row_bomb|
#   row_bomb.fill("#") if row_bomb.include?("#")
# end

# all_bomb.each do |row_bomb|
#   row_bomb.fill("#") if row_bomb.include?("#")
# end

# fix_all_bomb = swap_all_bomb.transpose

# num = 0
# all_bomb.each_with_index do |bomb, index|
#   if !bomb.include?("#") && fix_all_bomb[index].include?("#")
#     num += fix_all_bomb[index].count("#")
#   end
# end

# p all_bomb.flatten.count("#") + num

# # # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class ExplosionRange
#   attr_accessor :bomb_position, :swap_bomb_position, :fix_bomb_range, :num
#   attr_reader :row

#   def initialize(args)
#     @bomb_position = args[:bomb_position]
#     @num = 0
#     @row = args[:row]
#   end

#   def replace(bomb_position)
#     @swap_bomb_position = bomb_position.transpose
#   end

#   def vertical_horizontal_replace
#     @fix_bomb_range = swap_bomb_position.transpose
#   end

#   def explosion_range(position)
#     position.each do |row_bomb|
#       row_bomb.fill("#") if row_bomb.include?("#")
#     end
#   end

#   def count_non_overlapping_parts(bomb_position)
#     explosion_range(bomb_position)
#     horizontal_vertical_replace
#     explosion_range(swap_bomb_position)
#     vertical_horizontal_replace
#     bomb_position.each_with_index do |bomb, index|
#       if !bomb.include?("#") && fix_bomb_range[index].include?("#")
#         self.num = fix_bomb_range[index].count("#")
#       end
#     end
#   end

#   def answer_output
#     p bomb_position.flatten.count("#") + num
#   end
# end

# row, _column = gets.split.map(&:to_i)
# bomb_position = row.times.map { gets.chomp.chars.map(&:to_s) }

# args = { bomb_position: bomb_position }
# explosionrange = ExplosionRange.new(args)
# explosionrange.count_non_overlapping_parts(bomb_position)
# explosionrange.answer_output

# # paiza C062:回転寿司のメロン-------------------------------------

# num_times = gets.to_i

# sushi_arr = num_times.times.map { gets.chomp.to_s }

# start_count = 0
# num_count = 0
# melon = 0
# sushi_arr.each.with_index(1) do |sushi, index|
#   if sushi == "melon" && melon == 0
#     start_count = index + 10
#     melon += 1
#   elsif sushi == "melon" && index > start_count
#     start_count = index + 10
#     melon += 1
#   end
# end

# p melon

# # paiza C022:ローソク足-------------------------------------
# days = gets.to_i

# stock_price = days.times.map { gets.split.map(&:to_i) }

# stock_swap = stock_price.transpose
# organize_price = []
# organize_price << stock_swap[0].first
# organize_price << stock_swap[1].last
# organize_price << stock_swap[2].max
# organize_price << stock_swap[3].min

# puts organize_price.join(" ")

# クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

# class StockPrice
#   attr_accessor :stock_swap, :stock_price, :organize_price
#   attr_reader :days

#   def initialize(args)
#     @days = args[:days]
#     @stock_price = []
#     @stock_swap = []
#     @organize_price = []
#   end

#   def stock_price_survey
#     self.stock_price = days.times.map { gets.split.map(&:to_i) }
#   end

#   def swap
#     self.stock_swap = stock_price.transpose
#   end

#   def all_organize_price
#     organize_price << stock_swap[0].first
#     organize_price << stock_swap[1].last
#     organize_price << stock_swap[2].max
#     organize_price << stock_swap[3].min
#   end

#   def answer_output
#     puts organize_price.join(" ")
#   end
# end

# days = gets.to_i
# args = { days: days }
# stockprice = StockPrice.new(args)
# stockprice.stock_price_survey
# stockprice.swap
# stockprice.all_organize_price
# stockprice.answer_output

# # FizzBuzz----------------------------------------------
# class FizzBuzz
#   attr_reader :int_num

#   def initialize(args)
#     @int_num = args[:int_num]
#   end

#   def calclation
#     if int_num % 15 == 0
#       puts "FizzBuzz"
#     elsif int_num % 5 == 0
#       puts "Buzz"
#     elsif int_num % 3 == 0
#       puts "Fizz"
#     else
#       puts int_num
#     end
#   end
# end

# int_num = gets.to_i
# args = { int_num: int_num }
# fizzbuzz = FizzBuzz.new(args)
# fizzbuzz.calclation

# # 1〜100までの数字をFizzBuzzで処理---------------------------
# (1..100).each do |num|
#   if (num % 15 ).zero?
#     puts "FizzBuzz"
#   elsif (num % 5).zero?
#     puts "Buzz"
#   elsif (num % 3).zero?
#     puts "Fizz"
#   else
#     puts num
#   end
# end

# # paiza C015:ポイントカードの計算---------------------------------
# num_times = gets.to_i

# receipt_array = []
# receipt_array = num_times.times.map { gets.split.map(&:to_i) }

# point = 0

# receipt_array.each do |receipt|
#   if (receipt - [3, 13, 23, 30, 31]).length == 1
#     point += (receipt[1] * 0.03).floor
#   elsif (receipt - [5, 15, 25]).length == 1
#     point += (receipt[1] * 0.05).floor
#   else
#     point += (receipt[1] * 0.01).floor
#   end
# end

# p point

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class PointCalc
#   POINT = 0
#   ONE_PERCENT = 0.01
#   THREE_PERCENT = 0.03
#   FIVE_PERCENT = 0.05
#   DAY_WITH_3 = [3, 13, 23, 30, 31]
#   DAY_WITH_5 = [5, 15, 25]

#   attr_accessor :receipt_array, :point
#   attr_reader :num_times

#   def initialize(args)
#     @receipt_array = []
#     @point = POINT
#     @num_times = args[:num_times]
#   end

#   def create_array
#     self.receipt_array = num_times.times.map { gets.split.map(&:to_i) }
#   end

#   def determine_the_day
#     receipt_array.each do |receipt|
#       if (receipt - DAY_WITH_3).length == 1
#         self.point += (receipt[1] * THREE_PERCENT).floor
#       elsif (receipt - DAY_WITH_5).length == 1
#         self.point += (receipt[1] * FIVE_PERCENT).floor
#       else
#         self.point += (receipt[1] * ONE_PERCENT).floor
#       end
#     end
#     p point
#   end
# end

# num_times = gets.to_i
# args = { num_times: num_times }
# pointcalc = PointCalc.new(args)
# pointcalc.create_array
# pointcalc.determine_the_day

# # paiza C095:合言葉---------------------------------------------------------
# password = gets.chomp.chars.map(&:to_s)

# string_array = gets.chomp.chars.map(&:to_s)

# all_pattern = password.permutation(password.length).to_a

# if password == string_array
#   puts "NO"
# elsif all_pattern.include?(string_array)
#   puts "YES"
# else
#   puts "NO"
# end

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class Password
#   attr_accessor :all_password_pattern, :string_array
#   attr_reader :initial_password

#   def initialize(args)
#     @initial_password = args[:initial_password]
#   end

#   def get_string
#     self.string_array = gets.chomp.chars.map(&:to_s)
#   end

#   def generate_all_permutations
#     self.all_password_pattern = initial_password.permutation.to_a
#   end

#   def password_judge
#     if initial_password == string_array
#       puts "NO"
#     elsif all_password_pattern.include?(string_array)
#       puts "YES"
#     else
#       puts "NO"
#     end
#   end
# end

# initial_password = gets.chomp.chars.map(&:to_s)
# args = { initial_password: initial_password }

# password = Password.new(args)
# password.get_string
# password.generate_all_permutations
# password.password_judge

# # paiza C056:テストの採点---------------------------------------------------------------
# num_times, passing_score = gets.split.map(&:to_i)

# student_grades = num_times.times.map { gets.split.map(&:to_i) }

# student_number = []
# student_grades.each.with_index(1) do |grade, index|
#   if grade.first - (grade.last * 5) < 0
#     grade[1] = 0
#     student_number << index if grade.first - (grade.last * 5) >= passing_score
#   else
#     student_number << index if grade.first - (grade.last * 5) >= passing_score
#   end
# end

# puts student_number

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class TestScoring
#   attr_accessor :student_number, :student_grades
#   attr_reader :num_times, :passing_score

#   def initialize(args)
#     @num_times = args[:num_times]
#     @passing_score = args[:passing_score]
#     @student_number = []
#   end

#   def create_array
#     self.student_grades = num_times.times.map { gets.split.map(&:to_i) }
#   end
#   def pass_judgment(grade, index)
#     student_number << index if grade.first - (grade.last * 5) >= passing_score
#   end

#   def process_grades
#     student_grades.each.with_index(1) do |grade, index|
#       if grade.first - (grade.last * 5) < 0
#         grade[1] = 0
#         pass_judgment(grade, index)
#       else
#         pass_judgment(grade, index)
#       end
#     end
#     puts student_number
#   end
# end

# num_times, passing_score = gets.split.map(&:to_i)

# args = { num_times: num_times, passing_score: passing_score  }
# testscoring = TestScoring.new(args)
# testscoring.create_array
# testscoring.process_grades

# # paiza C051:カード並べ--------------------------------------------
# card = gets.split(" ").map(&:to_i)

# all_card = card.permutation(4).to_a

# sum_num = []
# all_card.each do |cards|
#   sum_num << cards[0..1].join.to_i + cards[2..3].join.to_i
# end

# p sum_num.max

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class CardArrangement
#   attr_accessor :all_card_patterns, :sum_num_array
#   attr_reader :get_card

#   def initialize(args)
#     @get_card = args[:get_card]
#     @sum_num_array = []
#   end

#   def create_all_patterns
#     self.all_card_patterns = get_card.permutation(4).to_a
#   end

#   def card_calculation
#     all_card_patterns.each do |card|
#       sum_num_array << card[0..1].join.to_i + card[2..3].join.to_i
#     end
#     p sum_num_array.max
#   end
# end

# get_card = gets.split(" ").map(&:to_i)
# card_arrangement = CardArrangement.new(get_card: get_card)
# card_arrangement.create_all_patterns
# card_arrangement.card_calculation

# # paiza C074:【クロニクルコラボ問題】文章サイズ変更------------------------------------
# height, _width, fix_width = gets.split(" ").map(&:to_i)

# all_strings = height.times.map { gets.chomp.to_s }
# puts all_strings.join.scan(/.{1,#{fix_width}}/)

# # クラス化↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
# class ChangeTextSize
#   attr_reader :height, :fix_width, :all_strings

#   def initialize(args)
#     @height = args[:height]
#     @fix_width = args[:fix_width]
#     @all_strings = args[:all_strings]
#   end

#   def string_output
#     puts all_strings.join.scan(/.{1,#{fix_width}}/)
#   end
# end

# height, _width, fix_width = gets.split(" ").map(&:to_i)
# all_strings = height.times.map { gets.chomp.to_s }

# args = { height: height, fix_width: fix_width, all_strings: all_strings }
# ChangeTextSize.new(args).string_output

# # paiza Cランク
# # 方針
# # 解答を格納する変数 ans を置き、0 で初期化します。
# # 開始地点を先頭から順にずらしながら、t を s と同じ長さだけ切り取り、s と一致するかどうかを確認します。一致した場合は ans に 1 を加算します。
# # t の長さが len(t) 、s の長さが len(s) の時、t を s と同じ長さだけ切り取れるのは、切り取る範囲の先頭が 0 文字目から len(t) - len(s) 文字目の時のみであることに注意してください。
# # 最終的な ans を出力すれば OK です。

# pattern = gets.chomp
# string = gets.chomp

# result = 0
# (0..(string.size - pattern.size)).each do |i|
#   substring = string.slice(i, pattern.size)

#   result += 1 if substring == pattern
# end

# puts result

# # paiza Crank 5以上の整数の合計---------------------------------------------------
# loop = gets.chomp.to_i
# ans = 0

# (1..loop).each do |i|
#   num = gets.chomp.to_i

#   ans = ans + num if num >= 5
# end

# puts ans

# # 自分の回答---------------------------------------------------------------------
# num_times = gets.to_i

# int_array = num_times.times.map { gets.to_i }
# sum_answer = 0
# int_array.each { |i| sum_answer += i if i >= 5 }
# p sum_answer

# # paiza Crank 足すか掛けるか-------------------------------------------------------
# count = gets.chomp.to_i
# sum = 0

# (1..count).each do |i|
#   line = gets.chomp.split(" ")
#   if line[0].to_i == line[1].to_i
#     sum += line[0].to_i * line[1].to_i
#   else
#     sum += line[0].to_i + line[1].to_i
#   end
# end

# puts sum
# # 自分の回答---------------------------------------------------------------------
# loop = gets.chomp.to_i

# ans = 0
# (1..loop).each do |i|
#   first, second = gets.split.map(&:to_i)

#   if first == second
#     ans += first * second
#   else
#     ans += first + second
#   end
# end

# p ans

# # paiza Drank 文字列を切り取る---------------------------------------------------
# nums = gets.chomp.split(" ")
# str = gets.chomp

# ((nums[0].to_i - 1)..(nums[1].to_i - 1)).each { |i| print str[i] }

# print "\n"

# # 自分の回答---------------------------------------------------------------------
# start, finish = gets.split.map(&:to_i)
# start -= 1
# finish -= 1
# strings = gets.chomp.to_s
# puts strings.slice(start..finish)

# # paiza Crank 指定範囲だけ大文字--------------------------------------------------
# nums = gets.chomp.split(' ')
# str = gets.chomp

# (1..(str.size)).each do |i|
#   if nums[0].to_i <= i && i <= nums[1].to_i
#     print str[i - 1].upcase
#   else
#     print str[i - 1]
#   end
# end

# print "\n"

# # 自分の回答---------------------------------------------------------------------
# start, finish = gets.split.map(&:to_i)

# start -= 1
# finish -= 1

# strings = gets.chomp.to_s
# strings[start..finish] = strings.slice(start..finish).upcase

# puts strings

# # paiza Drank 文字の重複カウント------------------------------------------------
# query = gets.chomp
# source = gets.chomp

# puts source.count(query)

# # 自分の回答---------------------------------------------------------------------
# str = gets.chomp

# sentence = gets.chomp
# count = 0
# (0..(sentence.size - 1)).each do |i|
#   count += 1 if sentence[i] == str
# end
# p count

# # paiza Drank 5 文字列の n 文字目と n + 1 文字目------------------------------------
# # 自分の回答のみ-------------------------------------------------------
#  num = gets.to_i
#  str = gets.chomp
#  if str.slice(num).nil?
#   puts str.slice(num - 1)
#  else
#   puts "#{str.slice(num - 1)} " "#{str.slice(num)}"
#  end

# # paiza Crank 文字列の重複カウント---------------------------------------------------
# # 自分の回答のみ-------------------------------------------------------
# str = gets.chomp
# strings = gets.chomp
# count = 0
# (0..(strings.size - str.size)).each do |i|
#   temporary = strings.slice(i, str.size)
#   count += 1 if temporary == str
# end
# p count

# # paiza Crank アルファベット探し-----------------------------------------------
# first_str = gets.chomp
# second_str = gets.chomp
# third_str = gets.chomp
# p (first_str..second_str).to_a.include?(third_str)

# # paiza 解答
# string = []
# 3.times { string.push(gets.chomp) }
# puts string[0].ord <= string[2].ord && string[2].ord <= string[1].ord

# # paiza Crank 文字と整数の組のソート-----------------------------------------------
# num_times = gets.chomp.to_i

# array = []
# num_times.times { array.push(gets.chomp.split(" ")) }

# array.sort! do |a, b|
#   a.last.to_i <=> b.last.to_i
# end

# array.each do |str|
#   puts str.first
# end

# # paiza解答 
# num = gets.chomp.to_i
# array = {}
# # ↓この処理方法をマスターするべき！ (1..num).each と hashの数字に文字をぶっこむ方法
# (1..num).each do
#   line = gets.chomp.split(" ")
#   array[line[1].to_i] = line[0]
# end

# array = array.sort

# array.each { |ele| puts ele[1] }

# # paiza Crank
# num = gets.chomp.to_i
# array = {}

# (1..num).each do
#   values = gets.split(" ")
#   string = values[0]
#   points = values[1].to_i
#   p array[string]
#   if array[string]
#     p current = array[string]
#     p array[string] = current + points
#   else
#     p array[string] = points
#   end
# end
# p array
# array = array.sort_by { |_string, points| -points }

# array.each { |string, points| puts "#{string} #{points}" }


# # paiza Crank---------------------------------------------------------
# num = gets.to_i

# blood_array = {}
# (1..num).each do
#   name, blood_type = gets.chomp.split(" ")
#   blood_array[name] = blood_type
# end

# num2 = gets.to_i

# fortune_array = {}
# (1..num2).each do
#   blood_type, fortune = gets.chomp.split(" ")
#   fortune_array[blood_type] = fortune
# end

# blood_array.each do |a, b|
#   puts "#{a} #{fortune_array[b]}"
# end

# # 模範解答---------------------------------------------------------
# n = gets.chomp.to_i
# user2blood = {}
# (1..n).each do
#   user, blood = gets.chomp.split(" ")
#   user2blood[user] = blood
# end

# m = gets.chomp.to_i
# blood2result = {}
# (1..m).each do
#   blood, result = gets.chomp.split(" ")
#   blood2result[blood] = result
# end

# users = user2blood.keys
# users.each do |user|
#   blood = user2blood[user]
#   result = blood2result[blood]
#   puts "#{user} #{result}"
# end

# paiza 五目並べ（縦）------------------------------------------------
array = 5.times.map { gets.chomp.chars }

array = array.transpose

result = "D"
array.each do |ele|
  if ele.uniq == ["X"]
    result = "X"
  elsif ele.uniq == ["O"]
    result = "O"
  end
end

puts result

# 模範解答---------------------------------------------------------
board = []
result = "D"

# 盤面の初期化
(1..5).each { board.push(gets.chomp.split("")) }

(0..4).each do |i|
  o = 0
  x = 0
  board.each do |row|
    if row[i] == "O"
      o = o + 1
    elsif row[i] == "X"
      x = x + 1
    end
  end

  if o == 5
    result = "O"
    break
  elsif x == 5
    result = "X"
    break
  end
end

puts result

# paiza Crank 五目並べ（斜め）----------------------------------
array = 5.times.map { gets.chomp }

left_x = 0
left_o = 0
result = "D"
array.each_with_index do |ele, index|
  if ele[index] == "X"
    left_x += 1
  elsif ele[index] == "O"
    left_o += 1
  end
end

new_array = array.map { |ele| ele.reverse }
right_x = 0
right_o = 0
new_array.each_with_index do |ele, index|
  if ele[index] == "X"
    right_x += 1
  elsif ele[index] == "O"
    right_o += 1
  end
end

if left_x == 5 || right_x == 5
  result = "X"
elsif left_o == 5 || right_o == 5
  result = "O"
end

puts result

# paiza Brank 五目並べ-----------------------------------------
array = 5.times.map { gets.chomp.chars }

result = "D"
array.each do |ele|
  if ele.uniq == "."
    next
  elsif ele.uniq.count == 1
    result = ele.uniq
    break
  end
end

vertical_array = array.transpose

vertical_array.each do |ele|
  if ele.uniq == "."
    next
  elsif ele.uniq.count == 1
    p result = ele.uniq
    break
  end
end

left_x = 0
left_o = 0
array.each_with_index do |ele, index|
  if ele[index] == "X"
    left_x += 1
  elsif ele[index] == "O"
    left_o += 1
  end
end

new_array = array.map { |ele| ele.reverse }
right_x = 0
right_o = 0
new_array.each_with_index do |ele, index|
  if ele[index] == "X"
    right_x += 1
  elsif ele[index] == "O"
    right_o += 1
  end
end

if left_x == 5 || right_x == 5
  result = "X"
elsif left_o == 5 || right_o == 5
  result = "O"
end

puts result
