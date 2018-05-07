class CreateFacts < ActiveRecord::Migration[5.2]
  def change
    create_table :facts do |t|
      t.string :title
      t.text :body
      t.text :source

      t.timestamps
    end
  end
end
