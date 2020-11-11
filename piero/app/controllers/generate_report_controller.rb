class GenerateReportController < ApplicationController

    def count

        query = "SELECT count(*) from cars where location like 'Sold'"

        r = ActiveRecord::Base.connection.execute(query)
        
        a = r.to_a

        count = a[0]["count"]

        return count

    
    end
    
    ######################################################

    def sum

        query = "SELECT date, sum(total) from orders group by date"

        r = ActiveRecord::Base.connection.execute(query)
        
        a = r.to_a

        return a

    
    end
    
    ######################################################

    def avg

        query = "SELECT date, sum(total)/count(*) as avgByDay from orders group by date"

        r = ActiveRecord::Base.connection.execute(query)
        
        a = r.to_a

        return a

    
    end
    
    ######################################################

    def generate

        @cantsold = count

        @sum = sum

        @avg = avg

    
    end
    
    ######################################################

end
