class Person < ActiveRecord::Base
  has_many :rivalries
  has_many :rivals, through: :rivalries, table_name: 'people'
end
