class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :score
      t.integer :games_won

      t.timestamps
    end
  end
end
