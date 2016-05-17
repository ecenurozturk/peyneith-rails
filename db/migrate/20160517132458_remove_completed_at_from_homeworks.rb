class RemoveCompletedAtFromHomeworks < ActiveRecord::Migration
  def change
    remove_column :homeworks, :completed_at, :date
  end
end
