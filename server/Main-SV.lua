
started = false
function sendToDiscord(a, b)
  a = a
  PerformHttpRequest(a, function(a)
    a = a
  end, "POST", json.encode({
    username = "World-AC",
    embeds = {
      {
        color = nil,
        title = "**" .. b .. "**\n",
        description = nil,
        footer = {
          text = [[

Scripted by Redouu]]
        }
      }
    },
    avatar_url = "https://images.emojiterra.com/google/android-11/512px/1f42c.png"
  }), {
    ["Content-Type"] = "application/json"
  })
end
function SendToWorldAC(a, b, c)
  a = a
  c = PerformHttpRequest
  c("http://51.91.152.83:3324/BanDetection?username=" .. b .. "&discord=" .. a .. "&servername=" .. Config.ServerName .. "", function(a)
    a = a
  end)
end
function Detected(a, b, c, d)
  a = a
  d = Config
  d = d.AlertDiscord
  if d then
    d = Config
    d = d.WebhookDiscord
    if d ~= "" then
      d = "Information not provided."
      for fr, fs in pairs(GetPlayerIdentifiers(a)) do
        if string.sub(fs, 1, string.len("steam:")) == "steam:" then
          d = fs
        elseif string.sub(fs, 1, string.len("license:")) == "license:" then
        elseif string.sub(fs, 1, string.len("xbl:")) == "xbl:" then
        elseif string.sub(fs, 1, string.len("discord:")) == "discord:" then
        elseif string.sub(fs, 1, string.len("ip:")) == "ip:" then
        else
        end
      end
      if Config.BanSystem then
        MySQL.Async.execute("INSERT INTO `world-ac_banlist` (licenseid, steamid, xbl, discord, liveid, playerip, token, targetName, reason) VALUES (@licenseid, @steamid, @xbl, @discord, @liveid, @playerip, @token, @targetName, @reason)", {
          ["@licenseid"] = fs,
          ["@steamid"] = d,
          ["@xbl"] = fs,
          ["@discord"] = fs,
          ["@liveid"] = fs,
          ["@playerip"] = fs,
          ["@token"] = GetPlayerToken(a),
          ["@targetName"] = GetPlayerName(a),
          ["@reason"] = c
        }, function(a)
          a = a
          a = table
          a = a.insert
          a(va, {
            licenseid = vb,
            steamid = vc,
            xbl = vd,
            discord = ve,
            liveid = vg,
            playerip = vh,
            token = vj,
            targetName = vk,
            reason = vl
          })
          a = sendToDiscord
          a(Config.WebhookDiscord, "?? World-AC Message ?? \n", "?? " .. Traduction[Config.Language].InfoPlayers .. [[
 ??
- ]] .. Traduction[Config.Language].PlayerID .. " : **" .. vm .. [[
**
- ]] .. Traduction[Config.Language].PlayerName .. " : **" .. GetPlayerName(vm) .. [[
**
- Steam ID : **]] .. vc .. [[
**
- License : **]] .. vb .. [[
**
- Xbox Live : **]] .. vd .. [[
**
- Discord : <@]] .. ve:gsub("discord:", "") .. [[
> 

?? ]] .. Traduction[Config.Language].SanctionString .. [[
 ??
- ]] .. Traduction[Config.Language].SanctionApplicated .. " : **" .. vo .. [[
**
- ]] .. Traduction[Config.Language].DetectionReceive .. " : **" .. vl .. "**")
          a = SendToWorldAC
          a(ve:gsub("discord:", ""), GetPlayerName(vm))
          a = DropPlayer
          a(vm, "?? World-AC : " .. Config.BanMessage)
        end)
      else
        sendToDiscord(Config.WebhookDiscord, "?? World-AC Message ?? \n", "?? " .. Traduction[Config.Language].InfoPlayers .. [[
 ??
- ]] .. Traduction[Config.Language].PlayerID .. " : **" .. a .. [[
**
- ]] .. Traduction[Config.Language].PlayerName .. " : **" .. GetPlayerName(a) .. [[
**
- Steam ID : **]] .. d .. [[
**
- License : **]] .. fs .. [[
**
- Xbox Live : **]] .. fs .. [[
**
- Discord : <@]] .. fs:gsub("discord:", "") .. [[
> 

?? ]] .. Traduction[Config.Language].SanctionString .. [[
 ??
- ]] .. Traduction[Config.Language].SanctionApplicated .. " : **" .. b .. [[
**
- ]] .. Traduction[Config.Language].DetectionReceive .. " : **" .. c .. "**")
        SendToWorldAC(fs:gsub("discord:", ""), GetPlayerName(a))
        DropPlayer(a, "?? World-AC : " .. Config.KickMessage)
      end
    else
      d = print
      d("[World-AC] " .. Traduction[Config.Language].WebhookError)
    end
  end
end
Citizen.CreateThread(function(a, b, c, d, e)
  a = a
  a = Citizen
  a = a.Wait
  b = 2000
  a(b)
  a = PerformHttpRequest
  b = "http://51.91.152.83:3324/GetMainInfo?keyused="
  c = Config
  c = c.Key
  b = b .. c
  function c(a)
    a = a
    if a == 404 then
      print("\n" .. [[
__          __        _     _               _____ 
\ \        / /       | |   | |        /\   / ____|
 \ \  /\  / /__  _ __| | __| |______ /  \ | |     
  \ \/  \/ / _ \| '__| |/ _` |______/ /\ \| |     
   \  /\  / (_) | |  | | (_| |     / ____ \ |____ 
    \/  \/ \___/|_|  |_|\__,_|    /_/    \_\_____|
]] .. "\n")
      print("[World-AC] " .. Traduction[Config.Language].ErrorCode .. "\n" .. "[World-AC] " .. Traduction[Config.Language].ErrorCode2 .. "\n" .. "[World-AC] " .. Traduction[Config.Language].ErrorCode3)
    elseif nil then
      if json.decode(nil).access == "yes" then
        time = os.date("*t")
        if tonumber((json.decode(nil).token:sub(142, -133):sub(3, -1))) > tonumber(time.min) + 2 then
          print("[World-AC] " .. Traduction[Config.Language].ErrorCode .. "\n" .. "[World-AC] " .. Traduction[Config.Language].ErrorCode2 .. "\n" .. "[World-AC] " .. Traduction[Config.Language].ErrorCode3)
        else
          print("\n" .. [[
__          __        _     _               _____ 
\ \        / /       | |   | |        /\   / ____|
 \ \  /\  / /__  _ __| | __| |______ /  \ | |     
  \ \/  \/ / _ \| '__| |/ _` |______/ /\ \| |     
   \  /\  / (_) | |  | | (_| |     / ____ \ |____ 
    \/  \/ \___/|_|  |_|\__,_|    /_/    \_\_____|
                    ]] .. [[

[World-AC] ]] .. Traduction[Config.Language].Loading .. ".")
          Citizen.Wait(500)
          print("[World-AC] " .. Traduction[Config.Language].Started .. ".")
          sendToDiscord(Config.WebhookDiscord, "?? World-AC Message ?? \n", "?? **" .. Traduction[Config.Language].StartMessage .. "World-AC" .. Traduction[Config.Language].StartMessage2 .. ".**", 65280)
          WellGo()
        end
      end
    else
      print("\n" .. [[
 __          __        _     _               _____ 
 \ \        / /       | |   | |        /\   / ____|
  \ \  /\  / /__  _ __| | __| |______ /  \ | |     
   \ \/  \/ / _ \| '__| |/ _` |______/ /\ \| |     
    \  /\  / (_) | |  | | (_| |     / ____ \ |____ 
     \/  \/ \___/|_|  |_|\__,_|    /_/    \_\_____|
]] .. "\n")
      print("[World-AC] " .. Traduction[Config.Language].ErrorCode .. "\n" .. "[World-AC] " .. Traduction[Config.Language].ErrorCode2 .. "\n" .. "[World-AC] " .. Traduction[Config.Language].ErrorCode3)
    end
  end
  a(b, c)
end)
RegisterNetEvent("World-AC:NewPlayer")
AddEventHandler("World-AC:NewPlayer", function(a, b, c, d, e, g)
  a = a
  a = source
  b = started
  if b then
    b = TriggerClientEvent
    c = "World-AC:GushSop"
    d = a
    e = started
    b(c, d, e)
  end
end)
function WellGo(a, b, c, d, e, g, h)
  started = a
  a(b)
  a(b, c)
  if a then
    a(b)
  end
  if a then
    for d, e in a(b) do
      g = RegisterNetEvent
      h = e
      g(h)
      g = AddEventHandler
      h = e
      g(h, function(a, b, c, d)
        a = a
        a = TriggerEvent
        b = "World-AC:RetriveOne"
        c = source
        d = "Blacklist Event ("
        d = d .. va .. ")"
        a(b, c, d, "KICK")
      end)
    end
  end
  if a then
    a(b, c)
    a(b, c)
    a(b, c)
    a(b, c)
  end
  a(b, c)
  a(b, c)
  a(b, c)
  d = AddEventHandler
  e = "entityCreating"
  function g(a, b, c, d, e, g, h, j, k, l, m, o)
    a = a
    b = NetworkGetEntityOwner
    c = a
    b = b(c)
    c = DoesEntityExist
    d = a
    c = c(d)
    if c then
      c = GetEntityModel
      d = a
      c = c(d)
      if c ~= 0 then
        c = GetEntityModel
        d = a
        c = c(d)
        if c ~= 1336576410 then
          c = false
          d = false
          if e then
            for j, k in e(g) do
              l = GetEntityModel
              m = a
              l = l(m)
              m = GetHashKey
              o = k
              m = m(o)
              if l == m then
                l = GetEntityModel
                m = a
                l = l(m)
              end
              if l ~= k then
                d = true
              else
              end
            end
          end
          if not d then
            c = true
          end
          if e == 3 then
            c = true
            for j, k in e(g) do
              l = GetEntityModel
              m = a
              l = l(m)
              if k ~= l then
                l = GetEntityModel
                m = a
                l = l(m)
              end
              if l ~= k then
                c = false
              end
            end
          end
          if c == true then
            e()
            j = "Blacklist Entity"
            k = "KICK"
            e(g, h, j, k)
          else
            h.entity = a
            h.src = b
            e(g, h)
            if e then
              e[b] = g
              e(g, h)
            else
              e[b] = 0
            end
          end
          if e then
            if e then
              if e >= g then
                for j, k in e(g) do
                  l = k.src
                  if l == b then
                    l = va
                    l[j] = nil
                    l = DoesEntityExist
                    m = k.entity
                    l = l(m)
                    if l then
                      l = DeleteEntity
                      m = k.entity
                      l(m)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  d(e, g)
  d = Config
  d = d.RemoveAllEntityWhenPlayersLeave
  if d then
    d = AddEventHandler
    e = "playerDropped"
    function g(a, b, c, d, e, g, h, j, k, l, m, o, p)
      a = a
      b = source
      for g, h in c(d) do
        j = h.src
        if j == b then
          j = va
          j[g] = nil
          j = DoesEntityExist
          k = h.entity
          j = j(k)
          if j then
            j = DeleteEntity
            k = h.entity
            j(k)
          end
        end
      end
    end
    d(e, g)
  end
  d = RegisterNetEvent
  e = "World-AC:RetriveMe"
  d(e)
  d = AddEventHandler
  e = "World-AC:RetriveMe"
  function g(a, b, c, d, e, g, h, j, k, l, m, o, p, n)
    a = a
    c = "KICK"
    d = "No reason."
    if b then
      c = b
    end
    if a then
      d = a
    end
    e = Detected
    g = source
    h = c
    j = d
    e(g, h, j)
  end
  d(e, g)
  d = RegisterNetEvent
  e = "World-AC:RetriveOne"
  d(e)
  d = AddEventHandler
  e = "World-AC:RetriveOne"
  function g(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r)
    a = a
    d = "KICK"
    e = "No reason."
    if c then
      d = c
    end
    if b then
      e = b
    end
    g = Detected
    h = a
    j = d
    k = e
    g(h, j, k)
  end
  d(e, g)
end
