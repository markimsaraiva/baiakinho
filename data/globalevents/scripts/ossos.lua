function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens = {"[PROMO��O-DOUBLE POINTS] Promo��o estendida at� o dia 30/06 para doa��es acima de 20 reais. -> baiakinho.ddns.net"} -- Defina as mensagens de propaganda
  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end