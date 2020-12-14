class Lipstick
    attr_accessor :name, :brand, :price, :colors, :description, :overall_info

    @@Lipstick = []

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{name}=="), value)}
        puts @@lipstick
        
    end



    def self.all
        @@lipstick
    end
end
