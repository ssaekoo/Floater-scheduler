# == Schema Information
#
# Table name: trained_systems
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  system_id     :integer
#  updated_by_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class TrainedSystemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
