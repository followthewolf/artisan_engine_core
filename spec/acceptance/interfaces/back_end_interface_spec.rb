require File.expand_path( '../../acceptance_helper', __FILE__ )

feature "Back-End Interface", %q{
  In order to manage the content of my website
  As an artisan
  I want to visit the back-end interface.
} do
  
  scenario "When I visit a back-end page, I see the back-end interface" do
    # When I visit a back-end page,
    visit '/manage'
    
    # Then I should see the back-end interface.
    page.should have_content 'Back-End'
  end
end