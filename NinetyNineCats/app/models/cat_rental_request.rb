class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, inclusion: { in: %w(PENDING APPROVED DENIED)
    message: "Invalid status"}

  belongs_to :cat,
    foreign_id: :cat_id,
    class_name: :Cat
end
