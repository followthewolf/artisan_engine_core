module ArtisanEngine
  module Core
    module InflectionHelpers
      
      module SymbolInflections
        
        # Transforms :active_record to ActiveRecord.
        def to_class
          to_s.classify.constantize
        end
        
        # Transforms :active_record to "active_records"
        def to_plural_s
          to_s.pluralize
        end
        
      end
      
      module ClassInflections
        
        # Transforms ActiveRecord to "active_records".
        def to_plural_s
          to_s.underscore.pluralize
        end
        
      end
      
    end
  end
end