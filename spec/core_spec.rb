require 'spec_helper'

describe ArtisanEngine::Core do
  it "is an Engine" do
    ArtisanEngine::Core::Engine.ancestors.should include Rails::Engine
  end
  
  it "defines an ApplicationController for testing purposes" do
    ApplicationController.should be_a Class
  end
  
  context "includes javascript expansions: " do
    it "artisan_engine/core/core.js" do
      ActionView::Helpers::AssetTagHelper.javascript_expansions[ :defaults ]
      .should include "artisan_engine/core/core"
    end
    
    it "artisan_engine/core/jquery.fancybox-1.3.4.js" do
      ActionView::Helpers::AssetTagHelper.javascript_expansions[ :defaults ]
      .should include "artisan_engine/core/jquery.fancybox-1.3.4.pack"
    end
  end
  
  context "includes stylesheet expansions: " do
    context "artisan_engine: " do
      it "artisan_engine/core/back.css" do
        ActionView::Helpers::AssetTagHelper.stylesheet_expansions[ :artisan_engine ]
        .should include "artisan_engine/core/back"
      end
      
      it "artisan_engine/core/embed/fancybox/jquery.fancybox-1.3.4.css" do
        ActionView::Helpers::AssetTagHelper.stylesheet_expansions[ :artisan_engine ]
        .should include "artisan_engine/core/embed/fancybox/jquery.fancybox-1.3.4"
      end
    end
    
    context "artisan_engine_front: " do
      it "artisan_engine/core/front.css" do
        ActionView::Helpers::AssetTagHelper.stylesheet_expansions[ :artisan_engine_front ]
        .should include "artisan_engine/core/front"
      end
      
      it "artisan_engine/core/embed/fancybox/jquery.fancybox-1.3.4.css" do
        ActionView::Helpers::AssetTagHelper.stylesheet_expansions[ :artisan_engine_front ]
        .should include "artisan_engine/core/embed/fancybox/jquery.fancybox-1.3.4"
      end
    end
    
    context "artisan_engine_print: " do
      it "artisan_engine/core/print.css" do
        ActionView::Helpers::AssetTagHelper.stylesheet_expansions[ :artisan_engine_print ]
        .should include "artisan_engine/core/print"
      end
    end
    
    context "artisan_engine_ie: " do
      it "artisan_engine/core/ie.css" do
        ActionView::Helpers::AssetTagHelper.stylesheet_expansions[ :artisan_engine_ie ]
        .should include "artisan_engine/core/ie"
      end
    end
  end
end

describe "ArtisanEngine::Core Test/Development Environment" do
  it "initializes the main ArtisanEngine module and the ArtisanEngine::Core module" do
    ArtisanEngine.should be_a Module
    ArtisanEngine::Core.should be_a Module
  end
  
  it "compiles its stylesheets into ArtisanEngine's stylesheets/artisan_engine/core directory" do
    Compass.configuration.css_path.should == "#{ ArtisanEngine.root }/lib/generators/artisan_engine/templates/assets/stylesheets/artisan_engine/core"
  end
  
  it "does not compile stylesheets during tests" do
    Sass::Plugin.options[ :never_update ].should be_true
  end
  
  it "compiles its javascripts into ArtisanEngine's javascripts/artisan_engine/core directory" do
    Barista.output_root.should == Pathname.new( "#{ ArtisanEngine.root }/lib/generators/artisan_engine/templates/assets/javascripts/artisan_engine/core" )
  end
end