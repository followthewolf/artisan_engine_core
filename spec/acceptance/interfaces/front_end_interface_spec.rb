require File.expand_path( '../../acceptance_helper', __FILE__ )

feature "Front-End Interface", %q{
  In order to view content on the website
  As a patron
  I want to visit the front-end interface.
} do
  
  scenario "When I visit a front-end page, I see the front-end interface" do
    # When I visit a front-end page,
    visit '/'
    
    # Then I should see the front-end interface.
    page.should have_content 'Front-End'
  end
end