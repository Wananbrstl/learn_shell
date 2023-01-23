# shell comment 
Two ways:

## multy line

```bash
:<<EOF
第一行注释
第二行注释
第三行注释
EOF
```

ps: EOF可以是别的字符，比如换成`fuck`:
```bash
:<<FUCK
xxxxxxxx
FUCK
```

## one line

```bash
# this is a comment
```
