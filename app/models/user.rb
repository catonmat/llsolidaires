class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:owner, :medical]

  after_initialize do
    if self.new_record?
      self.role ||= :medical
    end
  end

  mount_uploader :identity_file, ImageUploader

  validates :role, :phone, :last_name, presence: true
end
