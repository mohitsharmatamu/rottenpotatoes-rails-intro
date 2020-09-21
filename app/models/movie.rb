class Movie < ActiveRecord::Base
    def self.get_all_ratings
        array = Array.new()
        self.select('rating').uniq.each {|element| array.push(element.rating)}
        array.sort.uniq
    end
end
