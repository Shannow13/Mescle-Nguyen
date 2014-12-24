class Kind < ActiveRecord::Base

	validate :blank
	def blank
		if name.empty?
		errors.add(:name, 'I\'m sure you know a kind')
		end
		
		if cote.empty?
		errors.add(:cote, 'Please put a cote to identify the kind')
		end
	
	end
end
