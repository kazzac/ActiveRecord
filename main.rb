require 'active_record'

ActiveRecord::Base.establish_connection(
    "adapter" => "sqlite3",
    "database" => "./blog.db"
    
)

class Post < ActiveRecord::Base
    validates :title, :presence => true
    validates :body, :length => { :minimum => 5 }
end

post = Post.new(:body => "bod")
post.save!

p Post.all