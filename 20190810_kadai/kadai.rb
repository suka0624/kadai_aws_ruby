# コンソールに「HelloWorld」を表示してみよう
# ただし、変数greetingを定義して、そこに値を代入してから表示する事。
puts "\r***** 1 ***********************************"
greeting = "HelloWorld"
puts greeting

# コンソールに1～10まで足した結果を表示してみよう。
# ただし、for文を使う事。
puts "\r***** 2 ***********************************"
total = 0
for num in 1..10
  total += num
end
puts "total => #{total}"

# コンソールに「引数が0なら偽。
# 引数が1なら真」と表示してみよう。if文で表現できる。
# 出来ればメソッドも用意して。
puts "\r***** 3 ***********************************"
def checkTrueFalse(arg)
  if arg == 0
    puts "argment: #{arg} => 偽"
  elsif arg == 1
    puts "argment: #{arg} => 真"
  end
end
checkTrueFalse(0)
checkTrueFalse(1)

# 配列を扱ってみよう。
# 任意の配列に値を詰め込んで、その内容をコンソールに表示してみよう。
# 配列に入れる型を色々変えて遊んでみよう。
puts "\r***** 4 ***********************************"
colors = Array["Red", "Blue", "Yellow"]
for color in colors
  puts color
end
puts "\r"

numbers = Array[1,2,3]
for num in numbers
  puts num
end

# ・Communicationというクラスを作ってみよう。
# ・greetというメソッドを定義してみよう。
# ・クラスを継承して新しいサブクラスを作ってみよう。
#   WorkplaceCommunication(職場)とか。
# ・greetというメソッド内でHelloという言葉を受けたら、Helloと返す処理を実装してみよう。
# ・職場かどうかを判断するメソッドを作って、職場じゃなければ挨拶しないようにしてみよう（酷い）
# ・Communicationクラスに新しく話しかけてきた人が誰か(同僚とか上司とか)で応答を返すか、
#   例外を返すような処理を作ってみよう。
# ・例外の条件や例外じゃなかった場合にどういった応答を返すかは好きなように作ってOK。
#   メソッドの使い方、if文や例外処理の使い方に慣れてみよう。
# ・例外クラスは自作も可能。
#   何か面白い例外を継承して、勝手に自作してもいいし、既存の例外クラスを使ってもいい。
#   とにかく例外をraiseしてみよう。
puts "\r***** 5 ***********************************"

class Communication
  def greet(msg)
    puts msg
  end
end

class WorkplaceCommunication < Communication
	def initialize(place)
  	@place = place
	end

	def greet(msg, who)
  	begin
    	# 職場の場合
      if @place.include?("work")
      	# 同僚の場合
      	if who == "colleague"
        	puts msg

        # 上司の場合
        elsif who == "boss"
          raise
        end
                
      # 職場でない場合
      elsif
        puts "... (挨拶しない)"
      end
    rescue
      puts "上司が挨拶してきました！(例外処理)"
    end
  end
end

puts("- 職場の同僚の場合")
wpc = WorkplaceCommunication.new("work_place")
wpc.greet("Hello", "colleague")

puts("\n- 職場でない場合")
family = WorkplaceCommunication.new("family")
family.greet("Hello", "Brother")

puts("\n- 職場の上司の場合")
wpc = WorkplaceCommunication.new("work_place")
wpc.greet("Hello", "boss")
