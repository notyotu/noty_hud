ESX = exports["es_extended"]:getSharedObject()
local playerMoney = 0
local playerBlackMoney = 0
local playerId = nil
local playerJob = nil
local playerJobGrade = nil

-- Hilo para obtener datos del jugador
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) -- Actualiza cada segundo

        -- Obtiene el dinero limpio y sucio del inventario usando ox_inventory
        playerMoney = exports.ox_inventory:Search('count', 'money') or 0
        playerBlackMoney = exports.ox_inventory:Search('count', 'black_money') or 0

        -- Obtiene la información del jugador
        local player = PlayerPedId()
        playerId = GetPlayerServerId(PlayerId())
        playerJob = ESX.GetPlayerData().job.label
        playerJobGrade = ESX.GetPlayerData().job.grade_label
    end
end)

-- Hilo para renderizar el HUD en pantalla
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0) -- Renderiza continuamente

        -- Renderiza el dinero limpio
        renderHUD(Config.HUD.money, playerMoney)

        -- Renderiza el dinero sucio
        renderHUD(Config.HUD.black_money, playerBlackMoney)

        -- Renderiza el ID del jugador
        renderTextHUD(Config.HUD.player_id, playerId)

        -- Renderiza el trabajo del jugador
        renderTextHUD(Config.HUD.job, playerJob)

        -- Renderiza el rango del trabajo del jugador
        renderTextHUD(Config.HUD.grade, playerJobGrade)
    end
end)

-- Función para renderizar el HUD de dinero
function renderHUD(config, amount)
    local x, y = config.x, config.y
    local scale = config.scale
    local color = config.color
    local font = config.font
    local prefix = config.prefix
    local showDecimals = config.showDecimals

    -- Prepara el texto a mostrar
    local moneyText = prefix .. (showDecimals and string.format("%.2f", amount) or math.floor(amount))

    -- Configura el texto en pantalla
    SetTextFont(font)
    SetTextProportional(1)
    SetTextScale(scale, scale)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextDropShadow(0, 0, 0, 0, color.a)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(moneyText)
    DrawText(x, y)
end

-- Función para renderizar texto general (ID, Job, Grade)
function renderTextHUD(config, text)
    local x, y = config.x, config.y
    local scale = config.scale
    local color = config.color
    local font = config.font
    local prefix = config.prefix

    -- Prepara el texto a mostrar
    local displayText = prefix .. (text or "N/A")

    -- Configura el texto en pantalla
    SetTextFont(font)
    SetTextProportional(1)
    SetTextScale(scale, scale)
    SetTextColour(color.r, color.g, color.b, color.a)
    SetTextDropShadow(0, 0, 0, 0, color.a)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(displayText)
    DrawText(x, y)
end

