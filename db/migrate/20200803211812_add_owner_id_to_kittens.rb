class AddOwnerIdToKittens < ActiveRecord::Migration[5.2]
  def change
    add_column :kittens, :owner_id, :integer
  end
end
