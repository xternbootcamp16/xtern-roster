class Person < ActiveRecord::Base
  has_many :rivalries, dependent: :destroy
  has_many :rivals, through: :rivalries, table_name: 'people'
  has_many :perceived_rivalries, class_name: 'Rivalry', foreign_key: 'rival_id', dependent: :destroy
  has_many :haters, through: :rivalries, class_name: 'Person', foreign_key: 'person_id'

  validates :name, presence: true
end
