#rock = 0; scissor = 1; paper = 2

class Player
  def hand
    puts "数字を入力してください。[0]グー/[1]チョキ/[2]パー"
    player_hand = gets.to_i
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    if player_hand == 0 || player_hand == 1 || player_hand == 2
      p player_hand
    else
      puts "0〜2の数字を入力してください。"
      return player_hand = gets.to_i
    end
  end
end



class Enemy
  def hand
    # グー、チョキ、パーの値をrandomに出力するメソッドの処理をこの中に作成する
    random = Random.new
    enemy_hand = random.rand(0..2)
    p enemy_hand
  end
end



class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    enemy_no_hand = ["グー","チョキ","パー"]
    point = ( player_hand - enemy_hand + 3 ) %3
    if  point == 2
      puts "相手は#{enemy_no_hand[enemy_hand]}、あなたの勝ちです。"
    elsif point  == 1
      puts "相手は#{enemy_no_hand[enemy_hand]}、あなたの負けです。"
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    else
      puts "あいこでしょう。"
      player = Player.new
      enemy = Enemy.new
      self.pon(player.hand, enemy.hand)
    end
  end
end



player = Player.new
enemy = Enemy.new
janken = Janken.new


# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)