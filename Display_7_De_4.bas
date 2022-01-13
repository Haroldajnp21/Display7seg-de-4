'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2022 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 12/01/2022                                        *
'*  Version : 1.0                                               *
'*  Notes   :                                                   *
'*          :                                                   *
'****************************************************************
;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F886

Config1 FOSC_EXTRC_CLKOUT, WDTE_ON, PWRTE_OFF, MCLRE_ON, CP_OFF, CPD_OFF, BOREN_ON, IESO_ON, FCMEN_ON, LVP_ON, DEBUG_OFF
Config2 BOR4V_BOR40V, WRT_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
 Declare Xtal = 20
;-------------------------------------------------------------------------------
Symbol D0=PORTA.0
Symbol D1=PORTA.1 
Symbol D2=PORTA.2
Symbol D3=PORTA.3
Symbol D4=PORTA.4 
Symbol D5=PORTA.5
Symbol D6=PORTA.6
Symbol D7=PORTA.7

;-------------------------------------------------------------------------------
Dim cuenta As Byte 
Dim carga As Byte
Dim N[10] As Byte 
Dim UNI As Byte 
Dim DCN As Byte 
Dim CEN As Byte 

;-------------------------------------------------------------------------------





 
