class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :grid_fs

  def store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w(jpg jpeg png)
  end

  def content_type_blacklist
    ['application/text', 'application/json']
  end

  process :auto_orient
  process resize_to_fit: [800, 800]

  version :small do
    process resize_to_fill: [400,400]
  end

  def auto_orient
    manipulate! do |img|
      img.tap(&:auto_orient)
    end
  end

end
