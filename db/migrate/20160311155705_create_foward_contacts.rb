class CreateFowardContacts < ActiveRecord::Migration
  def change
    create_table :foward_contacts do |t|
      t.string :token
      t.string :to
      t.string :fields

      t.timestamps null: false
    end
  end
end
