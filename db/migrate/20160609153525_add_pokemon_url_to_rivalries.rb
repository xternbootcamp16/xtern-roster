class AddPokemonUrlToRivalries < ActiveRecord::Migration
  def change
    add_column :rivalries, :pokemon_url, :string
  end
end
