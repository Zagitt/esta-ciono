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
#

class Space < ActiveRecord::Base
  belongs_to :district
  has_many :reservations
  
  has_attached_file :content, 
          styles: { medium: "800x300!", thumb: "320x150!" }, 
          default_url: "/images/:style/autos.jpg"
          
    validates_attachment_content_type :content, 
                         content_type: /\Aimage\/.*\Z/  
    

end
