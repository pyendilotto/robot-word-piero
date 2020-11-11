class MoveCarsToStoreController < ApplicationController

    def move

        ActiveRecord::Base.connection.execute("
        UPDATE cars
        SET location = 'Store'
        WHERE state like 'Completed' 
        AND location NOT LIKE 'Store' 
        AND location NOT LIKE 'Sold'
        ")

    end

end
