function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens = {"[PROMOÇÃO-DOUBLE POINTS] Promoção estendida até o dia 30/06 para doações acima de 20 reais. -> baiakinho.ddns.net"} -- Defina as mensagens de propaganda
  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end