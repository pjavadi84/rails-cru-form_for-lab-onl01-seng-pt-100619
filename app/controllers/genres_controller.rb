class GenresController < ApplicationController
    def show
       @genre = Genre.find(params[:id]) 
    end

    def index 
        @genres = Genre.all
    end

    def create 
        @genre = Genre.new(params.require(:genre).permit(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def new 
        @genre = Genre.new
    end

    def edit 
        @genre = Genre.find(params[:id])
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(params.require(:genre).permit!)
        redirect_to genre_path(@genre)
    end
end
