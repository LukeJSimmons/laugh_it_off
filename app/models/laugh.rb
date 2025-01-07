class Laugh < ApplicationRecord
  validates :type, presence: true
  validates :url, presence: true, uniqueness: true
  belongs_to :type
end
