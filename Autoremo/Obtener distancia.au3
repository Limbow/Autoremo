#include <Misc.au3>


Global $pos1
Global $pos2

posicion()

Func posicion()

	MsgBox(0,"","ponga el mouse en su cabeza y precione enter")
	$pos1 = MouseGetPos()
	MsgBox(0,"","Listo X: " & $pos1[0] & " Y: " & $pos1[1])
	$pos2 = MouseGetPos()
	MsgBox(0,"","Listo X: " & $pos2[0] & " Y: " & $pos2[1])
	Local $distancias = CalcularDistancia($pos1[0], $pos1[1], $pos2[0], $pos2[1])

	MsgBox(0,"","Distancia. X" & $distancias[0] & " Y:" & $distancias[1])
EndFunc


Func CalcularDistancia($x1, $y1, $x2, $y2)
    ; Calcula la diferencia en X y Y
    Local $deltaX = $x2 - $x1
    Local $deltaY = $y2 - $y1

    ; Crea un array para devolver ambas distancias
    Local $distancias[2]
    $distancias[0] = Abs($deltaX)  ; Distancia en X
    $distancias[1] = Abs($deltaY)  ; Distancia en Y

    Return $distancias
EndFunc