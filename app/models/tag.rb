class Tag < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: true }
end