# == Schema Information
#
# Table name: districts
#
#  id                  :integer          not null, primary key
#  name                :string
#  district_manager_id :integer          not null
#  updated_by_id       :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class DistrictsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
