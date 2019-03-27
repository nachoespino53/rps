class CreateRpsApis < ActiveRecord::Migration[5.2]
  def change
    create_table :rps_apis do |t|

      t.timestamps
    end
  end
end
