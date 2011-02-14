require File.expand_path(File.dirname(__FILE__) + '/acceptance_helper')

feature "Posts as a guest" do
  scenario "view posts" do
    Factory(:post, :title => 'a brave new world')
    visit '/'
    page.should have_no_selector('a#create_post')
    page.status_code.should == 200
    within('.posts') do
      page.should have_content('a brave new world')
    end
  end
end

feature "Posts as a user" do
  background do
    user = Factory(:user, :password => 'frankenstein')
    login_as(user.email, 'frankenstein')
  end
  
  scenario "I should be able to create a new post" do
    visit '/'
    click_link('Create New Post')
    page.should have_selector('form[target="/posts"]')
  end
end
