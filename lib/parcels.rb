class Parcel
  attr_accessor(:volume)
  def initialize(length, width, height)
    @l = length.to_i
    @w = width.to_i
    @h = height.to_i
    @volume = volume.to_f
  end

  def volume()
    @volume = @l * @w * @h
  end

  def cost_to_ship()
    cost = 0
    cost += ((@volume * 1) / 100).round(2)
    cost
  end
end
