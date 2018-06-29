class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_projects
  has_many :projects , :through => :user_projects
  has_many :organizations

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
    end

  end

end
