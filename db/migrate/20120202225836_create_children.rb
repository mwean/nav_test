class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.belongs_to :person

      t.timestamps
    end
  end
end
