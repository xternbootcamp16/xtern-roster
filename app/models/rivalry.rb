class Rivalry < ActiveRecord::Base
  belongs_to :person
  belongs_to :rival, foreign_key: 'rival_id', class_name: 'Person'

  validates :person_id, presence: true
  validates :pokemon_url, presence: true, unless: :human_rival?
  validates :rival_id, presence: true, unless: :pokemon_rival?

  protected

  def human_rival?
    rival_id.present?
  end

  def pokemon_rival?
    pokemon_url.present?
  end
end
