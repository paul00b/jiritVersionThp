class AddUserToFacts < ActiveRecord::Migration[5.2]
  def change
    add_reference :facts, :users, foreign_key: true
  end
end
