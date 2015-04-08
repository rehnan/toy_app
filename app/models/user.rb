class User < ActiveRecord::Base
	validates :email, :name, presence: true 
	validates :email, uniqueness: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :on => [ :create, :update ]
	has_many :microposts
end
