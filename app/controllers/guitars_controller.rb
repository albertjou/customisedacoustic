class GuitarsController < ApplicationController

def index
  @guitars = Guitar.all
end

def new
  @fretboards = Fretboard.all
  @body_shapes = BodyShape.all
  @bridges = Bridge.all
  @guitar_strings = GuitarString.all

end

def show

end

def create
  guitar = Guitar.new params[:guitar]
  current_user.guitars << guitar
end

end