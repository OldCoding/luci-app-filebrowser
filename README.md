# luci-app-filebrowser
在OpenWRT中配置filebrowser的LUCI应用，转自 xiaozhuai 的库，略作修改。

1. 删除了用户名、密码输入框

2. 从 LuCI 界面 “服务” 菜单更改到 “网络存储”菜单

3. 修复无法运行的问题

首次运行前，需要手动下载可执行文件，需要科学上网！如果你的空间足够大，推荐可执行文件目录配置为`/usr/bin`，否则根据需要放到你认为合适的目录。（路径不能包含空格）

适用于LEDE OpenWRT

# 构建

```
git clone https://github.com/OldCoding/luci-app-filebrowser package/luci-app-filebrowser
make package/luci-app-filebrowser/compile
```