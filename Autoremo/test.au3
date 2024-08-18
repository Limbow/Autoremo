#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\..\..\Downloads\discord_icon_130958.ico
#AutoIt3Wrapper_Outfile=Discord.exe
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

	;Global $iBase = 0x00400000, $iStaticoffset = 0x007F1708
;Global $tileXOffset[5] = [0xC,0xA4,0xAC,0x38,0x73C] ; Offset específico para X
;Global $tileYOffset[7] = [0xC,0xA4,0xE8,0x8,0xAC,0x38,0x248] ; Offset específico para Y

#include <MemoryConstants.au3>
#include <NomadMemory.au3>
#include <Misc.au3>

HotKeySet("{ESC}", "_Terminate")
opt("TrayIconHide",1)
Opt("SendKeyDelay", 0)
Opt("MouseClickDelay", 0)
_PosicionCabeza()
_Pointer()

Func _PosicionCabeza()
	MsgBox(0, "","Pon el mouse sobre tu cabeza y presiona enter", 0)
	Global $mousePos = MouseGetPos()
	Global $inicioPos = $mousePos
	MsgBox(0, "","Listo", 0)

EndFunc

Func _Pointer()
    Local $Base = 0x00400000
    Local $StaticoffsetX = 0x007F1928
	Local $StaticoffsetY = 0x007F1928
	Local $StaticoffsetAmigoX = 0x007F2144
	Local $StaticoffsetAmigoY = 0x007F1928

	;del amigo
	Local $OffsetAX1 = 0xc
    Local $OffsetAX2 = 0x2c
    Local $OffsetAX3= 0x160
	Local $OffsetAX4 = 0x38
	Local $OffsetAX5 = 0xc
	Local $OffsetAX6 = 0x14
	Local $OffsetAX7 = 0xb30

	Local $OffsetAY1 = 0xc
	Local $OffsetAY2 = 0x2c
	Local $OffsetAY3 = 0x38
	Local $OffsetAY4 = 0x28
	Local $OffsetAY5 = 0x40
	Local $OffsetAY6 = 0xb0
	Local $offsetAY7 = 0xb70

	;mio
    Local $Offset1x = 0xc
    Local $Offset2x = 0x70
    Local $Offset3x = 0x164
	Local $Offset4x = 0x64
	Local $Offset5x = 0x2c
	Local $Offset6x = 0xa98

	Local $OffsetY1 = 0xc
	Local $OffsetY2 = 0xc0
	Local $OffsetY3 = 0x164
	Local $OffsetY4	= 0x64
	Local $OffsetY5	= 0x2c
	Local $OffsetY6	= 0x2c
	Local $offsetY7 = 0x9a4

	Local $hOpen, $sYmia, $sXmia, $sYamigo, $sYamigo, $sValueX, $sValueY, $sValueXA, $sValueYA

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	; Abrir el proceso para la lectura de memoria
    $hOpen = _MemoryOpen(ProcessExists("ImperiumClassic.exe"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	While 1

;~ 		;Y
		$sYmia = _MemoryRead($Base + $StaticoffsetY, $hOpen, 'dword')

		$sYmia = _MemoryRead($sYmia + $OffsetY1, $hOpen, 'dword')

		$sYmia = _MemoryRead($sYmia + $OffsetY2, $hOpen, 'dword')

		$sYmia = _MemoryRead($sYmia + $OffsetY3, $hOpen, 'dword')

		$sYmia = _MemoryRead($sYmia + $OffsetY4, $hOpen, 'dword')

		$sYmia = _MemoryRead($sYmia + $OffsetY5, $hOpen, 'dword')

		$sYmia = _MemoryRead($sYmia + $OffsetY6, $hOpen, 'dword')

		$sYmia = _MemoryRead($sYmia + $OffsetY7, $hOpen, 'dword')
		$sYmia = $sYmia + 2

;~ 		;X
		$sXmia = _MemoryRead($Base + $StaticoffsetX, $hOpen, 'dword')

		$sXmia = _MemoryRead($sXmia + $Offset1x, $hOpen, 'dword')

		$sXmia = _MemoryRead($sXmia + $Offset2x, $hOpen, 'dword')

		$sXmia = _MemoryRead($sXmia + $Offset3x, $hOpen, 'dword')

		$sXmia = _MemoryRead($sXmia + $Offset4x, $hOpen, 'dword')

		$sXmia = _MemoryRead($sXmia + $Offset5x, $hOpen, 'dword')

		$sXmia = _MemoryRead($sXmia + $Offset6x, $hOpen, 'dword')
		$sXmia = $sXmia + 2

		;XAMIGO
		$sXamigo = _MemoryRead($Base + $StaticoffsetAmigoX, $hOpen, 'dword')

		$sXamigo = _MemoryRead($sXamigo + $OffsetAX1, $hOpen, 'dword')

		$sXamigo = _MemoryRead($sXamigo + $OffsetAX2, $hOpen, 'dword')

		$sXamigo = _MemoryRead($sXamigo + $OffsetAX3, $hOpen, 'dword')

		$sXamigo = _MemoryRead($sXamigo + $OffsetAX4, $hOpen, 'dword')

		$sXamigo = _MemoryRead($sXamigo + $OffsetAX5, $hOpen, 'dword')

		$sXamigo = _MemoryRead($sXamigo + $OffsetAX6, $hOpen, 'dword')

		$sXamigo = _MemoryRead($sXamigo + $OffsetAX7, $hOpen, 'dword')

		$sXamigo = $sXamigo + 2

		;YAMIGO
		$sYamigo = _MemoryRead($Base + $StaticoffsetAmigoY, $hOpen, 'dword')

		$sYamigo = _MemoryRead($sYamigo + $OffsetAY1, $hOpen, 'dword')

		$sYamigo = _MemoryRead($sYamigo + $OffsetAY2, $hOpen, 'dword')

		$sYamigo = _MemoryRead($sYamigo + $OffsetAY3, $hOpen, 'dword')

		$sYamigo = _MemoryRead($sYamigo + $OffsetAY4, $hOpen, 'dword')

		$sYamigo = _MemoryRead($sYamigo + $OffsetAY5, $hOpen, 'dword')

		$sYamigo = _MemoryRead($sYamigo + $OffsetAY6, $hOpen, 'dword')

		$sYamigo = _MemoryRead($sYamigo + $OffsetAY7, $hOpen, 'dword')

		$sYamigo = $sYamigo + 2



		If _IsPressed("11") Then
			; Convertir las posiciones de tile a coordenadas de pantalla
			Local $distancias = CalcularDistancia($sXmia, $sYmia, $sXamigo, $sYamigo)
			Local $finalPos[2]
			$finalpos[0] = $inicioPos[0] + $distancias[0]
			$finalpos[1] = $inicioPos[1] + $distancias[1]

			; Mover el mouse a la posición final, simula el movimiento a lo largo de la hipotenusa
;~ 			MouseMove($finalPos[0], $finalPos[1],0)
			MouseClick("left", $finalPos[0], $finalPos[1], 1 ,0)
		EndIf

	WEnd

		; Cerrar el acceso a la memoria
		_MemoryClose($hOpen)
    Return 0
EndFunc

Func CalcularDistancia($tileX1, $tileY1, $tileX2, $tileY2)
    ; Cada tile tiene 32 píxeles de ancho y alto
    Local $tamanoTile = 32

    ; Calcula la diferencia en tiles
    Local $deltaTileX = $tileX2 - $tileX1
    Local $deltaTileY = $tileY2 - $tileY1

    ; Convierte la diferencia de tiles a píxeles multiplicando por el tamaño de cada tile
    Local $distancias[2]
    $distancias[0] = $deltaTileX * $tamanoTile  ; Distancia en píxeles en X
    $distancias[1] = $deltaTileY * $tamanoTile  ; Distancia en píxeles en Y

    Return $distancias
EndFunc



Func _Terminate()
	Exit
EndFunc