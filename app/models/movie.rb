class Movie < ActiveRecord::Base
    def self.get_all_ratings
        @all_ratings = []
        self.select('rating').uniq.each {|ele| @all_ratings.push(ele.rating)}
        @all_ratings.sort.uniq
    end
end
