class CreateKittenMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :kitten_memberships do |t|
      t.integer :kitten_id
      t.integer :owner_id
      t.timestamps
    end
  end
end
