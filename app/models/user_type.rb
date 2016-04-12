# == Schema Information
#
# Table name: user_types
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  permission_id :integer          not null
#  updated_by_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class UserType < ActiveRecord::Base
  belongs_to :updated_by,
    foreign_key: :updated_by_id,
    class_name: "User"

  has_many :users
end
