class Cat < ApplicationRecord
  validates :birth_date, :name, :description, presence: true
  validates :color, inclusion: { in: %w(white black orange calico grey brown purple),
    message: "We don't have a cat that color"}
  validates :sex, inclusion: { in: %w(M F X), message: "Input not valid"}

  has_many :rental_requests,
    foreign_id: :cat_id,
    class_name: :CatRentalRequest,
    dependent: :destroy

  include ActionView::Helpers::DateHelper

  def age
    @age = DateTime.now.year - birth_date.year
  end
end
