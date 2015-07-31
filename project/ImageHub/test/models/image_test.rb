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

require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
