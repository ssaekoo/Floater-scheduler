# == Schema Information
#
# Table name: stores
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  address          :string           not null
#  longitude        :decimal(, )
#  latitude         :decimal(, )
#  store_manager_id :integer
#  system_id        :integer
#  district_id      :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
