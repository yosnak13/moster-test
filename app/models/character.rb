class Character < ApplicationRecord
  belongs_to :user
  has_one :level_setting
end
