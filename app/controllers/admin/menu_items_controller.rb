class Admin::MenuItemsController < AdminController
  before_filter :assign_category

  def new
    @menu_item = MenuItem.new
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def create
    @menu_item = MenuItem.new(menu_items_params.merge(category_id: @category.id))
    if @menu_item.save
      redirect_to admin_category_path(@category), notice: "Great job! Update successful."
    else
      render "new"
    end
  end

  def update
    @menu_items = MenuItem.find(params[:id])
    if @menu_items.update(menu_items_params)
      redirect_to admin_category_path(@category), notice: "Great job! Update successful."
    else
      render "edit"
    end
  end

  private

  def menu_items_params
    params.require(:menu_item).permit(:name, :description, :weight)
  end

  def assign_category
    @category = Category.find(params[:category_id])
  end
end