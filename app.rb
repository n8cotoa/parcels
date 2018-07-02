require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcels')

get('/') do
  @description = 'Check how much it will cost to ship it'
  erb(:input)
end

get('/output') do
  @length = params.fetch('length')
  @width = params.fetch('width')
  @height = params.fetch('height')
  @shipping = params.fetch('speed')
  new_package = Parcel.new(@length, @width, @height, @shipping)
  @package_cost = "Your package will cost $#{'%.02f' % new_package.cost_to_ship} to ship."
  erb(:output)
end
