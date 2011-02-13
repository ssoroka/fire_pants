require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Create Account" do
  scenario "Cannot sign up after one user has been created" do
    Factory(:user)
    lambda {
      visit '/users/sign_up'
    }.should raise_error(ActionController::RoutingError)
    
    # page.status_code.should == 404
    # fill_in 'users[email]', :with  => 'random@doe.com'
    # fill_in 'users[password]', :with  => 'yarr123'
    # fill_in 'users[password_confirmation]', :with  => 'yarr123'
    # click_button 'Sign up'
  end
end
