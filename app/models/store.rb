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
#  updated_by_id    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Store < ActiveRecord::Base
  belongs_to :store_manager,
    foreign_key: :store_manager_id,
    class_name: 'User'
  belongs_to :updated_by,
    foreign_key: :updated_by_id,
    class_name: "User"

  belongs_to :system
  belongs_to :district
end
