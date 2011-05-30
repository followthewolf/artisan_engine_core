require 'rails/generators/active_record'

module ArtisanEngine
  module Generators
    module Core
      class InstallGenerator < ActiveRecord::Generators::Base

        argument    :name, :default => 'core'
        source_root File.expand_path( '../templates', __FILE__ )

        def install_friendly_id
          Rails::Generators.invoke 'friendly_id'
          sleep 1 # to prevent duplicate timestamps.
        end
        
      end
    end
  end
end