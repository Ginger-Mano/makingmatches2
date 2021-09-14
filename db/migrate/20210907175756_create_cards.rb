class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :image_front
      t.string :image_back
      t.string :photographer
      t.string :avg_color

      t.timestamps
    end
  end
end
