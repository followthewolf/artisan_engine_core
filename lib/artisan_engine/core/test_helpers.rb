module ArtisanEngine
  module Core
    module TestHelpers
      module Integration
        def accept_confirmation
          sleep 0.5 and click_button 'Yes'
        end
        
        def decline_confirmation
          sleep 0.5 and click_button 'No'
        end
      end
    end
  end
end