class Parcel
  attr_accessor(:volume)
  def initialize(length, width, height)
    @l = length.to_i
    @w = width.to_i
    @h = height.to_i
    @volume = volume.to_i
  end

  def volume()
    @volume = @l * @w * @h
  end

  def cost_to_ship()
    cost = 0
    cost += @volume * 5
    cost
  end
end
