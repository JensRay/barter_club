class AddDefaultToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :offers, :status, 0
  end
end
