class Parcel
  def initialize(length, width, height)
    @l = length
    @w = width
    @h = height
  end

  def volume()
    @volume = @l * @w * @h
  end
end
