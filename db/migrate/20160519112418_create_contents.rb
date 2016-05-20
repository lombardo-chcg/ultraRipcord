class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string  :content_type
      t.string  :source
      t.string  :url
      t.string  :short_description
      t.text    :long_description
      t.timestamps
    end
  end
end
