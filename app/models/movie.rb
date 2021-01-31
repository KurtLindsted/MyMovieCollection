
class Movie < ApplicationRecord
  validates :title, presence: true
  mount_uploader :file, ImageUploader
  serialize :file, JSON # If you use SQLite, add this line.

  attr_accessor :image, :choosenTitle

  after_save :save_image, if: :image

  def save_image
    filename = image.original_filename
    folder = "public/images/#{id}"
    FileUtils::mkdir_p folder

    f= File.open File.join(folder, filename), "wb"
    f.write image.read()
    f.close

    self.image = nil
    update image_filename: filename
  end

end
