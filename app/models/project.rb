class Project < ApplicationRecord
  enum :status, [ :draft, :discussion, :progress, :completed ]
  belongs_to :user
  has_many :comments, dependent: :destroy
end
