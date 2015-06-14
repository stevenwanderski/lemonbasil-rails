class PagesController < ApplicationController
  def home
    @page = Page.find_by(key: "home")
    @how_it_works = Page.find_by(key: "how_it_works")
    @about = Page.find_by(key: "about")
    @menus = Page.find_by(key: "menus")
  end

  def how_it_works
    @page = Page.find_by(key: "how_it_works")
  end

  def about
    @page = Page.find_by(key: "about")
  end

  def menus
    @page = Page.find_by(key: "menus")
    @categories = Category.all.order(:weight).includes(:menu_items)
  end
end