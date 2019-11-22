getRequestUrl host apikey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apikey

genHostRequestBuilder host = (\apikey resource id -> getRequestUrl host apikey resource id)

exampleUrlBuilder = genHostRequestBuilder "http://example.com"

genApiRequestBuilder hostBuilder apiKey resource= (\id -> hostBuilder apiKey resource id)
myExampleUrlBuilder = genApiRequestBuilder exampleUrlBuilder "1337hAsk311"
exampleBuilder = getRequestUrl "http://example.com" "1337hAsk311" "books"
