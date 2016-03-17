class AddSubjectToFowardContact < ActiveRecord::Migration
  def change
    add_column :foward_contacts, :subject, :string
  end
end
