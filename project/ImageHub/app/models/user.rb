# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :text
#  last_name  :text
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  has_many :albums
  has_many :images, through: :albums

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
end
