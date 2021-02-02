class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :position

  with_options presence: true do
    validates :family_name
    validates :last_name
    validates :phone_number
    validates :company_name
    validates :position
  end

  validates :position_id, numericality: { other_than: 1 }
end
