class Post < ApplicationRecord
    def self.search(find)
        if find && find != ""
          Post.where(["title = ? or content = ?", find, find])
            
        else
          Post.all
        end
    end
    
end