class Entry

    @@all = []
    
      def initialize(id, url, date, rating)
        @id = id
        @url = url
        @date = date
        @rating = rating
        @@all << self
      end
    
      def self.all
        @@all
      end

      def filter_by_id(id)
        return Entry.all.select{|entry| entry.id === id }
      end

      # def filter_by_range_id(greater_than_id, less_than_id)

      # end
      
      def filter_by_list_ids(id_list, is_in)
        if (is_in === true)
          Entry.all.select{|entry| id_list.include?(entry.id) }
        else
          Entry.all.select{|entry| !id_list.include?(entry.id) }
        end
      end
    
end