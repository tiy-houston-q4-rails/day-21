class CreateDranks < ActiveRecord::Migration
  def change
    create_table :dranks do |t|
      t.string :name
      t.string :photo_url
      t.text :description
      t.decimal :abv

      t.timestamps
    end
  end
end
