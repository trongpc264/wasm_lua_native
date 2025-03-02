/*
 * SPDX-FileCopyrightText: 2010-2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: CC0-1.0
 */

#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_chip_info.h"
#include "esp_flash.h"
#include "esp_log.h"
#include "esp_system.h"

/// Lua runtime
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

/// Lua application
#include "../../lua_applications/luminance_lua.h" /* Lua application (after hexdump) */

#define LOG_TAG "Lua"
 
void run_embedded_lua(const char *lua_script, size_t lua_script_len)
{
    lua_State *L = luaL_newstate();
    if (L == NULL)
    {
        ESP_LOGE(LOG_TAG,"Failed to create new Lua state");
        return;
    }
    luaL_openlibs(L);
    if (luaL_loadbuffer(L, lua_script, lua_script_len, "lua_script") != LUA_OK)
    {
        ESP_LOGE(LOG_TAG,"Error loading Lua script: %s", lua_tostring(L, -1));
        lua_pop(L, 1);
        lua_close(L);
        return;
    }
    if (lua_pcall(L, 0, LUA_MULTRET, 0) != LUA_OK)
    {
        ESP_LOGE(LOG_TAG,"Error running Lua script: %s", lua_tostring(L, -1));
        lua_pop(L, 1);
    }
    lua_close(L);
}

void app_main(void)
{
    ESP_LOGI(LOG_TAG,"Call Lua program.");
    run_embedded_lua((const char*)luminance_lua, (size_t)luminance_lua_len);
    ESP_LOGI(LOG_TAG,"End of Lua program.");
    return;
}
