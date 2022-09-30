class BirdsController < ApplicationController
    #A controller action to show all the birds from the database  GET birds/
    def index
      render(json:Bird.all,except:[:created_at,:updated_at])  # Render is the methid in rails that send back a response to the client. It is a method and can be invoked without brackets
    end
     
    #Controller action to show a single bird from the database.  GET birds/:id
    def show
        bird=Bird.find_by(id:params[:id]) #The reason fir using findby is because the find_by method returns nil when a resources is not found hence enabling us to use if-else. Finf returns an active record erroe class.
        if bird
            render json: bird
        else
            render json: {error: "Bird not found!"}
        end
    end
end
