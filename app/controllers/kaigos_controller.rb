class KaigosController < ApplicationController
  def index
    @kaigos = Kaigo.all
  end

  def new
    @kaigo = Kaigo.new
  end

  def create
    @kaigo = Kaigo.new(kaigo_params)
    if @kaigo.save
      redirect_to_ root_path
    else
      render :new
    end
  end

  private

  def kaigo_params
    params.require(:kaigo)
          .permit(:date, :kt_id, :bp1, :bp2, :pulse, :breakfast_amount_id, :lunch_amount_id,
                  :supper_amount_id, :bath_id, :sleeping_id, :urinary_id, :defecation_id, :recode)
          .merge(user_id: current_user.id)
  end
end
