class CreateJedis < ActiveRecord::Migration
  def change
    create_table :jedis do |t|
      t.string :name
      t.string :lightsaber
      t.integer :age
      t.integer :force_strength

      t.timestamps
    end
  end
end
