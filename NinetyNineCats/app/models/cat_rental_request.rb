class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, presence: true
  validates :status, inclusion: { in: %w(PENDING APPROVED DENIED),
    message: "Invalid status"}
  validate :does_not_overlap_approved_request

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat

  def overlapping_requests
    CatRentalRequest.
    where.not(id: self.id).
    where.not('end_date < :start_date or start_date > :end_date',
    start_date: self.start_date, end_date: self.end_date)
  end

  def overlapping_approved_requests
    overlapping_requests.where("status = 'APPROVED'")
  end

  private

  def does_not_overlap_approved_request
    if CatRentalRequest.exists?(overlapping_approved_requests)
      errors.add(:start_date, 'Overlaps with approved request')
    end
  end
end
