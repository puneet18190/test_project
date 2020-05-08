class CreatePlays < ActiveRecord::Migration[5.2]
  def change
    create_table :plays do |t|
      t.integer :timer
      t.integer :image_id

      t.timestamps
    end
  end
end
