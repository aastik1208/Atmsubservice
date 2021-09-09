class AtmService
    attr_accessor :total

    def initialize(total)
        @total = total
    end

    def quarter_no
        @quarters = total/25
        dime_no(total%25)
    end

    def dime_no(dime)
        @dimes = dime/10
        nickel_no(dime%10)
    end

    def nickel_no(nickel)
        @nickels = nickel/5
        penny_no(nickel%5)
    end

    def penny_no(penny)
        @pennies = penny
    end
end
