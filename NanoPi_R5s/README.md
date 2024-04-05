# 友善 R5S/R5C 软路由刷机教程

更多详细资料可参考 FriendlyWrt [官方文档](https://wiki.friendlyelec.com/wiki/index.php/NanoPi_R5S/zh).

## 用 TF 启动卡烧写系统固件到 eMMC

此方法是通过 TF 卡启动一个小型的 Linux 系统, 然后自动运行一个名为 EFlasher 的工具来将固件烧写到 eMMC 中。可以连接 HDMI 显示器, 通过图形界面来了解进展, 但不是必需的, 可以通过 LED 灯来掌握烧写进度。

资源链接：[百度网盘](https://pan.baidu.com/s/1VEFUSDJ7s5qVpBl-8sjtkg?pwd=dtdo#list/path=%2F)，[Google Drive](https://drive.google.com/drive/folders/1yWLtwCesnHfoM8DG7NgJ4jZrjRSI-dQs)

1. 下载能够从 SD 卡到 eMMC 的 EFlasher 固件， 如 rk3568-eflasher-friendlywrt-23.05-docker-20240329.img.gz

2. 下载 eMMC 烧写所需的工具 `win32diskimager`。

3. 在 Windows 下以**管理员身份**运行 win32diskimager，在界面上选择你的 TF 卡盘符，选择**解压后**的 EFlasher 固件，点击 Write 按钮烧写到 SD 卡。

4. 将 TF 卡从电脑端弹出，插入 NanoPi-R5S 的 TF 卡槽。

5. 连接 NanoPi-R5S 的电源，系统会从 TF 卡启动，并自动启动 EFlasher 烧写工具将系统安装到 eMMC, 可以通过板载 LED 灯来了解安装进度:

    | 进度     | SYS 灯 （红） | LAN 灯（绿） | WAN 灯（绿） |
    | -------- | ------------- | ------------ | ------------ |
    | 上电开机 | 长亮          | 灭           | 灭           |
    | 系统启动 | 满闪          | 灭           | 灭           |
    | 正在烧写 | 快闪          | 灭           | 灭           |
    | 烧写完成 | 慢闪          | 长亮         | 长亮         |

6. 烧写完成后，需切断电源，然后从 NanoPi-R5S 端弹出 TF 卡，重新上电开机，NanoPi-R5S 会从 eMMC 启动你刚刚烧写的系统。

## eMMC 与 TF 卡的启动优先级说明 (救砖办法)

如遇到总是从 eMMC 启动 (意味着无法通过TF卡烧写系统了)的情况时, 可以用如下方法让 NanoPi-R5S 从 TF 卡启动系统, 进行系统重装或 Flash 擦除:

1. 插入一张烧写有 FriendlyWrt 系统的 TF 卡 (制作方法请参考上面的章节);

2. 按下 Maskrom 按键, 并上电开机 (或短接 Maskrom 触点);

3. 重要: 上电后默数 4 秒左右立即松开 Maskrom 按键;

4. NanoPi-R5S 将会从 TF 卡启动 FriendlyWrt 系统;

5. 用网线连接电脑到 NanoPi-R5S 的 LAN 网口, 在电脑上输入网址 http://192.168.2.1 进入 FriendlyWrt 管理页面, 使用系统菜单中的 eMMC 刷机工具重新烧写系统到 eMMC。

## 软路由网口配置

详细步骤可参考[软路由网口配置视频](LAN_configuration.mp4)。
