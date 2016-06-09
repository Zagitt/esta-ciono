# == Schema Information
#
# Table name: reservations
#
#  id               :integer          not null, primary key
#  space_id         :integer
#  user_id          :integer
#  reservation_date :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Reservation < ActiveRecord::Base
  belongs_to :space
  belongs_to :user
end
