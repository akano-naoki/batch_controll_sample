class BatchConfigController < ApplicationController
  def index
    @batch_configs = BatchConfig.all
  end

  def create
    params[:batch_configs].each do |bc_params|
      @batch_config = BatchConfig.find(bc_params[:id])
      @batch_config.active_flg = true
      @batch_config.active_flg = false unless bc_params[:active_flg]
      @batch_config.save
    end
    redirect_to '/batch_config', notice: 'save batch configs'
  end
end
