class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :category
      t.string :website
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
