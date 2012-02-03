class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.belongs_to :child

      t.timestamps
    end
  end
end
