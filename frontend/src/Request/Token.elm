module Request.Token exposing (obtain)

import Data.Token as Token exposing (Token)
import Http
import Json.Decode as Decode
import Json.Encode as Encode
import Request.Helpers exposing (apiUrl)


obtain : { r | username : String, password : String } -> Http.Request Token
obtain { username, password } =
    let
        body =
            Http.jsonBody <|
                Encode.object
                    [ ( "username", Encode.string username )
                    , ( "password", Encode.string password )
                    ]

        decoder =
            Decode.field "token" Token.decoder
    in
    Http.post (apiUrl "/token/obtain/") body decoder
