# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :user_type,
    dependent: :destroy
  belongs_to :district
  belongs_to :store
  belongs_to :updated_by,
    foreign_key: :updated_by_id,
    class_name: "User"

  has_many :trained_systems,
    dependent: :destroy

  has_many :systems,
    through: :trained_systems

  has_many :requests

  after_initialize :ensure_session_token!

  def reset_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  private
  def self.generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def ensure_session_token!
    self.session_token ||= User.generate_session_token
  end
end
