class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :missions, :full, :boolean, :default => false
  end
end
