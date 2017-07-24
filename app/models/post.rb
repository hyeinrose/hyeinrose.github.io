class Post < ActiveRecord::Base
    #post
     has_many:comments, :dependent=> :destroy
    
  
end
