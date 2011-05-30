require File.expand_path( '../../acceptance_helper', __FILE__ )

feature "Dismiss a Notification", %q{
  In order to clean up my screen
  As an ArtisanEngine user
  I want to dismiss a notification.
} do
  
  scenario "I can dismiss a notification", :js => true do
    # When I visit a page with an alert notification,
    visit '/manage/notifications_demo'
    
    # And I click the Dismiss link in the alert notification,
    within '.alert' do
      click_link 'Dismiss'
    end
    
    # Then I should not see any alert notifications.
    page.should have_no_selector '.alert', :visible => true
  end
end