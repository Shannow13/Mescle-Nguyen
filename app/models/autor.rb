class Autor < ActiveRecord::Base
	has_many :book
	validate :blank
	def blank
		if name.empty?
		errors.add(:name, 'If the autor does not have a name please put Anonymous')
		end
		
		if first_name.empty?
		errors.add(:first_name, 'If the autor does not have a first name please put unknown')
		end
		
		if nationality.empty?
		errors.add(:nationality, 'There is no sateless men here !')
		end
	
	end
end
