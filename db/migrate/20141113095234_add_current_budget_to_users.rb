class AddCurrentBudgetToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :budget, :integer, default: 30
  	add_column :users, :current_budget, :integer, default: 0
  end
end
