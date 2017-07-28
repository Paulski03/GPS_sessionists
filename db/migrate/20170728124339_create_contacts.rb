class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      
      # ADDING FIELDS
      t.string :name
      t.string :email
      t.string :mobile
      t.text :message
      t.timestamps
      
    end
  end
end
