class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :degree_of_care, optional: true
  belongs_to :sex
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :degree_care_of_id, numericality: { other_than: 1, message:"can't be blank" }
  validates :sex_id, numericality: { other_than: 1, message:"can't be blank" }
end
