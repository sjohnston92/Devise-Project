class Todo < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
