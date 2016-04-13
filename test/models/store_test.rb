# == Schema Information
#
# Table name: stores
#
#  id                    :integer          not null, primary key
#  address               :string           not null
#  store_phone_number    :string
#  pharmacy_phone_number :string
#  longitude             :decimal(, )
#  latitude              :decimal(, )
#  store_manager_id      :integer
#  system_id             :integer
#  district_id           :integer          not null
#  updated_by_id         :integer
#  monday                :string
#  tuesday               :string
#  wednesday             :string
#  thursday              :string
#  friday                :string
#  saturday              :string
#  sunday                :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
