class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :text

      t.timestamps
    end
  end
end