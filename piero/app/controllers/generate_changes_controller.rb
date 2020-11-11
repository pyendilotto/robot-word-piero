class GenerateChangesController < ApplicationController

    def changes

        #SELECT A RANDOM ORDER TO MAKE THE CHANGE
        query = "SELECT id FROM orders
                ORDER BY RANDOM()
                LIMIT 1"
    
        r = ActiveRecord::Base.connection.execute(query)
        
        a = r.to_a

        ch = Changes.new

        ch.id_order = a[0]["id"]

        ch.save       

    end

    ######################################################


end
