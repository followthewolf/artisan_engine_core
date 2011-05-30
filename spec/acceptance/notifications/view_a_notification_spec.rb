require File.expand_path( '../../acceptance_helper', __FILE__ )

feature "See a Notification", %q{
  In order to see the results of my actions
  As an ArtisanEngine user
  I want to be presented with notifications.
} do
  
  scenario "I can see various types of notifications" do
    # When I visit a page with notifications,
    visit '/manage/notifications_demo'
    
    # Then I should see the various kinds of notifications.
    page.should have_selector '.alert.notification'
    page.should have_selector '.notice.notification'
  end
end