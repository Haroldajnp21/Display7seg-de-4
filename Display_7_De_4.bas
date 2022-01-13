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
Dim CUENTA As Byte 
Dim CARGA As Byte
Dim N[10] As Byte 
Dim UNI As Byte 
Dim DCN As Byte 
Dim CEN As Byte 

;-------------------------------------------------------------------------------
TRISA=$38 : TRISB=255: TRISC=128: ANSEL=0: ANSELH=0
N[0]=$3F : N[1]=$06 : N[2]=$5B : N[3]=$4F : N[4]=$66
N[5]=$6D : N[6]=$7D : N[7]=$07 : N[8]=$7F : N[9]=$67   
CUENTA=0

MAIN:                                 ;BUCLE 
    GoSub EXTRAE                
    GoSub ENVIA 
    GoSub UP 
    GoSub DOWN
    GoSub LOAD
    GoSub RST 
    
GoTo MAIN 

    
    
    
    
    
    
 
