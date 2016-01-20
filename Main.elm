import Html exposing (..)
import StartApp.Simple as StartApp


-- MODEL

type alias Model =
  { entries : List (Int, String) -- data state
  , isDragging: Maybe Int
  }


initialModel : Model
initialModel =
  Model
    [(1, "First"), (2, "Deuxieme"), (3, "Tercero")]
    Nothing


-- UPDATE

type Action
  = Test


update : Action -> Model -> Model
update action model =
  case action of
    Test ->
      model


-- VIEW

view : Signal.Address Action -> Model -> Html
view address model =
  div [] [text "here"]


-- MAIN

main =
  StartApp.start
    { model = initialModel
    , update = update
    , view = view
    }
