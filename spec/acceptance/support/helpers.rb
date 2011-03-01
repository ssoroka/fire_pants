# Put helper methods you need to be available in all tests here.
module HelperMethods
  def login_as(user)
    visit '/users/sign_in'
    fill_in 'user[email]', :with => user.email
    fill_in 'user[password]', :with => user.password
    click_button 'Sign in'
  end
end

RSpec.configuration.include HelperMethods, :type => :acceptance
