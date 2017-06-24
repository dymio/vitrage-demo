class GalleryImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}"
  end

  process resize_to_limit: [1920, 1080]

  version :thumb do
    process resize_to_fill: [240, 240]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
