require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Create Account" do
  scenario "Cannot sign up after one user has been created" do
    Factory(:user)
    lambda {
      visit '/users/sign_up'
    }.should raise_error(ActionController::RoutingError)
    
    # page.status_code.should == 404
    # fill_in 'user[email]', :with  => 'random@doe.com'
    # fill_in 'user[password]', :with  => 'yarr123'
    # fill_in 'user[password_confirmation]', :with  => 'yarr123'
    # click_button 'Sign up'
  end
  
  scenario "Can sign up if there are no users" do
    User.count.should be_zero
    
    lambda {
      visit '/users/sign_up'
    }.should_not raise_error(ActionController::RoutingError)

    page.status_code.should == 200
    fill_in 'user[email]', :with  => 'random@doe.com'
    fill_in 'user[password]', :with  => 'yarr123'
    fill_in 'user[password_confirmation]', :with  => 'yarr123'
    click_button 'Sign up'
    
    page.should have_content('You have signed up successfully')
  end
end
