class Kind < ActiveRecord::Base

	validate :blank
	has_and_belongs_to_many :book
	
	#Method for searching in the database
	def self.search(query)
		where("name like ?", "%#{query}%")
	end
	def blank
		if name.empty?
		errors.add(:name, 'I\'m sure you know a kind')
		end
		
		if cote.empty?
		errors.add(:cote, 'Please put a cote to identify the kind')
		end
	
	end
end
