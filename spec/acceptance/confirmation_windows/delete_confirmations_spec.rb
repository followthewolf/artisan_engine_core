require File.expand_path( '../../acceptance_helper', __FILE__ )

feature "Delete Confirmations", %q{
  To keep from accidentally deleting data
  As an artisan
  I want to see a confirmation window when I click a delete button.
} do
  
  background do
    # Given I am on a page with a delete button,
    visit '/manage/confirmation_demo'
    
    # And I have clicked the delete button,
    click_button 'Delete'
  end
  
  scenario "I see a confirmation window when I click a delete button", :js => true do
    # Then I should be see a confirmation window.
    page.should have_selector '.confirmation'
  end
  
  scenario "I can decline the action from the confirmation window", :js => true do
    # When I click the No button,
    decline_confirmation
    
    # Then the confirmation window should close,
    sleep 0.5 and page.should have_no_selector '.confirmation'
    
    # And nothing should change.
    page.should have_content 'Confirmation Demo'
  end
  
  scenario "I can accept the action from the confirmation window", :js => true do
    # When I click the Yes button,
    accept_confirmation
    
    # Then the modal confirmation window should close,
    sleep 0.5 and page.should have_no_selector '.confirmation'
    
    # And the action should proceed.
    page.should have_content 'Confirmed!'
  end
end