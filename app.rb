require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  side1 = params.fetch('Side1').to_i()
  side2 = params.fetch('Side2').to_i()
  side3 = params.fetch('Side3').to_i()
  @results = Triangle.new(side1, side2, side3).kind?
  erb(:results)
end
