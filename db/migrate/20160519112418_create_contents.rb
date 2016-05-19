class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string  :type
      t.string  :url
      t.string  :short_description
      t.text    :long_description
      t.timestamps
    end
  end
end
