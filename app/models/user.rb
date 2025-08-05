class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :first_name, :last_name, :profile_title, presence: true 
  validates :username, presence: true, uniqueness: true

  PROFILE_TITLE = [
    'Seneor ruby on rails developer',
    'Seneor java developer',
    'Seneor salesforce developer',
    'Seneor Python developer'
  ].freeze

  def name
    "#{first_name} #{last_name}".strip
  end

  def address
    "#{street_address},#{city},#{state},#{country},#{pincode}"
  end

  def self.ransackable_attributes(auth_object = nil)
    ['country', 'first_name', 'city']
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
