class GuitarsController < ApplicationController

def index
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
end

end