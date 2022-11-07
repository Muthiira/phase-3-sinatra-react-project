class Dev < ActiveRecord::Base
	has_many :languages
	has_many :projects, through: :languages
end
