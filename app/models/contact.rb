class Contact < ActiveRecord::Base
  validates :name, :email, presence: true
end