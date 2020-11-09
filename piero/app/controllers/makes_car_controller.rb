class MakesCarController < ApplicationController

    def setPrice(m)
               
        case m
            when 1 
                1000
            when 2   
                2000
            when 3
                3000
            when 4
                4000
            when 5
                5000
            when 6
                6000
            when 7
                7000
            when 8
                8000
            when 9
                9000
            when 0
                10000
            end

    end


######################################################

    def makes

        c = Cars.new

        m = rand(0..9)

        c.model = m
        c.year = "2020"
        c.fabrication_date = DateTime.current.to_date
        c.cost_price = setPrice(m)
        c.sell_price = setPrice(m)+5000
        c.state = "Structure Line"
        c.location = "Factory"
        #c.defect = "None"
        c.save
        sleep 2
        toElectronics
        sleep 2
        toPainting
        sleep 2
        finalization

    end

######################################################

    def toElectronics

        c = Cars.last
        c.state = "Electronic Line"
        c.save

    end

######################################################

    def toPainting

        c = Cars.last
        c.state = "Painting Line"
        c.save

    end

######################################################

    def setDefect
        
        prob =  rand(0..99)

        #20% probability of the car is made with defect
        
        if prob < 20

            defect = rand(1..7)

            case defect
                when 1 
                    "Wheels"
                when 2   
                    "Chassis"
                when 3
                    "Laser"
                when 4
                    "Computer"
                when 5
                    "Motor"
                when 6
                    "Seat"
            end
        
        else
            return "None"

        end

    end


######################################################


    def finalization

        c = Cars.last

        defect = setDefect

        c.defect = defect

        if defect == "None"

            c.state = "Completed"
        else

            c.state = "Defective"


        end

        c.save
    end

######################################################

end
