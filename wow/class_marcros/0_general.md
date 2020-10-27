# 常用宏
## 鼠标指向
```
#showtooltip 技能名称
/cast [@mouseover,exists][] 技能名称
```

## 双重技能
```
#showtooltip 友好技能
/cast [@mouseover,nodead,help][nodead,help]友好技能; [@mouseover,nodead,harm][nodead,harm]敌对技能; 友好技能
```