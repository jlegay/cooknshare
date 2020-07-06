class RenameGroupMembershipToMembership < ActiveRecord::Migration[6.0]
  def change
    rename_table :group_memberships, :memberships
    rename_column :memberships, :active_membership, :active
    rename_column :memberships, :membership_status, :status
  end
end
