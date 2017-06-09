
Strict

Graphics 1024,64

'SetImageFont LoadImageFont( "ProggyCleanSZ.fon",13,0 )
'SetImageFont LoadImageFont( "UbuntuMono-R.ttf",24,SMOOTHFONT )
'SetImageFont LoadImageFont( "ProFontWindows.ttf",9,SMOOTHFONT )
'SetImageFont LoadImageFont( "Andale Mono",24,SMOOTHFONT )

Local w=TextWidth( " " )+2
Local h=TextHeight( " " )

For Local i=32 Until 128
	Local c$=Chr(i)
	Local x=(i-32)*w
	DrawText c,x+1,0
Next

Local pixmap:TPixmap=GrabPixmap( 0,0,w*96,h )
pixmap=MaskPixmap( pixmap,0,0,0 )

SavePixmapPNG pixmap,"data/mojo2_font.png"

Flip

WaitKey

Rem

Local w=TextWidth( " " )+2
Local h=TextHeight( " " )

For Local i=32 Until 128
	Local c$=Chr(i)
	Local x=(i-32)*w
	SetColor 255,255,255
	DrawText c,x,0
	DrawText c,x+2,0
	SetColor 0,0,0
	DrawRect x+1,0,w-2,h
	SetColor 255,255,255
	DrawText c,x+1,0
Next

Local pixmap:TPixmap=GrabPixmap( 0,0,w*96,h )
pixmap=MaskPixmap( pixmap,0,0,0 )

SavePixmapPNG pixmap,"data/mojo2_font.png"

Flip

WaitKey

End Rem
