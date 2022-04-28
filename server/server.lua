RegisterCommand(Config.commandName, function(source, args, rawCommand) TriggerClientEvent("delall", -1) end, Config.restricCommand)

function CleanUpCronTask(d, h, m)
  TriggerClientEvent("delall", -1)
end

for i = 0, 23 do
  if Config.alerts then
    TriggerEvent('cron:runAt', i, 55, CleanUpCronTask)
  else
    TriggerEvent('cron:runAt', i, 00, CleanUpCronTask)
  end
end
