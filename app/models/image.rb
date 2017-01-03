class Image < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader #using carrierwave to associate the picture with the uploader
  validate :picture_size
  
  private
  
  def picture_size
      if picture.size > 5.megabytes
          errors.add(:picture, "should be less than 5MB")
      end
  end
  
end
