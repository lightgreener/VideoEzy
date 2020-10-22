class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.text :title
      t.integer :director_id
      t.date :year
      t.integer :length

      t.timestamps
    end
  end
end
