class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :abbreviation
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
