class Meeting < ApplicationRecord
  belongs_to :partner
  belongs_to :pioneer
  belongs_to :part_time
end
