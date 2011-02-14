# Put helper methods you need to be available in all tests here.
module HelperMethods
  def login_as(email, password)
    visit '/users/sign_in'
    fill_in 'user[email]', :with => email
    fill_in 'user[password]', :with => password
    click_button 'Sign in'
  end
end

RSpec.configuration.include HelperMethods, :type => :acceptance
