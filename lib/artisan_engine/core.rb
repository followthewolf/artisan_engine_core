%w( rdiscount haml compass jquery-rails barista 
    inherited_resources friendly_id
    artisan_engine/core ).each { |g| require g }

module ArtisanEngine
  
  # Define the ArtisanEngine's root path.
  def self.root
    Pathname.new( File.expand_path '../../../../', __FILE__ )
  end
  
  module Core

    # ------------------ Autoload Necessary Modules ------------------ #
    
    autoload :TestHelpers,       'artisan_engine/core/test_helpers' if Rails.env.test?
    autoload :InflectionHelpers, 'artisan_engine/core/inflection_helpers'
    
    # ------------------------- Vroom vroom! ------------------------- #
    
    class Engine < Rails::Engine
      config.before_configuration do
        config.action_view.javascript_expansions[ :defaults ] += [ "artisan_engine/core/core", 
                                                                   "artisan_engine/core/colorbox" ]
      
        ActionView::Helpers::AssetTagHelper.register_stylesheet_expansion :artisan_engine       => [ "artisan_engine/core/back",
                                                                                                     "artisan_engine/core/embed/colorbox/colorbox" ],
                                                                          :artisan_engine_front => [ "artisan_engine/core/front",
                                                                                                     "artisan_engine/core/embed/colorbox/colorbox" ],
                                                                          :artisan_engine_print => [ "artisan_engine/core/print" ],
                                                                          :artisan_engine_ie    => [ "artisan_engine/core/ie" ]
      end
    
      config.to_prepare do
        ::Symbol.send :include, ArtisanEngine::Core::InflectionHelpers::SymbolInflections
        ::Class.send :include, ArtisanEngine::Core::InflectionHelpers::ClassInflections
      end
    end

  end
end