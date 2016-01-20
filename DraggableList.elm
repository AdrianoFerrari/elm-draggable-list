module DraggableList where


-- MODEL

type alias Model = List String


init : List String -> Model
init strings =
  Model strings
