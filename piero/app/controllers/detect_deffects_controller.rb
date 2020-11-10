class DetectDeffectsController < ApplicationController
    def detect

        ActiveRecord::Base.connection.execute("
        INSERT INTO deffects (id_car)
        SELECT  cars.id
        FROM    cars
        LEFT JOIN
        deffects d
        ON      d.id_car = cars.id
        WHERE   d.id_car IS NULL
        AND 	cars.state like 'Defective'
        ")

    end
end
