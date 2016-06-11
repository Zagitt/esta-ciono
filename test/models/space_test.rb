# == Schema Information
#
# Table name: spaces
#
#  id                   :integer          not null, primary key
#  description          :text(65535)
#  address              :string(255)
#  district_id          :integer
#  price                :float(24)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  name                 :string(255)
#  content_file_name    :string(255)
#  content_content_type :string(255)
#  content_file_size    :integer
#  content_updated_at   :datetime
#  latitude             :float(24)
#  longitude            :float(24)
#  profile_id           :integer
#

require 'test_helper'

class SpaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
