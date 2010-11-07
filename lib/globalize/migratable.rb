module Globalize::Migratable
  def migrate_translated_fields
    I18n.locale = :en
    self.all.each do |entity|
      puts entity.id
      entity.translated_attributes.each do |k,v|
        entity[k] = entity.read_attribute_before_type_cast(k)
        puts "-- #{k} => #{entity[k]}"
      end
      entity.save
    end
    true
  end
end
