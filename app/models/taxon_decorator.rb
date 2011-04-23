Taxon.class_eval do
  translates :name, :description
  
  extend Globalize::Migratable
end
