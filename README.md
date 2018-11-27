# rouing/luarocks
## Lua based container by [William Cody Ardoin](https://git.rouing.me/)

### DESCRIPTION
A small container for Lua with Luarocks preinstalled for ease of use. Since it's a base container, you should use to extend according to your needs. The container allows you to choose between two versions of lua for luarocks.

### USAGE
Currently the container has two versions of lua, **5.1** and **5.3**. You can use each with a simple switch on the branch.
The container also contains different versions of luarocks. You can use each with a simple switch of the tag.

* base branches:
    * latest: uses lua-5.3 for luarocks
    * lua5.1: uses lua-5.1 for luarocks
    * lua5.3: uses lua-5.3 for luarocks
* luarock version on tags:
    * latest: uses luarocks 3.0.3
    * 3.0.X: uses luarocks 3.0.3
    * 2.3.0: uses luarocks 2.3.0
