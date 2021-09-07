class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :image_front
      t.string :image_back
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
