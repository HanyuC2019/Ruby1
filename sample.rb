#puts 数字を入力してください。(0: グー, 1: チョキ, 2: パー)
#rock = 0; scissor = 1; paper = 2


class Player
  puts "[0]グー/[1]チョキ/[2]パー"
  def hand(x)
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    @player_hand = x
    x = gets.to_i
  end
end

class Enemy
  def hand(y)
    # グー、チョキ、パーの値をrandomに出力するメソッドの処理をこの中に作成する
    @enemy_hand = y
    y = gets.to_i
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    @player_hand = player.hand(x)
    @enemy_hand = enemy.hand(y)

    if x >= 0 && x <=2 && y >= 0 && y <=2 && (x-y)+3%3 == 2
      puts "あなたの勝ちです。"
    elsif x >= 0 && x <=2 && y >= 0 && y <=2 && (x-y)+3%3 == 1
      puts "あなたの負けです。"
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    else
      puts "0〜2の数字を入力してください。"
    end
  #--------------------
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる(這個真的不知道誒誒誒誒誒)
    
  end
end


player = Player.new
enemy = Enemy.new
janken = Janken.new


# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)