class Kaigo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kt

  validates :date, presence: true
end