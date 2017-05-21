class Api::TacosController < Api::BaseController

  # GET /tacos
  def index
    @tacos = Taco.all
    json_response(@tacos)
  end

  # POST /tacos
  def create
    @taco = Taco.create!(taco_params)
    json_response(@taco, :created)
  end

  # DELETE /tacos/:id
  def destroy
    @taco = Taco.find(params[:id])
    @taco.destroy
    head :no_content
  end

  private

    def taco_params
      # whitelist params
      params.permit(:meat, :rice, :salsa, :notes)
    end

end