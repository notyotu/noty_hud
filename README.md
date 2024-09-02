Este es un script minimalista de dinero, trabajo y ID.
Podras editar tamaños y posiciones de cada Articulo por separado!




Les dejo el config.lua para que tengan un ejemplo antes de descargar!

Config = {}

-- Configuración para el dinero limpio
Config.HUD = {
    money = {
        x = 0.01, -- Posición en el eje X
        y = 0.76, -- Posición en el eje Y
        scale = 0.35, -- Escala del texto
        prefixScale = 0.1, -- Escala del prefijo
        color = {r = 0, g = 255, b = 0, a = 255}, -- Color del texto (verde)
        font = 4, -- Fuente del texto
        prefix = "💸   ", -- Prefijo del dinero mostrado
        showDecimals = false -- Mostrar decimales
    },

    -- Configuración para el dinero sucio
    black_money = {
        x = 0.11, -- Posición en el eje X (debajo del dinero limpio)
        y = 0.76, -- Posición en el eje Y
        scale = 0.35, -- Escala del texto
        prefixScale = 0.1, -- Escala del prefijo
        color = {r = 255, g = 0, b = 0, a = 255}, -- Color del texto (rojo)
        font = 4, -- Fuente del texto
        prefix = "💰   ", -- Prefijo del dinero sucio mostrado
        showDecimals = false -- Mostrar decimales
    },

    -- Configuración para el ID
    player_id = {
        x = 0.91, -- Posición en el eje X
        y = 0.08, -- Posición en el eje Y
        scale = 0.37, -- Escala del texto
        color = {r = 255, g = 255, b = 255, a = 255}, -- Color del texto (blanco)
        font = 4, -- Fuente del texto
        prefix = "ID: ", -- Prefijo del ID mostrado
    },

    -- Configuración para el trabajo
    job = {
        x = 0.94, -- Posición en el eje X
        y = 0.11, -- Posición en el eje Y
        scale = 0.37, -- Escala del texto
        color = {r = 255, g = 255, b = 255, a = 255}, -- Color del texto (blanco)
        font = 4, -- Fuente del texto
        prefix = "", -- Prefijo del trabajo mostrado
    },

    -- Configuración para el rango del trabajo
    grade = {
        x = 0.94, -- Posición en el eje X
        y = 0.14, -- Posición en el eje Y
        scale = 0.35, -- Escala del texto
        color = {r = 255, g = 255, b = 255, a = 255}, -- Color del texto (blanco)
        font = 4, -- Fuente del texto
        prefix = "", -- Prefijo del rango del trabajo mostrado
    }
}
