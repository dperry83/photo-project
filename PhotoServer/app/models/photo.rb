class Photo < ApplicationRecord
  belongs_to :shoot, dependent: :destroy
end
