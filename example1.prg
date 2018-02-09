*--------------------------------------------------------------------------------------
* Example1.prg
*--------------------------------------------------------------------------------------
* FoxBarcodeQR example form
*--------------------------------------------------------------------------------------

SET PROCEDURE TO LOCFILE("FoxBarcodeQR.prg") ADDITIVE

*--- Create FoxBarcodeQR object and QR Code barcode image
LOCAL loFbc, lcQRImage
m.loFbc = CREATEOBJECT("FoxBarcodeQR")
m.lcQRImage = m.loFbc.QRBarcodeImage("Gopal Ji Account No. 0000013 Amt.33400 Dr.", , 6, 2)
*WAIT WINDOW m.lcQRImage
*-- Create form
LOCAL loForm AS FORM
m.loForm = CREATEOBJECT("Form")
WITH m.loForm
.CAPTION = "FoxBarcodeQR example form"
.WIDTH = 400
.HEIGHT = 400
.BACKCOLOR = RGB(255,255,255)
.AUTOCENTER = .T.
.ADDOBJECT("Image1", "Image")
WITH .Image1
  .PICTURE = m.lcQRImage
  .TOP = 20
  .LEFT = 20
  .VISIBLE = .T.
ENDWITH
.SHOW(1)
ENDWITH 

m.loForm = NULL
m.loFbc = NULL

