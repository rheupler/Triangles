require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangles path', {:type => :feature}) do
  it('processes user entry and returns type of triangle') do
    visit('/')
    fill_in('Side1', :with => "2")
    fill_in('Side2', :with => "2")
    fill_in('Side3', :with => "2")
    click_button('Send')
    expect(page).to have_content('equilateral')
  end
end
