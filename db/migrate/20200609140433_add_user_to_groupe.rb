class AddUserToGroupe < ActiveRecord::Migration[6.0]
  def change
    add_reference :groupes, :user, null: false, foreign_key: true
  end
end
