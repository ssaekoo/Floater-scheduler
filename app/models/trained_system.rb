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

class TrainedSystem < ActiveRecord::Base
  belongs_to :user
  belongs_to :system
  belongs_to :updated_by,
    foreign_key: :updated_by_id,
    class_name: "User"
end
