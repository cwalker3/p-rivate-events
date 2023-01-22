class RemoveTimeFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :time
  end
end
