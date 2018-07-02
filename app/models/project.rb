class Project < ApplicationRecord
	belongs_to :organization
	has_many :user_projects
	has_many :users , :through => :user_projects
end
