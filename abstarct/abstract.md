# abstract 

shell是脚本语言，我们在运行的时候需要和python一样，需要在文本之前加上解释：

```shell
#! /usr/bin/bash
...
```

在执行的时候，和可执行文件一样，可以通过`./exe`进行执行，当然，可能生成的文件没有可执行权限，我们需要赋予其可执行权限：

```shell
chmod +x xx.sh
```

此外，我们还可以通过解释器进行执行：

```shell
bash xx.sh
```
