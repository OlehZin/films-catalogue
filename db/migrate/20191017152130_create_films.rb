class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|

      t.string :title, default: ''
      t.string :genre , default: ''
      t.integer :metascore
      t.float :imdb_rating
      t.text :plot, default: ''
      t.text :actors, array: true, default: []
      t.date :release_date

      t.timestamps
      
    end
  end
end
