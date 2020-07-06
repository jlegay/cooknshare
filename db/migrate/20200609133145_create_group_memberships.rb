class CreateGroupMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :group_memberships do |t|
      t.boolean :active_membership
      t.string :membership_status
      t.references :user, null: false, foreign_key: true
      t.references :groupe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
