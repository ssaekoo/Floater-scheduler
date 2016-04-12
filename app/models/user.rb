# == Schema Information
#
# Table name: users
#
#  id                :integer          not null, primary key
#  name              :string           not null
#  password_digest   :string           not null
#  session_token     :string           not null
#  email             :string
#  phone_number      :string
#  hire_date         :date
#  address           :string           not null
#  longitude         :decimal(, )
#  latitude          :decimal(, )
#  user_type_id      :integer          not null
#  district_id       :integer
#  store_id          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class User < ActiveRecord::Base
  belongs_to :user_type
  belongs_to :district
  belongs_to :store

  has_many :trained_systems
  has_many :systems through :trained_systems

end
