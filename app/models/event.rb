class Event < ApplicationRecord
  has_many :matches, -> { order 'date ASC' },dependent: :delete_all

  def generate_schedule

  end
end
