class Project < ActiveRecord::Base
	has_many :languages
	has_many :devs, through: :languages
end