Taxon.class_eval do
  translates :name
  
  extend Globalize::Migratable
end
