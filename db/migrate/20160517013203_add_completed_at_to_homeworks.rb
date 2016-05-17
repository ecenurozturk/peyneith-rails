class AddCompletedAtToHomeworks < ActiveRecord::Migration
  def change
    add_column :homeworks, :completed_at, :date
  end
end
