class BuyCarController < ApplicationController

    def existsModel(m)

        query = "select count(*) from cars where location like 'Store' and model like'"+ m +"'"

        r = ActiveRecord::Base.connection.execute(query)
        
        a = r.to_a

        count = a[0]["count"]

        if count == 0  
            return 0
        else
            return 1
        end

    end

    ######################################################

    def selectModel(m)

        query = "select id, sell_price from cars where location like 'Store' and model like'"+ m +"'"

        r = ActiveRecord::Base.connection.execute(query)
        
        a = r.to_a

        id_car = a[0]["id"]
        sell_price = a[0]["sell_price"]

        d = []

        d[0] = id_car
        d[1] = sell_price
        
        return d

    
    end
    
    ######################################################

    def setCarsSold(id_car)

        c = Cars.find(id_car)
        c.location = "Sold"
        c.save

    end

    ######################################################

    def makeOrder (d)

        o = Orders.new

        o.id_car = d[0]
        o.total = d[1]
        o.date = DateTime.current.to_date
        o.quantity = 1
        
        o.save

        setCarsSold(d[0])

    end

    ######################################################

    def createMissing (m)

        mi = Missings.new

        mi.model = m
       
        mi.save

    end

    ######################################################

    def buy

        m = rand(0..9)

        if (existsModel(m.to_s) != 0)
            makeOrder(selectModel(m.to_s))
            @res = "Buyed Car"
        else
            createMissing (m)
            @res = "Not Buyed Car"
        end

    end

    ######################################################
end


