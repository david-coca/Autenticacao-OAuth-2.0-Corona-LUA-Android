-- Projeto: Exemplo de consumo de API com OAuth 2.0
-- Arquivo: main.lua
-- Autor: David Coca - dtadeu.coca@gmail.com
-- Objetivo: Consumir uma API REST e exibir o retorno no console do Corona SDK
-----------------------------------------------------------------------------------------
--URL da API
local URL = "http://api.xpto.com/experiences"

local headers = {}
--Adicionando HEADER de autorização
headers["Authorization"] = "Bearer 18111119118179dc9db6db1dd7cca43ea96c342d"

local params = {}
params.headers = headers

--Função callback para tratamento do retorno da requisição da API Experiences
local function experiencesCallback(event)	
	if (event.isError) then
		print( "Erro na requisição")
	else
		print ( "RESPONSE: " .. event.response )
    end
    return true
end

--Requisição HTTP GET da API.
network.request(URL,"GET",experiencesCallback, params)