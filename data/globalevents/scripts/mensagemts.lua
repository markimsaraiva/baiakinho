function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 20 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Baiakinho:
Red Skull = 100 frags no dia
Black Skull = Sem limites
Autoloot = Para saber como funciona digite !autoloot
]]
}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end