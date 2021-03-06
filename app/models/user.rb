class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validate :blank
  #On définit le fait qu'un utilisateur puisse être administrateur
  def admin?
  	admin
  end
  
  def blank
		if email.empty?
		errors.add(:email, 'Please enter an email address')
		end
		
		if password.empty?
		errors.add(:password, 'Please put a password')
		end
		
	end

end
