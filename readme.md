Работа с платой миландр.

# Этап 1. Оцифровка и квадратурная демодуляция сигнала ПЧ в непрерывном режиме

## Задачи
1. [+]Прием оцифрованных данных от АЦП через DMA
2. [+]Определение сетки частоты дискретизации и ее установки
3. [-]Разработка ПО для квадратурной демодуляции
4. [-]Определение апаратных средств процессора для демодуляции
5. [-]Определение полосы частот входного сигнала для оцифровки и АЧХ
6. [-]Определение динамической характеристики АЦП
7. [-]Определение кратковременной и долговременной нестабильности частоты дискретизации
   и влияние на спектральную чистоту и статическую ошибку частоты

## Отчетность
1. [-]Таблица регистров DMA TBL
1. [-]Таблица регистров PLD клок АЦП
1. [-]Отчет с картинками на 1 страничке
1. [-]Исходники с make

## Состав стенда
1. [+]Генератор 33x
2. [+]Отладочная плата 1498
3. [+]ПК с matlab и средствами разработки, LAN

## План
1. [+]Собираем стенд
2. [+]Пишем scpi.m
3. [+]Пишем прогу непрерывного выплевывания raw data на консоль, repack не делаем
   - один канал DMA пинг понг
   - другой канал DMA копим любой длины буфер по евентам от пинг понг DMA
   - как завершится б сливаем буфер в консоль
   - слили запускаем опять б
   - и по кругу
4. [+]Подгружаем в матлаб

## АЧХ входных цепей
1. выставляем на гене фиксированную частоту
2. считываем массив
