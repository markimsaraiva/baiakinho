function onThink(interval, lastExecution)
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[O Baiakinho deseja um bom jogo a todos!!! Contato com a equipe pela Fanpage no Facebook!!!]]
}
doBroadcastMessage(mensagens[1], cor)
return TRUE
end