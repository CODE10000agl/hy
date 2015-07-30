print "hello world! with ruby" #改行なし
puts "hello world(puts)" #改行付き

msg = "hello wooorld"

ADMIN_EMAIL = "yoshiki.h.aa@m.titech.ac.jp"

p msg  #データ形式表示

p msg.length

=begin
コメントは複数行書くことができます。
やったね！
=end

#変数：　データにつけるラベル
#定数：　変更されないデータにつけるラベル

#データ（オブジェクト）
# -メソッド（命令）公式レファレンスからひこう！
#　メソッドはクラス単位で定義されている。
# 文字列　- String Class
# 数値　-　Numeric Class
x=100_000_000 #　_は無視される->桁区切りに使える
y=20.5
z=1/3r # = Rational(1,3) 分数値のそのまま扱い

p x % 3 #3で割った商のみ
p y ** 3 #3乗
p z *6 #分数演算。通常は0.333333で扱われるが…
p y -= 10
p y.round #四捨五入メソッド

#String Class
name = "taguchi"
hoge = "string test,\t #{name}\n #{name},\t string test\n" #変数展開、特殊文字
hogehoge = 'string test, #{name}'
puts hoge
puts hogehoge
puts hoge * 5


#! 破壊的メソッド(bang method)
#? 真偽値を返すメソッド（boolean method）:true/false

puts hogehoge.upcase
puts hogehoge
puts hogehoge.upcase!
puts hogehoge
p hoge.empty?

hogege = ""
p hogege.empty?

puts "\n\n\n\n\n\n\n\n"

#Array Class
#sales_1, sales_2 ...
sales = [1,2,3,4,5,6]
puts = sales
p sales[0..3] #末尾要素を含む
p sales[0...3] #含まない
p sales[-1] #ケツから
p sales[3,2] #3番めから2個分

puts "let's change the array 'sales' "
sales[0...3] = [5,6,7]
p sales
sales[3, 0] = [8,9,10,11]
p sales
sales[-2, 2] =[]
p sales
p sales.size
p sales.sort.reverse
p sales.push(100)

#Hash object（連想配列）
#key value

sales2 = {"john" => 200, "tom" => 300}
p sales2["john"]

sales3 = {:john => 300, :tom => 300}
puts sales3[:john]

sales4 = {john: 300, tom: 400}
puts sales4[:john]

puts sales4.keys
puts sales3.values
puts sales4.has_key? (:kyte)

puts "let's use 'store' for the array 'sales4' "

sales4.store(:daniel, 100)
sales4.store(:lin, 200)
sales4.store(:kyte, 402)

puts sales4
puts sales4.has_key?(:kyte)


# object transition

aa = sales4[:john]
bb = sales4[:lin]
cc = sales4[:daniel]

puts aa + bb
puts aa.to_s + bb.to_s #to String

puts sales4.to_a #to Array

# %記法

doc1 = %Q("Hello, How are you?")
doc2 = %(this is #{sales4} )

puts doc1
puts doc2



puts "\n\n\n\n\n\n\n\n"


score = 80
if score > 75
   puts "Your score was #{score}. Passed."
elsif score >50
   puts "Your score was #{score}. So-so."
else
   puts "Oh,,,"
end

score = 59
   if score > 75
      puts "Your score was #{score}. Passed."
   elsif score >50
      puts "Your score was #{score}. So-so."
   else
      puts "Oh,,,"
end

X = 0
if X #==true が省略されている。
  puts "..."
end


signal = "red"

case signal
when "red"
  puts "HALT!"
when "green", "blue"
  puts "GO!"
when "yellow"
  puts "caution!"
else
  puts "signal is invalid"
end
#繰り返し処理
#times
#while


3.times do |i|

  puts "#{i}: hello"
end

j=0
while j < 5 do
  puts "#{j}: Bye-bye!"
  j += 1;
end

#if, times, whileに対してキチンどendをつけて閉じましょう！

for ii in 0..6 do
  p ii
end

colorarray = ["red","blue", "pink"]

for color in colorarray do
  puts color
end

sales4 .each do |name, sales|
  puts "#{name} bought #{sales} yen"
end


#関数的メソッド

def sayHi(name, idnum)
  puts "Hi!" + name
  puts "Your ID is : " + idnum.to_s
end

sayHi("Tom", 103904)

#クラス　（オブジェクトの設計図）
#クラス内のめそっど…インスタンス

class UserClass

  def initialze(input_name)
    @input_name = Jonny
  end

  def sayHo
    puts "Ho-ho! You're #{@input_name}, right?"
  end
  
end


=begin
######################################
# PID List(Hash) generation Function #
######################################


pidList = {:initial_pid_hoge => 0}

TODO: You have to learn how to inherit Hash
TODO: Make the datatype clear. Frequently the data isn't fit.


def IDgenerator(userName = :none)
  unableToUse = "Sorry... The name you put cannot be used."

#  userNameExsistance = pidList.has_key?(userName)
   userNameExsistance=false
  if userNameExsistance = true
    return unableToUse
  end

  loop do
  pidGenerated = rand(999999)
# pidExsistance = pidList.has_key?(pidGenerated)
  pidExsistance = false
    if pidExsistance = false
      break
    end
  end
return newUserNameAndPidQQQ = {userName => pidGenerated}
end

p IDgenerator(:Grace)

newUserNameAndPid = IDgenerator(:Grace)
pidList.merge!(newUserNameAndPid)
newUserNameAndPid = IDgenerator(:Vasques)
pidList.merge!(newUserNameAndPid)
newUserNameAndPid = IDgenerator(:Jorge)
pidList.merge!(newUserNameAndPid)
newUserNameAndPid = IDgenerator(:Mark)
pidList.merge!(newUserNameAndPid)
newUserNameAndPid = IDgenerator(:Jessy)
pidList.merge!(newUserNameAndPid)

puts pidList

=end
