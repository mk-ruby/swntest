class CreateContactNumbers < ActiveRecord::Migration
  def change
    create_table :contact_numbers do |t|
      t.string :phone_number
      t.string :type
      t.integer :person_id

      t.timestamps
    end
  end
end
