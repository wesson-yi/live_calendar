class Meeting < ApplicationRecord
  belongs_to :partner
  belongs_to :pioneer, optional: true
  belongs_to :part_time


  VALID_STATUSES = ['ready', 'active', 'invalid']

  validates :status, inclusion: { in: VALID_STATUSES }

  validates :partner_id, uniqueness: { scope: [:part_time_id, :pioneer] }
  # validates :pioneer_id, uniqueness: { scope: [:date, :partner_id] }
end
