class AddUserIdToEntrevista < ActiveRecord::Migration
  def change
    add_column :entrevistas, :user_id, :integer
  end
end
