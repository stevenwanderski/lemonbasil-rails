class Page < ActiveRecord::Base
  attr_accessor :tagline, :quote, :quote_author

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
