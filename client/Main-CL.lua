
Citizen.CreateThread(function(a, b)
  a = a
  a = TriggerServerEvent
  b = "World-AC:NewPlayer"
  a(b)
end)
RegisterNetEvent("World-AC:GushSop")
AddEventHandler("World-AC:GushSop", function(a, b, c)
  a = a
  if a then
    b = va
    if not b then
      b = print
      c = "[World-AC] Anticheat started !"
      b(c)
      b = WellGo
      b()
    end
  end
end)
function WellGo(a, b, c, d)
  va = a
  imunated = a
  ESX = a
  if a then
    a(b)
  end
  if a then
    a(b, c)
    a(b)
  end
  if a then
    if not a then
      for d, fe in a(b) do
        if ESX.GetPlayerData().group == fe then
          imunated = true
        end
      end
    end
  end
  a(b)
  if not a then
    a(b)
    a(b, c)
    if b then
      d = "onClientResourceStart"
      c(d, function(a, b, c, d, e, g)
        a = a
        b = va
        c = a
        b(c)
      end)
      d = "onResourceStarting"
      c(d, function(a, b, c, d, e, g, h)
        a = a
        b = va
        c = a
        b(c)
      end)
    end
    if b then
      b.__gc = c
      function d(a, b, c, d, e, g, h, j, k, l)
        a = a
        a = va
        b = FindFirstObject
        c = FindNextObject
        d = EndFindObject
        return a(b, c, d)
      end
      EnumerateObjects = d
      function d(a, b, c, d, e, g, h, j, k, l, m)
        a = a
        a = va
        b = FindFirstPed
        c = FindNextPed
        d = EndFindPed
        return a(b, c, d)
      end
      EnumeratePeds = d
      function d(a, b, c, d, e, g, h, j, k, l, m, o)
        a = a
        a = va
        b = FindFirstVehicle
        c = FindNextVehicle
        d = EndFindVehicle
        return a(b, c, d)
      end
      EnumerateVehicles = d
      function d(a, b, c, d, e, g, h, j, k, l, m, o, p)
        a = a
        a = va
        b = FindFirstPickup
        c = FindNextPickup
        d = EndFindPickup
        return a(b, c, d)
      end
      EnumeratePickups = d
      d = Citizen
      d = d.CreateThread
      d(function(a, b, c, d, e, g, h, j, k, l, m, o, p, n)
        while true do
          a(b)
          for d in a() do
            e = NetworkHasControlOfEntity
            g = d
            e = e(g)
            if e then
              e = GetPedInVehicleSeat
              g = d
              h = 1
              e = e(g, h)
              if e then
              else
                e = ApplyForceToEntity
                g = d
                h = 3
                j = GetEntityCoords
                k = d
                j = j(k)
                j = j.x
                k = GetEntityCoords
                l = d
                k = k(l)
                k = k.y
                l = GetGroundZFor_3dCoord
                m = GetEntityCoords
                o = d
                m = m(o)
                m = m.x
                o = GetEntityCoords
                p = d
                o = o(p)
                o = o.y
                p = 0
                n = true
                l = l(m, o, p, n)
                m = 0
                o = 0
                p = 0
                n = false
                e(g, h, j, k, l, m, o, p, n, true, true, true, true, false)
              end
            end
          end
        end
      end)
    end
    if b then
      function d(a, b, c, d, e, g, h, j, k, l, m, o, p, n, r)
        a = a
        b = Citizen
        b = b.CreateThread
        function c(a)
          a = a
          a = TriggerServerEvent
          a("World-AC:RetriveMe", "Resources Stop", "KICK")
          a = Citizen
          a = a.Wait
          a(5000)
          while true do
          end
        end
        b(c)
      end
      b(c, d)
    end
    if b then
      b(c)
    end
    b(c)
    b(c)
    b(c)
    if b then
      b(c)
    end
    if b then
      b(c)
    end
    if b then
      b(c)
    end
    if b then
      b(c)
    end
    if b then
      b(c)
    end
    if b then
      b(c)
    end
    if b then
      if b then
        b(c)
      end
    end
    if b then
      b(c)
    end
  end
end
