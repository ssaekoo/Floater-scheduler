# == Schema Information
#
# Table name: user_types
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  permission_id :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class UserTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
