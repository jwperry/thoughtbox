class Link < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: true

  def toggle_read_status
    new_value = self.read ? false : true
    self.update_attribute(:read, new_value)
  end
end