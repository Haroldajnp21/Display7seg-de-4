'****************************************************************
'*  Name    : 7SEG DE 4.BAS                                     *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2022 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 12/01/2022                                        *
'*  Version : 1.0                                               *
'*  Notes   : HECHO EN PROTON IDE                               *
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
 Declare Xtal = 20   ;DECLARAMOS EL CRISTAL EN 20MHZ
;-------------------------------------------------------------------------------
Symbol D0=PORTA.0
Symbol D1=PORTA.1 
Symbol D2=PORTA.2
Symbol PU=PORTA.3
Symbol PD=PORTA.4 
Symbol PL=PORTA.5
Symbol PR=PORTC.7

;-------------------------------------------------------------------------------
Dim CUENTA As Byte 
Dim CARGA As Byte
Dim N[10] As Byte 
Dim UNI As Byte 
Dim DCN As Byte 
Dim CEN As Byte 

;-------------------------------------------------------------------------------
;--CATODO COMUN-------------------------------------------------------------------
TRISA=$38 : TRISB=255: TRISC=128: ANSEL=0: ANSELH=0
N[0]=$3F : N[1]=$06 : N[2]=$5B : N[3]=$4F : N[4]=$66
N[5]=$6D : N[6]=$7D : N[7]=$07 : N[8]=$7F : N[9]=$67   
CUENTA=0
;------------------------------------------------------------
MAIN:                                 ;<----BUCLE 
    GoSub EXTRAE                
    GoSub ENVIA 
    GoSub UP 
    GoSub DOWN
    GoSub LOAD
    GoSub RST 
    
GoTo MAIN 
;-------------------------------------------------------------
EXTRAE:
  UNI=Dig CUENTA,0
  DCN=Dig CUENTA,1
  CEN=Dig CUENTA,2
;--------------------------------------------------------------
ENVIA:
 D2=0 : D1=0 : D0=0  
   PORTC=N[UNI]
 D2=0 : D1=0 : D0=1    
  DelayMS 5
 D2=0 : D1=0 : D0=0  
   PORTC=N[DCN]
 D2=0 : D1=1 : D0=0    
  DelayMS 5   
 D2=0 : D1=0 : D0=0  
   PORTC=N[CEN]
 D2=1 : D1=0 : D0=0    
  DelayMS 5   
 D2=0 : D1=0 : D0=0     
  Return
;------------------------------------------------------------
  UP:
  If PU=0 Then 
  DelayMS 20
   If PU=0 Then
;------------------------------------------------------------
  EU:
     If PU=1 Then
         DelayMS 20
         If  PU=1 Then 
          CUENTA=CUENTA+1
          Else 
             GoTo EU 
         EndIf 
     Else 
     Else
         GoTo EU
     EndIf 
  EndIf 
EndIf 
Return
;----------------------------------------------------------- 
DOWN:   
   If PD=0 Then 
    DelayMS 20 
     If PD=0 Then 
;-----------------------------------------------------------      
ED:
       If PD=1 Then 
       DelayMS 20 
       If PD=1 Then 
         CUENTA=CUENTA - 1
         Else 
          GoTo ED 
         EndIf 
       Else 
        GoTo ED
      EndIf 
    EndIf 
  EndIf 
Return 
  
;-----------------------------------------------------------     
LOAD:
    If PL=0 Then 
     DelayMS 20 
     If PL=0 Then 
;----------------------------------------------------------- 
EL:
   If PL=1 Then 
       DelayMS 20 
       If PL=1 Then 
         CARGA=PORTB
         CUENTA=CUENTA
         Else 
          GoTo EL
         EndIf 
       Else 
        GoTo EL
      EndIf 
    EndIf 
  EndIf 
Return 
  
;-----------------------------------------------------------     
RST:
    If PR=0 Then 
     DelayMS 20 
     If PR=0 Then 
;----------------------------------------------------------- 
ER:
   If PR=1 Then 
       DelayMS 20 
       If PR=1 Then 
         CUENTA=CUENTA
         Else 
          GoTo ER
         EndIf 
       Else 
        GoTo ER
      EndIf 
    EndIf 
  EndIf 
Return 




 
