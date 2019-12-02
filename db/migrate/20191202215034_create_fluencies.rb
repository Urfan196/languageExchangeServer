class CreateFluencies < ActiveRecord::Migration[6.0]
  def change
    create_table :fluencies do |t|
      t.string :level
      t.integer :user_id
      t.integer :language_id

      t.timestamps
    end
  end
end
