class Person < ActiveRecord::Base

has_many :contact_numbers

	scope :contactable, ->{where(id: ContactNumber.pluck(:person_id))}
	


	def full_name 
	"#{first_name} #{last_name}"
	end

	def self.contacts_count
	
	select {|p| p.contact_numbers.count >0}.count
	
	end
	
end
