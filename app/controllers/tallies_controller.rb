class TalliesController < ApplicationController
    before_action :find_tally, only: [:show, :edit, :update]

    def index
        @tallies = Tally.all
        render json: TallySerializer.new(@tallies).serialized_json
    end

    def new
        @tally = Tally.new
    end

    def show
        @tally = Tally.find(params[:id])

    end

    def create
        @tally = Tally.new(tally_params)

        if @tally.save
            console.log('success')
        else
            console.log('failure')
        end
    end
    



private

    def find_tally
        @tally = tally.find(params[:id])
    end

    def tally_params
        params.require(:tally).permit(:user_, :content)
    end


end
