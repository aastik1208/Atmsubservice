class HomeController < ApplicationController
    def index
    end

    def amount_seg
        if params[:total].to_i > 0
            @atm_sub = AtmService.new(params[:total].to_i)
            @atm_sub.quarter_no
            
            render json: {
                quarter: @atm_sub.instance_variable_get(:@quarters),
                dime: @atm_sub.instance_variable_get(:@dimes),
                nickel: @atm_sub.instance_variable_get(:@nickels),
                penny: @atm_sub.instance_variable_get(:@pennies),
                }, status: :ok
            
        else
            render json: {
                status: 400,
                error: "Bad request"
             }, status: 400
        end
    end
end
