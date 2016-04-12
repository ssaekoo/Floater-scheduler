# == Schema Information
#
# Table name: districts
#
#  id                  :integer          not null, primary key
#  name                :string
#  district_manager_id :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class District < ActiveRecord::Base
  has_one :district_manager,
    foreign_key: :district_manager_id,
    class_name: "User"
end
