class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user

  enum status: [:Pending,:Active,:Inactive]
end
