/**
 * 这个程序执行后，进入到 lua 虚拟机
 * 你可以像使用虚拟机一样使用这个程序
 */
// .a 是一个静态库文件
// gcc test.c -o test ~/lua-5.1.5/src/liblua.a -lm
// 运行
#include "lauxlib.h"
#include "lua.h"
#include "lualib.h"
#include <stdio.h>
#include <string.h>

int main() {
  int error;
  // 打开 lua
  lua_State *L = luaL_newstate();

  // 打开标准库
  luaL_openlibs(L);

  puts("This is C code.");
  char luaCode[1024] = {0};

  while (fgets(luaCode, sizeof(luaCode), stdin) != NULL) {
    error = luaL_loadbuffer(L, luaCode, strlen(luaCode), "line");
    lua_pcall(L, 0, 0, 0);
    if (error) {
      fprintf(stderr, "%s\n", lua_tostring(L, -1));
      lua_pop(L, 1);
    }
  }

  lua_close(L);
  return 0;
}
