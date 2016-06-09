class Rivalry < ActiveRecord::Base
  belongs_to :person
  belongs_to :rival, foreign_key: 'rival_id', class_name: 'Person'

  validates :person_id, :rival_id, presence: true
end
