class Project < ApplicationRecord
  has_many :participants, dependent: :destroy
end
