class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :sock

  validates :statut, inclusion: { in: ["pending", "validate", "declined"] }

end
