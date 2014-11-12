#Autenticação OAuth 2.0 com Corona SDK, LUA, Android (POC)

Este documento tem como objetivo apresentar o conceito utilizado para consumo de uma API com sistema de segurança OAuth e Passport, através de um APP Android desenvolvida em Corona com LUA.


##API
Para consumir a API é necessário fornecer um Token, este por sua vez deve ser verificado pelo servidor OAuth através do Passport afim de permitir ou não o consumo da API.


###Consumindo a API através de uma APP Android desenvolvida em Corona SDK, LUA.
De posse deste Token qualquer aplicação pode requisitar recursos [GET] ou enviar [POST] nos dados para API.
O token deve ser enviado no Header da requisição.  

**Exemplo**  
GET : http://api.xpto.com/experiences

```lua
local URL = "http://api.xpto.com/experiences"
local headers = {}

headers["Authorization"] = "Bearer 18101149848316dc9db6db1dd7cca43ea96c313d"
local params = {}
params.headers = headers

local function experiencesCallback(event) 
  if (event.isError) then
    print( "Erro na requisição")
  else
    print ( "RESPONSE: " .. event.response )
  end
  return true
end

network.request(URL,"GET",experiencesCallback, params)
```

###Referências
http://docs.coronalabs.com/api/library/network/request.html
