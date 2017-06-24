class WideImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}"
  end

  process resize_to_limit: [3840, nil]

  version :thumb do
    process resize_to_fit: [240, 120]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
