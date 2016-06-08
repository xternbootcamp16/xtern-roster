class Rivalry < ActiveRecord::Base
  belongs_to :person
  belongs_to :rival, foreign_key: 'rival_id', class_name: 'Person'
end
