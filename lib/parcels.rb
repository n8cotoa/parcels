class Parcel
  attr_accessor(:volume)
  def initialize(length, width, height, shipping)
    @l = length.to_i
    @w = width.to_i
    @h = height.to_i
    @volume = volume.to_f
    @shipping = shipping.to_i
  end

  def volume()
    @volume = @l * @w * @h
  end

  def cost_to_ship()
    cost = 0
    cost += (((@volume * 1) / 100) * @shipping)
    cost
  end
end
