class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.timestamps
      t.integer :user_id, unique: true
      t.integer :url_id, unique: true
      t.string :short_url
      t.integer :visit_count
    end
    add_index :visits, [:url_id]
    add_index :visits, [:user_id]
    add_index :visits, [:short_url]
  end
end
