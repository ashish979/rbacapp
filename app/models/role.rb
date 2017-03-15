class Role < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :permissions

  def self.admin
    Role.where(uuid: :super_admin).first
  end
end
