class Unit
  attr_reader :name, :health, :movement, :actions
  attr_accessor :x, :y

  def initialize (player, name)
    @player = player
    @name = name
    @health = 10
    @movement = 2
    @actions = []

  end

  def hurt(damage)
    return if dead?
    @health -= damage
    die if dead?
  end

  def dead?
    return @health <= 0
  end

  def alive?
    return ! dead?
  end

  def die
    player.game.message_all("#{name} died.")
  end

  def enemy?(other)
    (other != nil) && (player != other.player)
  end

  def friend?(other)
    (other != nil) && (player == other.player)
  end

  def done?; @done; end
  def done; @done = true; end
  def new_turn; @done = false; end

  def move (x, y)
    @player.game.map.move(@x, @y, x, y)
    @x = x
    @y = y
  end
end
