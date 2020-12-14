class Mascara
    attr_accessor :name, :brand, :price, :colors, :description, :overall_info

    @@Mascara = []

    def initialize(attributes)
        attributes.each {|key, value| self.send(("#{name}=="), value)}
        puts @@Mascara
        
    end



    def self.all
        @@Mascara
    end
end
