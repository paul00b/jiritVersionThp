class AddColumnToFacts < ActiveRecord::Migration[5.2]
  def change
    add_column :facts, :creator_id, :integer
  end
end
