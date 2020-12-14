class CLI

    def run
        system("clear")
        greeting
        while menu != 'exit'
        end

        end_program


    end

    def greeting
        puts "Hello, Beautiful! Ready to conquer the world?
        Key Notes: Type 'exit' whenever you're ready to leave. Enter the desired number next to the product you're curious about."
    end

    def end_program
        puts "Bye Beauty! Go slay the world!"
    end

    def menu
        puts "Please choose the beauty tool that you are going to use to conquer the world with: These are my personal choices with my 7+ years in the makeup business!"
        list_options
        input = gets.strip.downcase
        choose_option(input)
        return input
    end

    def list_options
        puts <<-DOC.gsub /^\s*/,''
        1. Blush (Clinique Blush Pop)
        2. Foundation (E.L.F Tinted Moisturize)
        3. Lipstick (Soft-Matte Lipsticks)
        4. Mascara(Dior IT-Lash)
        DOC
    end
    def choose_option(option)
        case option
        when "1"
            puts "You choose Blush: Add happiness one cheek at a time! ＠＾▽＾＠ With Clinique Blush Pop!"
            print Scraper.scrape_overall
        when "2"
            puts "You choose Foundation: A shield enforce your natural beauty! With the Elf Tinted Moisturizer (^_−)☆"
            print Scraper2.scrape_foundations
        when "3"
            puts "A soft Matte lipstick is always a good option for a soft liplook! （*＾3＾）"
            print Scraper3.scrape_lipsticks
        when "4"
            puts "Eyeshadow"
            print Scraper4.scrape_mascara
    
        end

    end

    def Scrape
        Scraper.scrape_overall
        Scraper2.scrape_foundations
        Scraper3.scrape_lipsticks


    end
end

