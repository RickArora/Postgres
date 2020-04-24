class CreateDogs < ActiveRecord::Migration[5.2]
  def change  
    self.create_table(:dogs) do |t|
      t.string :name, null:false
      t.timestamps
    end
  end
end
