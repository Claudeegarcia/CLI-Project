
class Blush
    attr_accessor :name, :brand, :price, :colors, :description, :overall_info

    @@Blush = []

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{name}=="), value)}
        puts @@Blush
        
    end



    def self.all
        @@Blush
    end
end
