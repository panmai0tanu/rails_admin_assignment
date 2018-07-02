class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_projects
  has_many :projects , :through => :user_projects
  belongs_to :organization

  #custom field
  rails_admin do

    list do #user list fix list
      field :id
      field :first_name
      field :last_name
      field :email
    end

    edit do # edit and new user
      field :first_name
      field :last_name
      field :email
      field :password
      field :password_confirmation
      field :organization
    end

  end

end

# rails g migration AddUserIdToOrganization user:references
# rails g migration AddReferencesUserToProject user:references
# rails g migration AddReferencesProjectToOrganization project:references
# 1942  rails g migration AddReferencesUser_projectTouser user_projrct:references
#  1943  rails g migration AddReferencesUser_projectToProject user_project:references
#  1944  rails d migration AddReferencesUser_projectTouser user_projrct:references
#  1945  rails g migration AddReferencesUser_projectToUser user_project:references


