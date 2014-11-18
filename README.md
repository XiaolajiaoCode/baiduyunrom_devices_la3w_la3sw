小辣椒3和3S百度云代码使用说明：
-------------

###下载:

		git clone https://github.com/XiaolajiaoCode/baiduyunrom_devices_la3w_la3sw

下载完后放置在百度云patchrom下的device文件夹中，并将文件夹名重命名为 la3w

###升级更新：

+ 在百度云根目录下执行：

		repo sync && source build/envsetup.sh

+ 进入la3w目录

		cd device/la3w

+ 开始自动升级

		coron upgrade

+ 如果出现自动patch失败则：

		coron autofix

+ 最后执行：

		coron fullota
