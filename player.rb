
class Player

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    return @lives += 1
  end

  def collect_treasure
    collect_treasure_stats = [@gold_coins, @lives]
    @gold_coins += 1
    if @gold_coins % 10 == 0
      return level_up
    end
    return collect_treasure_stats
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    life_stats = [@gold_coins, @health_points, @lives]
    return life_stats
  end

  def do_battle(damage)
    damage_stats = [@lives, @health_points]
    @health_points -= damage
    if @health_points < 1
      @lives -= 1 && @health_points = 10
      return damage_stats
    end

    if @lives < 1
      return restart
    end
  end
end

player1 = Player.new

puts player1.level_up
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.collect_treasure
puts player1.do_battle(10)
puts player1.restart
