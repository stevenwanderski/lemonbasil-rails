class Admin::PagesController < AdminController
  def index
    @pages = Page.all.order(:title)
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    update_settings
    if @page.update(page_params)
      redirect_to edit_admin_page_path(@page), notice: "Great job! Update successful."
    else
      render "edit"
    end
  end

  private

  def page_params
    params.require(:page).permit!
  end

  def update_settings
    settings = {}
    settings["tagline"] = page_params["tagline"] unless page_params["tagline"].blank?
    settings["quote"] = page_params["quote"] unless page_params["quote"].blank?
    settings["quote_author"] = page_params["quote_author"] unless page_params["quote_author"].blank?
    @page.settings = settings
  end
end