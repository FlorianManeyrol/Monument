class AddAssoRefToMissions < ActiveRecord::Migration
  def change
    add_reference :missions, :asso, index: true, foreign_key: true
  end
end
