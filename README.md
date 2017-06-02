# 说明

此仓库用于存放各种配置文件,以达到备份的目的

在系统中使用该仓库,将不同的APP不同的系统设置文件存放在此处,通过版本控制管理起来

将此仓库的配置文件软连接到系统读取配置文件的地方

# 使用

## 添加配置文件

```
cd  ~/
mv .vimrc ~/dotfiles/vimrc
ln -s ~/dotfiles/vimrc .vimrc
```

## 恢复备份

```
git clone https://github.com/wujunchuan/dotfiles
rm -rf .vimrc //首先要删除机器上原有的配置文件
ln -s ~/dotfiles/vimrc .vimrc
```

# 参考资料

[dotfiles.github.io](http://dotfiles.github.io/)
[dotfiles](https://github.com/paulmillr/dotfiles)
