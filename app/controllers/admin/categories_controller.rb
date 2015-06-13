class Admin::CategoriesController < AdminController
  def index
    @categories = Category.all.order(:weight)
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_categories_path, notice: "Great job! Update successful."
    else
      render "new"
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to admin_categories_path, notice: "Great job! Update successful."
    else
      render "edit"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :weight)
  end
end