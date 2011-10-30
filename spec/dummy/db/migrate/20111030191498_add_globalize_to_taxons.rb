class AddGlobalizeToTaxons < ActiveRecord::Migration
  def self.up
    Taxon.create_translation_table! :name => :string, :description => :text
    
    # save old values into brand new translations table
    Taxon.migrate_translated_fields
  end

  def self.down
    Taxon.drop_translation_table!
  end
end
