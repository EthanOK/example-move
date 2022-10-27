解压 aptos-stdlib move-stdlib.zip，将aptos-stdlib和move-stdlib文件夹放至与example-move同目录下。
# example-move

```
自定义module需要publish

在沙盒环境使用move sandbox publish -v发布字节码到0x888名下(module ethan::math1--ethan = "0x888")
move-cli sandbox publish -v

在沙盒环境执行script脚本
move-cli sandbox run scripts/calnumber.move --args 100 20
```
