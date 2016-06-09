# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
    
    def self.search(search)
      where("name LIKE ?", "%#{search}%") 
      where("content LIKE ?", "%#{search}%")
    end
end
