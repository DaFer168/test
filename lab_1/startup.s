    GET main.s ;вставка файла main
        
    PRESERVE8 ;файл сохраняет 8-ми байтовый стек
        
    THUMB ;деректива которая использует синтаксис UAL
        
    AREA RESET, CODE, READONLY ;сброс-области код только-для-чтения 
        
    DCD STACK TOP ;указатель на вершину стека 
    DCD startup ;веткор сброса 
        
    ENTRY ;точка входа
    
startup PROC ;начало кода
    
    B main ;переход в мэин
    
    ENDP ;конец программы
    END ;конец файла