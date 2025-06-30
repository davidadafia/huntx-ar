class CreateHuntxes < ActiveRecord::Migration[8.0]
  def change
    create_table :huntxes do |t|
      t.string :title

      t.timestamps
    end
  end
end
