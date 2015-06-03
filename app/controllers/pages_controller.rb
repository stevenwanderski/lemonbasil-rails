class PagesController < ApplicationController
  def home
  end

  def how_it_works
    @page = Page.find_by(key: "how_it_works")
  end

  def about
    @page = Page.find_by(key: "about")
  end
end