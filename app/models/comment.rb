class Comment < ActiveRecord::Base
    #댓글기능
     belongs_to :trip
end
