class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :description, null: false
      t.references :user
      t.references :reviewable, polymorphic: true
      t.integer :rate

      t.timestamps
    end
  end
end
