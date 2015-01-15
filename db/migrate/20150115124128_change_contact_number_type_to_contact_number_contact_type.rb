class ChangeContactNumberTypeToContactNumberContactType < ActiveRecord::Migration
  def up
		rename_column(:contact_numbers, :type, :contact_type)
  end
  
  def down
		rename_column(:contact_numbers, :contact_type, :type)
  end
  
end
