# relocation 

大多数 UNIX 系统命令从你的终端接受输入并将所产生的输出发送回到您的终端。一个命令通常从一个叫标准输入的地方读取输入，默认情况下，这恰好是你的终端。同样，一个命令通常将其输出写入到标准输出，默认情况下，这也是你的终端。

重定向命令列表如下：

| 命令 |	说明 |
|---------|---------|
| command  > file |	将输出重定向到 file。 |
| command  < file |	将输入重定向到 file。 |
| command  >> file|	将输出以追加的方式重定向到 file。 |
| n  > file |	将文件描述符为 n 的文件重定向到 file。 |
| n  >> file |	将文件描述符为 n 的文件以追加的方式重定向到 file。 |
| n  >& m |	将输出文件 m 和 n 合并。 |
| n  <& m |	将输入文件 m 和 n 合并。 |
| <<  tag |	将开始标记 tag 和结束标记 tag 之间的内容作为输入。 |

>需要注意的是文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。

## 输出重定向

一般的指令是

`command > file`

这样会执行`command`然后将其重定向到file文件中，并且是覆盖，如果想要添加到最后可以使用`command >> file`。

一个例子：

```bash
echo "I'm good" > condition.txt
```

上面的例子会将字符串`I'm good`覆盖到condition.txt文件中


## 输出重定向

一般的指令是

`command < file`

这样，本来需要从键盘获取输入的命令会转移到文件读取内容。

注意：输出重定向是大于号(>)，输入重定向是小于号(<)。

例子：

接着以上实例，我们需要统计 file 文件的行数,执行以下命令：
```bash
wc -l file
```

我们也可以通过重定向的方式进行：
```bash
wc -l < file
```

注意，上面两个两个虽然都是统计行数，但是有差别，在于第二个没有文件的名字，因为输入重定向是直接输出到终端，属于标准输入。

## 深入理解重定向

一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：

标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。
默认情况下，command > file 将 stdout 重定向到 file，command < file 将stdin 重定向到 file。

如果希望 stderr 重定向到 file，可以这样写：
```bash
$ command 2>file
```


## /dev/null 文件

如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null：

```bash
$ command > /dev/null
```
/dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果。

如果希望屏蔽 stdout 和 stderr，可以这样写：

```bash
$ command > /dev/null 2>&1
```
> 注意：0 是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）。这里的 2 和 > 之间不可以有空格，2> 是一体的时候才表示错误输出。
