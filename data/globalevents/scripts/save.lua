function executeSaveServer()
    doSaveServer()
    return true
end

function onThink(interval, lastExecution, thinkInterval)
    doBroadcastMessage("Save server! care will freeze in server.", 22)
    addEvent(executeSaveServer, 1000)
    return true
end