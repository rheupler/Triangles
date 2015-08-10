require('sinatra')
require('sintra-reloader')
require('.lib/triangles')

get('/') do
  erb(:index)
end

get('/results') do
  erb(:results)
end
