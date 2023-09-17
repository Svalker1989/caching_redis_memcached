#!/bin/bash
#Цикл по всем ключам в редиск
for key in $(redis-cli -p 6379 keys \*);
  do echo "Key : '$key'" 
#Получаем все значения по ключам
     redis-cli -p 6379 GET $key;
done
