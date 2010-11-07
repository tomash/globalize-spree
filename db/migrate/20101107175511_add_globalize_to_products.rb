class AddGlobalizeToProducts < ActiveRecord::Migration
  def self.up
    Product.create_translation_table! :name => :string, :description => :text
    
    # save old values into brand new translations table
    Product.migrate_translated_fields
  end

  def self.down
    Product.drop_translation_table!
  end
end
