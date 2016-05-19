class Tagging < ActiveRecord::Base
  belongs_to  :content
  belongs_to  :tag
end
