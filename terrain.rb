class Terrain
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def rep
    [@name]
    # returns a list of terrains
  end
end

forest = Terrain.new("Forest")
grass = Terrain.new("Grass")
mountains = Terrain.new("Mountains")
plains = Terrain.new("Plains")
water = Terrain.new("Water")