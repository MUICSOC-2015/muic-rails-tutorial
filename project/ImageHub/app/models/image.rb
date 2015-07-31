# == Schema Information
#
# Table name: images
#
#  id                      :integer          not null, primary key
#  name                    :text
#  album_id                :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  description             :text
#  attachment_file_name    :string
#  attachment_content_type :string
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#

class Image < ActiveRecord::Base
  belongs_to :album
  has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>", :large => "1000x1000>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
end
