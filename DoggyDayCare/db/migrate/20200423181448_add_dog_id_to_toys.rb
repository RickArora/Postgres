class AddDogIdToToys < ActiveRecord::Migration[5.2]
  def change
    add_column(:toys, :dogid, :integer, null: false)
    add_column(:toys, :color, :string, null:false)
  end
end
