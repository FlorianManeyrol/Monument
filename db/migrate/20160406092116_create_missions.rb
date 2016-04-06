class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :title
      t.string :description
      t.string :city
      t.datetime :start_at
      t.datetime :finished_at
      t.boolean :full
      t.string :contact_name
      t.string :contact_mobile
      t.string :contact_email
      t.integer :remuneration
      t.integer :subscription
      t.integer :number_of_place
      t.string :category
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
