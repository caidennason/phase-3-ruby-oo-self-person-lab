# your code goes here

require 'pry'

class Person

    attr_accessor :bank_account # want to read and write indesciminately, no limits
    attr_reader :happiness # allows you to access attribute information, and can place limits
    attr_reader :hygiene

   def initialize(name)
    @name=name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
   end

   def name
    @name
   end

   def happiness=(value)
    if value > 10
        @happiness = 10
    end
    if value < 0
        @happiness = 0
    end
    if value >= 0 && value <= 10
        @happiness = value
    end
   end

   def hygiene=(value)
    if value > 10
        @hygiene = 10
    end
    if value < 0
        @hygiene = 0
    end
    if value >= 0 && value <= 10
        @hygiene = value
    end
   end

    def happy?
    @happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        @bank_account+= amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else topic != "politics" && topic != "weather"
            "blah blah blah blah blah"
        end
    end

end