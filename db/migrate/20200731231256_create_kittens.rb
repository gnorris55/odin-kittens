class CreateKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :kittens do |t|
      t.string :name
      t.string :age 
      t.integer :cuteness_scale
      t.integer :softness_scale

      t.timestamps
    end
  end
end
