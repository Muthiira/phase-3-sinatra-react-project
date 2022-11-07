class Language < ActiveRecord::Base
	 belongs_to :dev
	 belongs_to :project
end