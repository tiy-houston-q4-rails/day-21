class CreatePadawans < ActiveRecord::Migration
  def change
    create_table :padawans do |t|
      t.string :name
      t.integer :age
      t.string :lightsaber
      t.integer :jedi_id

      t.timestamps
    end
  end
end
