class Book < ActiveRecord::Base
	validate :blank
	belongs_to :autor
	has_and_belongs_to_many :kinds
	
	#Method for searching in the database
	def self.search(query)
		where("name like ?", "%#{query}%")
	end
	
	def blank
		if name.empty?
		errors.add(:name, 'The book with no name exists and it\'s his title')
		end
	
		if autor_name.empty?
		errors.add(:autor_name, 'Put a name of an author or put Anonymous')
		end
		
		if editor.empty?
		errors.add(:editor, 'A book need an editor or it has to be self-published')
		end
		
		if collection.empty?
		errors.add(:collection, 'If there is no collection re-write the editor')
		end
		
		if kind.empty?
		errors.add(:kind, 'Come on ! A book HAS a kind...')
		end
		
		if cote.empty?
		errors.add(:cote, 'Please put a cote to identify the book')
		end
	end
end
