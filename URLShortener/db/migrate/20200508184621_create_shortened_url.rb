class CreateShortenedUrl < ActiveRecord::Migration[6.0]
  def change
    create_table :shortened_urls do |t|
      t.timestamps
      t.string :long_url
      t.string :short_url, unique: true 
      t.integer :user_id
    end
    add_index :shortened_urls, [:short_url, :user_id]
  end
end