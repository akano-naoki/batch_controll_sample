class CreateBatchConfigs < ActiveRecord::Migration[5.0]
  def change
    create_table :batch_configs do |t|
      t.boolean :active_flg, default: false
      t.string :running_type, default: 'daily'
      t.string :process, default: ''
      t.string :running_server_ip_address, default: ''
    end
  end
end
