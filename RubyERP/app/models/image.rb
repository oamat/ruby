class Image < ActiveRecord::Base
  belongs_to :company  #listar la imagen de la compañía

  before_save :rename_image
  before_update :rename_image

  has_attached_file :image,
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
  #:styles => { :medium => "300x300>", :thumb => "100x100>" }
  #:default_url => "/images/:style/missing.png"
  #:dropbox_options => {...} In Rails you don't need to specify it.

  validates_attachment :image,
                       :presence => true,
                       :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]},
                       :size => { :less_than => 100.kilobytes }


  def rename_image
    #image_file_name - important is the first word - image - depends on your column in DB table
    extension = File.extname(image_file_name).downcase
    self.image.instance_write :file_name, "#{Time.now.to_i.to_s}#{extension}"
  end
end
