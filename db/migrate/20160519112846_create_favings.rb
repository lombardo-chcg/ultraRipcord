class CreateFavings < ActiveRecord::Migration
  def change
    create_table :favings do |t|
      t.integer :user_id
      t.integer :content_id
      t.timestamps
    end
  end
end
