class Page < ActiveRecord::Base
  attr_accessor :tagline, :quote, :quote_author

  has_attached_file :image,
                    storage: :s3,
                    styles: { thumb: "150x150>" },
                    s3_credentials: Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
    { bucket: ENV['AWS_S3_BUCKET'], access_key_id: ENV['AWS_S3_ACCESS_KEY'], secret_access_key: ENV['AWS_S3_SECRET_KEY'] }
  end

  def tagline
    settings["tagline"]
  end

  def quote
    settings["quote"]
  end

  def quote_author
    settings["quote_author"]
  end

  def home?
    key === "home"
  end
end
