main            proc near               ; DATA XREF: _start+17

var_20          = dword ptr -20h
var_4           = dword ptr -4

                push    ebp
                mov     ebp, esp
                and     esp, 0FFFFFFF0h
                sub     esp, 20h
                mov     [esp+20h+var_4], 2  ; инициализация i
                jmp     short loc_8048476

loc_8048465:
                mov     eax, [esp+20h+var_4]
                mov     [esp+20h+var_20], eax
                call    f
                add     [esp+20h+var_4], 1  ; инкремент i

loc_8048476:
                cmp     [esp+20h+var_4], 9
                jle     short loc_8048465   ; если i<=9, продолжаем цикл
                mov     eax, 0
                leave
                retn
main            endp
