class User < ApplicationRecord
	attr_accessor :password
	#attr_accessible :name, :email
	#validates :password, presence:true,lenght:{minimum:6}
	#validates :email, presence:true
	validates :password, presence: true
	validates :email, presence: true
	validates :name, presence: true


def self.authenticate(email,password)
	user=find_by_email(email)
	password=find_by_password(password)
	return nil if user.nil?
	return user unless password.nil?
	end
end
