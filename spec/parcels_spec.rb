require 'rspec'
require 'pry'
require 'parcels'

describe('#parcels') do
  it("Program will calculate the volume of the package") do
    new_package = Parcel.new(2, 3, 4)
    expect(new_package.volume).to(eq(24))
  end
  it("Program will calculate cost to ship") do
    new_package = Parcel.new(2, 3, 4)
    expect(new_package.cost_to_ship).to(eq(120))
  end
end
