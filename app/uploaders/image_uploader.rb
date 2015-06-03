# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process :crop
    resize_to_fill(150, 150)
  end
  
  version :medium do
    resize_to_limit(350, 350)
  end
  
  version :large do
    resize_to_limit(500, 500)
  end
  
  def default_url
    "fallback/" + [version_name, "avatar-default.jpg"].compact.join('_')
  end
  
  def crop
    if model.crop_x.present?
      resize_to_limit(500, 500)
      manipulate! do |img|
        x = model.crop_x.to_i
        y = model.crop_y.to_i
        w = model.crop_w.to_i
        h = model.crop_h.to_i
        img.crop!(x, y, w, h)
      end
    end
  end

  # whitelist of extensions allowed to be uploaded
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
