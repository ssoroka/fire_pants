require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Login" do

  scenario "Should be able to login" do
    Factory.create(:user, :email => email = 'abc@test.com', :password => password = 'grantmewishes')
    visit '/users/sign_in'
    fill_in 'user[email]', :with => email
    fill_in 'user[password]', :with => password
    click_button 'Sign in'
    page.should have_content('Signed in successfully')
  end
  
  scenario "logging in with a bad password" do
    Factory.create(:user, :email => email = 'abc@test.com', :password => password = 'grantmewishes')
    visit '/users/sign_in'
    fill_in 'user[email]', :with => email
    fill_in 'user[password]', :with => password + '1'
    click_button 'Sign in'
    page.should have_content('Invalid email or password')
  end
end
