class Admin::WeightsController < AdminController
  def update
    model = params[:model_name].constantize
    params[:models].each_pair do |id, weight|
      model.where(id: id).update_all(weight: weight)
    end
    render json: { success: true }
  rescue => e
    logger.error('Weights could not be saved.')
    logger.error(e)
    render json: { success: false}
  end
end