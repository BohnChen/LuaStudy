#include "lauxlib.h"
#include "lua.h"
#include "lualib.h"
#include <stdio.h>
#include <string.h>

int main() {
  char buff[256];
  int error;
  // 打开 lua
  lua_State *L = luaL_newstate();

  // 打开标准库
  luaL_openlibs(L);

  while (fgets(buff, sizeof(buff), stdin) != NULL) {
    error = luaL_loadstring(L, buff) || lua_pcall(L, 0, 0, 0);
    if (error) {
      fprintf(stderr, "%s\n", lua_tostring(L, -1));
      lua_pop(L, 1);
    }
  }

  lua_close(L);
  return 0;
}
