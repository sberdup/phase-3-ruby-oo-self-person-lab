# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @name = name
    end

    def happiness=(value)
        if (0..10).include?(value)
            @happiness = value 
        elsif value > 10
            @happiness = 10
        else
            @happiness = 0
        end
    end
    
    def hygiene=(value)
        if (0..10).include?(value)
            @hygiene = value 
        elsif value > 10
            @hygiene = 10
        else
            @hygiene = 0
        end
    end

    def clean?
        (hygiene > 7)
    end

    def happy?
        (happiness > 7)
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end