.MODEL SMALL
.STACK 100H

.DATA
        ;==================================;Menu and submenu for customer=========================================================
	SHOPNAME			DB	"   _______________________________________________ ", 0AH, 0DH  ;00H
						DB	"  |                                               |", 0AH, 0DH  ;01H	
						DB  "  |  ==============One Bite Bakery==============  |", 0AH, 0DH  ;02H
						DB  "  |            ---     -----    -----             |", 0AH, 0DH  ;03H
						DB  "  |          /     \   |  _  \  |  _  \           |", 0AH, 0DH  ;04H
						DB  "  |         |  / \  |  |     /  |     /           |", 0AH, 0DH  ;05H
						DB  "  |         |  \ /  |  |  _  \  |  _  \           |", 0AH, 0DH  ;06H
						DB  "  |          \     /   |     /  |     /           |", 0AH, 0DH  ;07H
						DB  "  |            ---     -----    -----             |", 0AH, 0DH  ;08H
						DB	"  |                                               |", 0AH, 0DH	 ;09H
						DB	"  |           1. View Menu                        |", 0AH, 0DH  ;0AH
						DB	"  |                                               |", 0AH, 0DH	 ;0BH	
						DB	"  |           2. Staff Login                      |", 0AH, 0DH	 ;0CH
						DB	"  |                                               |", 0AH, 0DH	 ;0DH	
						DB	"  |           3. Exit                             |", 0AH, 0DH	 ;0EH	
						DB	"  |                                               |", 0AH, 0DH	 ;0FH	
						DB	"  |                                               |", 0AH, 0DH	 ;10H	
						DB	"  |                                               |", 0AH, 0DH	 ;11H	
						DB	"  |                                               |", 0AH, 0DH	 ;12H
						DB	"  |                                               |", 0AH, 0DH	 ;13H
						DB	"  |                                               |", 0AH, 0DH	 ;14H
						DB	"  |                                               |", 0AH, 0DH	 ;15H
						DB	"  |                                               |", 0AH, 0DH	 ;16H
						DB	"  |                                               |", 0AH, 0DH	 ;17H
						DB	"  |_______________________________________________|", 0AH, 0DH,"$";18H
								
	SHOPNAME_INVALID	DB	"  |    INVALID SELECTION!!! PLEASE RE-ENTER...    |", 0AH, 0DH	 ;10H	
						DB	"  |             PRESS <ENTER> TO RETRY            |", 0AH, 0DH	 ;11H	
						DB	"  |                                               |", 0AH, 0DH,"$"	 ;12H

	USER_SELECTION      DB  "  |         Enter Selection : $"
	MENU_SELECTION  	DB ?
	MENU_THANKS			DB	"  |        Thankyou for using our system!         |", 0AH, 0DH	 ;0AH
						DB	"  |               Have a nice day!                |", 0AH, 0DH	 ;0BH
						DB	"  |                                               |", 0AH, 0DH	 ;0CH
						DB	"  |_______________________________________________|", 0AH, 0DH	 ;0DH	
						DB	"                                                   ", 0AH, 0DH	 ;0EH	
						DB	"                                                   ", 0AH, 0DH	 ;0FH	
						DB	"                                                   ", 0AH, 0DH	 ;10H	
						DB	"                                                   ", 0AH, 0DH	 ;11H	
						DB	"                                                   ", 0AH, 0DH	 ;12H
						DB	"                                                   ", 0AH, 0DH	 ;13H
						DB	"                                                   ", 0AH, 0DH	 ;14H
						DB	"                                                   ", 0AH, 0DH	 ;15H
						DB	"                                                   ", 0AH, 0DH	 ;16H
						DB	"                                                   ", 0AH, 0DH	 ;17H
						DB	"                                                   ", 0AH, 0DH,"$";18H
	
	;====================================;Admin Login and logout module==================================================
	STRFONT 			DB	"   _______________________________________________ ", 0AH, 0DH  ;00H
						DB	"  |                                               |", 0AH, 0DH  ;01H	
						DB  "  |   <<<<<{*** Welcome To Login Page ***}>>>>>   |", 0AH, 0DH  ;02H
						DB  "  |                                               |", 0AH, 0DH  ;03H
						DB  "  |                WELCOME   STAFF                |", 0AH, 0DH  ;04H
						DB  "  |    PLEASE  LOGIN  TO  ACCESS  YOUR  ACCOUNT   |", 0AH, 0DH  ;05H
						DB  "  |                                               |", 0AH, 0DH  ;06H
						DB  "  |                                               |", 0AH, 0DH  ;07H
						DB  "  |         _____________________________         |", 0AH, 0DH  ;08H
						DB	"  |        |                             |        |", 0AH, 0DH	 ;09H
						DB	"  |        |                             |        |", 0AH, 0DH  ;0AH
						DB	"  |        |                             |        |", 0AH, 0DH	 ;0BH	
						DB	"  |        |                             |        |", 0AH, 0DH	 ;0CH
						DB	"  |        |                             |        |", 0AH, 0DH	 ;0DH	
						DB	"  |        |_____________________________|        |", 0AH, 0DH	 ;0EH	
						DB	"  |                                               |", 0AH, 0DH	 ;0FH	
						DB	"  |                                               |", 0AH, 0DH	 ;10H	
						DB	"  |                                               |", 0AH, 0DH	 ;11H	
						DB	"  |                                               |", 0AH, 0DH	 ;12H
						DB	"  |                                               |", 0AH, 0DH	 ;13H
						DB	"  |                                               |", 0AH, 0DH	 ;14H
						DB	"  |                               RETURN  {R}     |", 0AH, 0DH	 ;15H
						DB	"  |                                               |", 0AH, 0DH	 ;16H
						DB	"  |                                               |", 0AH, 0DH	 ;17H
						DB	"  |_______________________________________________|", 0AH, 0DH,"$";18H
						
	STRFONT_LOGIN_R		DB	"  |                               RETURN  {R}     |", 0AH, 0DH,"$"	 ;15H					
						
	USERNAME       		DB  "  |            Username :                         |", 0AH, 0DH ;0AH
						DB	"  |            Password :                         |", 0AH, 0DH,"$"	 ;0BH
	
	PASSWORD			DB	"  |            Password :                         |", 0AH, 0DH	 ;0BH
						DB	"  |                                               |", 0AH, 0DH	 ;0CH
						DB	"  |               <ENTER>  TO LOG IN              |", 0AH, 0DH,"$" ;0DH		

	INVALID_STRFONT_PSW	DB	"  |       INVALID username or password !!!        |", 0AH, 0DH	 ;11H	
						DB	"  |            PRESS <ENTER> TO RETRY             |", 0AH, 0DH	 ;12H
	NL 					DB  0AH,0DH,"$"				
	
	;Admin Login: 
	TARUMT   			DB "tarumt$"  ; USERNAME
	VERIFY  			DB "mrloh$"   ; PSW(2)

	;Admin input username and password: 
	USER     			DB 12 DUP("$")
	PSW      			DB 12 DUP("$")  
	
	; ==================== CHANGE PASSWORD MODULE ====================
	CHANGE_PWD_MENU     DB  "                                                   ", 0AH, 0DH
						DB  "   _______________________________________________ ", 0AH, 0DH           
						DB  "  | ********************************************* |", 0AH, 0DH
						DB  "  |       _________________________________       |", 0AH, 0DH
						DB	"  |      /                                 \      |", 0AH, 0DH
						DB  "  |     ||     === CHANGE PASSWORD ===     ||     |", 0AH, 0DH
						DB  "  |      \_________________________________/      |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |       ENTER OLD PASSWORD :                    |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |_______________________________________________|", 0AH, 0DH,"$"

	NEW_PWD_PROMPT      DB  "   _______________________________________________ ", 0AH, 0DH           
						DB  "  | ********************************************* |", 0AH, 0DH
						DB  "  |       _________________________________       |", 0AH, 0DH
						DB	"  |      /                                 \      |", 0AH, 0DH
						DB  "  |     ||     === CHANGE PASSWORD ===     ||     |", 0AH, 0DH
						DB  "  |      \_________________________________/      |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |       ENTER NEW PASSWORD (MAX 5 CHAR):        |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |_______________________________________________|", 0AH, 0DH,"$"

	PWD_SUCCESS_MSG     DB  "   _______________________________________________ ", 0AH, 0DH           
						DB  "  | ********************************************* |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |          PASSWORD CHANGED SUCCESSFULLY!       |", 0AH, 0DH
						DB  "  |             PRESS <ENTER> TO RETURN           |", 0AH, 0DH
						DB  "  |_______________________________________________|", 0AH, 0DH,"$"
						
	CHANGE_PWD_OPT 		DB "  |        CHANGE PASSWORD        [3] >      |", 0AH, 0DH,"$"

	TEMP_OLD_PWD        DB  12 DUP("$")
	NEW_PWD_BUFFER      DB  6 DUP("$")
	
	;Admin Menu: Sales Report
	SYSTEM				DB  "                                                   ", 0AH, 0DH
						DB  "   _______________________________________________ ", 0AH, 0DH           
						DB  "  | ********************************************* |", 0AH, 0DH
						DB  "  |       _________________________________       |", 0AH, 0DH
						DB	"  |      /                                 \      |", 0AH, 0DH
						DB  "  |     ||  ===WELCOME TO ADMIN SYSTEM===  ||     |", 0AH, 0DH
						DB  "  |      \_________________________________/      |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |       PRESS  [1],[2],[3]  TO  CONTINUE        |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH,"$"
						
	ADMIN_SYSTEM_OPT    DB  "  |        SALES REPORT CHECKING       [1] >      |", 0AH, 0DH 
						DB  "  |        EXIT  |  LOG-OUT            [2] >      |", 0AH, 0DH
						DB  "  |        CHANGE PASSWORD             [3] >      |", 0AH, 0DH
						DB  "  |        NEW DAY (RESET SALES)       [4] >      |", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |_______________________________________________|", 0AH, 0DH
						DB  "                                                   ", 0AH, 0DH,"$"
						
	ADMIN_SELECTION     DB  "           Enter Selection : $"

	ENSURE				DB  "                                                   ", 0AH, 0DH
						DB  "   _______________________________________________ ", 0AH, 0DH 
						DB  "  |                                               |", 0AH, 0DH 
						DB  "  |            ARE YOU SURE TO CONTINUE           |", 0AH, 0DH 
						DB  "  |             LOG-OUT (EXIT)?  [Y/N]            |", 0AH, 0DH 
						DB  "  |_______________________________________________|", 0AH, 0DH,"$"
	SELECTION   		DB  ?
	INVALIDSEC  		DB  "INVALID SELECTION!!! PLEASE RE-ENTER...$"
	LEAVING     		DB  "    PRESS <ENTER> TO EXIT"
	
	REMOVEINV   		DB  "	   PRESS <ENTER> TO RETURN$"

	;PRODUCT INFO									$
    PROD_1_A_MSG 		DB "CHEESE BUN  [RM 2.00]    $"
    PROD_1_B_MSG 		DB "POTATO BUN  [RM 3.00]    $"
    PROD_2_A_MSG 		DB "CHOCOLATE CAKE  [RM 4.00]$"
    PROD_2_B_MSG 		DB "BANANA CAKE [RM 5.00]    $"
	MULTIPLY_SYMBOL		DB "    x $"
	
	QTY_PROD_MSG		DB	"  | _____________________________________________ |", 0AH, 0DH
						DB	"  | ********************************************* |", 0AH, 0DH
						DB	"  |                                               |", 0AH, 0DH
						DB	"  |       Enter quantity (01-99) : $"
						
    PROD_CURRENT_PRICE  DB	"  |       Current total cost : RM $"
						
    ENTER_CONFIRM     	DB  "  |       PRESS <ENTER> TO CONFIRM PAYMENT...     |$"
    
    INVALID_INPUT   	DB "Invalid input!!! Try again...",0AH,0DH,"$"

	QTY_ERROR_MSG       DB  "   _______________________________________________ ", 0AH, 0DH
						DB  "  |                                               |", 0AH, 0DH
						DB  "  |         ERROR : MUST BE A VALUE!!!            |", 0AH, 0DH
						DB  "  |         PRESS <ENTER> TO RETURN               |", 0AH, 0DH
						DB  "  |_______________________________________________|", 0AH, 0DH,"$"
    
    SELECTED_CATEGORY  	DB ?
    SELECTED_PROD 		DB ?
	SELECTED_METHOD_PAY DB ?
	SEL_METHOD_PAY_C	DB	"  |   PAYMENT METHOD   :                CASH      |$"
	SEL_METHOD_PAY_T	DB	"  |   PAYMENT METHOD   :                 TnG      |$"

    QTY_OF_PROD     	DB ?    
    PRICE_OF_PROD      	DW ?   ; STORE 0 - 65535  
    TOTAL_COST      	DW ?    
    
    PRESS_TO_EXIT      	DB "Press any key to exit...$"
	
	WELC_TO_MSG			DB	"   _______________________________________________ ", 0AH, 0DH	 ;00H
						DB	"  |                                               |", 0AH, 0DH	 ;01H
						DB  "  |   {[> == == == WELCOME TO MENU == == == <]}   |", 0AH, 0DH	 ;02H
						DB	"  |   _________________________________________   |", 0AH, 0DH	 ;03H
						DB	"  |   *****************************************   |", 0AH, 0DH	 ;04H
						DB	"  |                                               |", 0AH, 0DH	 ;05H
						DB	"  |    CATEGORY OF PRODUCTS :                     |", 0AH, 0DH	 ;06H
						DB	"  |    _______________________________________    |", 0AH, 0DH	 ;07H
						DB	"  |   | ************************************* |   |", 0AH, 0DH	 ;08H
						DB	"  |   |   {1}    BUN                          |   |", 0AH, 0DH	 ;09H
						DB	"  |   |   {2}    CAKE                         |   |", 0AH, 0DH	 ;0AH
						DB	"  |   |_______________________________________|   |", 0AH, 0DH	 ;0BH
						DB	"  |                                               |", 0AH, 0DH  ;0CH
						DB	"  |    SELECTION :               RETURN >> {R}    |", 0AH, 0DH	 ;0DH
						DB	"  |                                               |", 0AH, 0DH	 ;0EH
						DB	"  |                                               |", 0AH, 0DH	 ;0FH
						DB	"  |                                               |", 0AH, 0DH	 ;10H
						DB	"  |                                               |", 0AH, 0DH	 ;11H
						DB	"  |                                               |", 0AH, 0DH	 ;12H
						DB	"  |                                               |", 0AH, 0DH	 ;13H
						DB	"  |                                               |", 0AH, 0DH	 ;14H
						DB	"  |                                               |", 0AH, 0DH	 ;15H
						DB	"  |                                               |", 0AH, 0DH	 ;16H
						DB	"  |_______________________________________________|", 0AH, 0DH,"$";17H
																							 
																							 
	LIST_SUBOPT1		DB	"  |    CATEGORY OF PRODUCTS :  BUN                |", 0AH, 0DH	 ;06H
						DB	"  |    _______________________________________    |", 0AH, 0DH	 ;07H
						DB	"  |   | ************************************* |   |", 0AH, 0DH	 ;08H
						DB	"  |   |   {A}    CHEESE BUN   >>>   RM 2.00   |   |", 0AH, 0DH	 ;09H
						DB	"  |   |   {B}    POTATO BUN   >>>   RM 3.00   |   |", 0AH, 0DH	 ;0AH
						DB	"  |   |_______________________________________|   |", 0AH, 0DH	 ;0BH
						DB	"  |                                               |", 0AH, 0DH  ;0CH
						DB	"  |    SELECT  {A} OR {B}  TO  CONTINUE  ORDER    |", 0AH, 0DH  ;0DH  
						DB	"  |                              RETURN >> {R}    |", 0AH, 0DH
						DB	"  |                                               |", 0AH, 0DH,"$"
					
	LIST_SUBOPT2		DB	"  |    CATEGORY OF PRODUCTS :  CAKE               |", 0AH, 0DH	 ;06H
						DB	"  |    _______________________________________    |", 0AH, 0DH	 ;07H
						DB	"  |   | ************************************* |   |", 0AH, 0DH	 ;08H
						DB	"  |   |   {A}    CHOCOLATE CAKE  >> RM 4.00   |   |", 0AH, 0DH	 ;09H
						DB	"  |   |   {B}    BANANA CAKE     >> RM 5.00   |   |", 0AH, 0DH	 ;0AH
						DB	"  |   |_______________________________________|   |", 0AH, 0DH	 ;0BH
						DB	"  |                                               |", 0AH, 0DH  ;0CH
						DB	"  |    SELECT  {A} OR {B}  TO  CONTINUE  ORDER    |", 0AH, 0DH  ;0DH
						DB	"  |                              RETURN >> {R}    |", 0AH, 0DH
						DB	"  |                                               |", 0AH, 0DH,"$"
	;ACTION
	CUST_SELECTION		DB	?				  
 
	LIST_SELECT_INV		DB	"  |                INVALID CODE!!!                |", 0AH, 0DH ;11H
						DB	"  |           PRESS  <ENTER>  TO  RETURN          |", 0AH, 0DH,"$";0CH

	TO_SEE_RECEIPT		DB	"   _______________________________________________ ", 0AH, 0DH  ;00H
						DB	"  |                                               |", 0AH, 0DH  ;01H	
						DB  "  |                 _    __   __                  |", 0AH, 0DH  ;02H
						DB  "  |               // \\ | _> | _>                 |", 0AH, 0DH  ;03H
						DB  "  |               \\_// |__> |__>                 |", 0AH, 0DH  ;04H
						DB  "  |                                               |", 0AH, 0DH  ;05H
						DB  "  |               One Bite Bakery                 |", 0AH, 0DH  ;06H
						DB  "  |         999. PERSIARAN SUBANG PERMAI          |", 0AH, 0DH  ;07H
						DB  "  |         47500  SUBANG JAYA. SELANGOR          |", 0AH, 0DH  ;08H
						DB	"  |              TEL : 03-14159265                |", 0AH, 0DH	 ;09H
						DB	"  |                                               |", 0AH, 0DH  ;0AH
						DB	"  |   + - - - - - - - - - - - - - - - - - - - +   |", 0AH, 0DH	 ;0BH	
						DB	"  |   ITEM                                        |", 0AH, 0DH	 ;0CH
						DB	"  |                                               |", 0AH, 0DH	 ;0DH	
						DB	"  |                                               |", 0AH, 0DH	 ;0EH	
						DB	"  |                                               |", 0AH, 0DH	 ;0FH	
						DB	"  |                                               |", 0AH, 0DH	 ;10H	
						DB	"  |   + - - - - - - - - - - - - - - - - - - - +   |", 0AH, 0DH	 ;11H	
						DB	"  |                                               |", 0AH, 0DH	 ;12H
						DB	"  |   -   Thank  you  for  your  purchase!!!  -   |", 0AH, 0DH	 ;13H
						DB	"  |_______________________________________________|", 0AH, 0DH	 ;14H
						DB	"                                                   ", 0AH, 0DH, "$" ;15H
			
	USER_PAYMENT 		DB	"      {C}  CASH PAYMENT       {T}  TnG PAYMENT     ", 0AH, 0DH
						DB	"      PAYMENT METHOD : $"
						
    ;RECEIPT PART
    PROD_LABEL   		DB "  |   $"
    QTY_LABEL  			DB "  |   $"
    TOTAL_COST_LABEL    DB "  |   TOTAL COST                   RM $"
	
	NO_EXIT_RECEIPT		DB	"                                                   ", 0AH, 0DH	 ;00H
						DB	"                                                   ", 0AH, 0DH	 ;01H
						DB	"                                                   ", 0AH, 0DH	 ;02H		
						DB	"   _______________________________________________ ", 0AH, 0DH	 ;03H
						DB	"  |                                               |", 0AH, 0DH  ;04H	
						DB  "  |                 _    __   __                  |", 0AH, 0DH  ;05H
						DB  "  |               // \\ | _> | _>                 |", 0AH, 0DH  ;06H
						DB  "  |               \\_// |__> |__>                 |", 0AH, 0DH  ;07H
						DB  "  |                                               |", 0AH, 0DH  ;08H
						DB  "  |               One Bite Bakery                 |", 0AH, 0DH  ;09H
						DB  "  |         999. PERSIARAN SUBANG PERMAI          |", 0AH, 0DH  ;0AH
						DB  "  |         47500  SUBANG JAYA. SELANGOR          |", 0AH, 0DH  ;0BH
						DB	"  |              TEL : 03-14159265                |", 0AH, 0DH	 ;0CH
						DB	"  |                                               |", 0AH, 0DH  ;0DH
						DB	"  |   - - - - - - - - - - - - - - - - - - - - -   |", 0AH, 0DH	 ;0EH	
						DB	"  |                                               |", 0AH, 0DH	 ;0FH
						DB	"  |                                               |", 0AH, 0DH  ;10H
						DB	"  |                                               |", 0AH, 0DH  ;11H
						DB	"  |        THANKS FOR USING OUR SYSTEM !!!        |", 0AH, 0DH	 ;12H
						DB	"  |             SEE YOUR NEXT TIME !!!            |", 0AH, 0DH  ;13H
						DB	"  |                                               |", 0AH, 0DH  ;14H	
						DB	"  |_______________________________________________|", 0AH, 0DH	 ;15H	
						DB	"                                                   ", 0AH, 0DH	 ;16H	
						DB	"           <ENTER>  TO  RETURN  HOMEPAGE           ", 0AH, 0DH	 ;17H
						DB	"                                                   ", 0AH, 0DH	 ;18H	
						DB	"                                                   ", 0AH, 0DH,"$";19H			
	

	STIMULATED_DATE		DB	0	; SIMULATED DAY COUNT (0 = DAY 1)
	
	NEW_DAY_PROMPT		DB	"   _______________________________________________ ", 0AH, 0DH
						DB	"  |                                               |", 0AH, 0DH
						DB	"  |          NEW DAY INITIALIZED                  |", 0AH, 0DH
						DB	"  |          DAY NUMBER :                         |", 0AH, 0DH
						DB	"  |                                               |", 0AH, 0DH
						DB	"  |   SALES DATA / ORDERS CLEARED                 |", 0AH, 0DH
						DB	"  |   OVERFLOW WARNINGS RESET                     |", 0AH, 0DH
						DB	"  |                                               |", 0AH, 0DH
						DB	"  |         PRESS <ENTER> TO CONTINUE             |", 0AH, 0DH
						DB	"  |_______________________________________________|", 0AH, 0DH,"$"

	SALES_DATA      	DB  0, 0, 0, 0       
	SALES_AMOUNT    	DW  0, 0, 0, 0        
	TOTAL_SALES     	DW  0                 
	
	SALES_QTY_OVERFLOW_FLAGS	DB	0	; bit0=CHEESE bit1=POTATO bit2=CHOCO bit3=BANANA
	SALES_AMT_OVERFLOW_FLAGS	DB	0	; BIT0-3 = ITEM AMOUNT, BIT4 = TOTAL_SALES OVERFLOW
	OVERFLOW_BITMASK			DB	01H, 02H, 04H, 08H

	SALES_OVERFLOW_WARN_MSG		DB	"  *** WARNING: SOME FIGURES ABOVE HIT THE DISPLAY LIMIT ***", 0AH, 0DH
								DB	"  ***  (255 UNITS / RM655.35) - ACTUAL SALES ARE HIGHER  ***", 0AH, 0DH,"$"

	SALES_REPORT_MSG 	DB  "                                                     ", 0AH, 0DH
						DB  "                                                     ", 0AH, 0DH
						DB  "                  ---  SALES REPORT  ---             ", 0AH, 0DH
						DB  "                                                     ", 0AH, 0DH
						DB  "      | PRODUCT           | QTY | *****AMOUNT*****  |", 0AH, 0DH
						DB  "      |-------------------+-----+-------------------|", 0AH, 0DH
						DB  "      | CHEESE BUN        |     | RM                |", 0AH, 0DH
						DB  "      | POTATO BUN        |     | RM                |", 0AH, 0DH
						DB  "      | CHOCOLATE CAKE    |     | RM                |", 0AH, 0DH
						DB  "      | BANANA CAKE       |     | RM                |", 0AH, 0DH
						DB  "                                                     ", 0AH, 0DH
						DB  "                                |                    ", 0AH, 0DH
						DB  "               T O T A L        | RM                 ", 0AH, 0DH
						DB  "                                |                    ", 0AH, 0DH
						DB  "                                                     ", 0AH, 0DH
						DB  "               -  PRESS  <ENTER>  TO  EXIT  -        ", 0AH, 0DH,"$"

	AMT_PAYMENT_ENTER	DB  "   _______________________________________________ ", 0AH, 0DH  ;03H
						DB	"  |                                               |", 0AH, 0DH  ;04H
						DB  "  |                  _    __   __                 |", 0AH, 0DH  ;05H
						DB  "  |                // \\ | _> | _>                |", 0AH, 0DH  ;06H
						DB  "  |                \\_// |__> |__>                |", 0AH, 0DH  ;07H
						DB  "  |                                               |", 0AH, 0DH  ;08H
						DB	"  |                  WE  PREFER                   |", 0AH, 0DH  ;09H
						DB	"  |             _____________________             |", 0AH, 0DH  ;0AH
						DB	"  |            |   ___               |            |", 0AH, 0DH  ;0BH
						DB	"  |            |    |  _      _ |_   |            |", 0AH, 0DH  ;0CH
						DB	"  |            |    | |_| |_||_ | |  |            |", 0AH, 0DH  ;0DH
						DB	"  |            |      _   ___   __   |            |", 0AH, 0DH  ;0EH
						DB	"  |            |     | | | __  |  |  |            |", 0AH, 0DH  ;0FH
						DB	"  |            |         |___| |__|  |            |", 0AH, 0DH  ;10H
						DB	"  |            |    e W a l l e t    |            |", 0AH, 0DH  ;11H
						DB	"  |            |_____________________|            |", 0AH, 0DH  ;12H
						DB	"  |              *******************              |", 0AH, 0DH  ;13H
						DB	"  |                                               |", 0AH, 0DH  ;14H
						DB	"  |                                               |", 0AH, 0DH  ;15H
						DB	"  |          <ENTER> TO SCAN THE QR CODE          |", 0AH, 0DH  ;16H
						DB	"  |                                               |", 0AH, 0DH  ;17H
						DB	"  |_______________________________________________|", 0AH, 0DH,"$"  ;18H
		
	AMT_PAYMENT_QRCODE	DB  "  |                 _    __   __                  |", 0AH, 0DH  ;05H
						DB  "  |               // \\ | _> | _>                 |", 0AH, 0DH  ;06H
						DB  "  |               \\_// |__> |__>                 |", 0AH, 0DH  ;07H
						DB  "  |                 _____________                 |", 0AH, 0DH  ;08H
						DB	"  |      @@@@@@@@@@@             @@@@@@@@@@@      |", 0AH, 0DH  ;09H
						DB	"  |      @ +-----+ @............ @         @      |", 0AH, 0DH  ;0AH
						DB	"  |      @ | @@@ | @   .......   @   @@@   @      |", 0AH, 0DH  ;0BH
						DB	"  |      @ | @@@ | @   .......   @   @@@   @      |", 0AH, 0DH  ;0CH
						DB	"  |      @ +-----+ @   .......   @         @      |", 0AH, 0DH  ;0DH
						DB	"  |      @@@@@@@@@@@-------------@@@@@@@@@@@      |", 0AH, 0DH  ;0EH
						DB	"  |      |         |-=-=-=-=-=-=-|         |      |", 0AH, 0DH  ;0AH
						DB	"  |      |  . . .  |=-=-=-=-=-=-=|  . . .  |      |", 0AH, 0DH  ;0FH
						DB	"  |      |  . . .  |-=-=-=-=-=-=-|  . . .  |      |", 0AH, 0DH  ;10H
						DB	"  |      |  . . .  |=-=-=-=-=-=-=|  . . .  |      |", 0AH, 0DH  ;11H
						DB	"  |      |         |-=-=-=-=-=-=-|         |      |", 0AH, 0DH  ;12H
						DB	"  |      @@@@@@@@@@@-------------@@@@@@@@@@@      |", 0AH, 0DH  ;13H
						DB	"  |      @         @   .......   @ +-----+ @      |", 0AH, 0DH  ;14H
						DB	"  |      @   @@@   @   .......   @ | @@@ | @      |", 0AH, 0DH  ;15H
						DB	"  |      @   @@@   @   .......   @ | @@@ | @      |", 0AH, 0DH  ;16H
						DB	"  |      @         @.............@ +-----+ @      |", 0AH, 0DH  ;17H
						DB	"  |      @@@@@@@@@@@_____________@@@@@@@@@@@      |", 0AH, 0DH  ;18H
						DB	"  |                                               |", 0AH, 0DH  ;19H
		        		DB	"  |          <ENTER>  TO  CONTINUE  EXIT          |", 0AH, 0DH  ;1AH
						DB	"  |_______________________________________________|", 0AH, 0DH,"$"  ;11H
						
	PRESS_ANY_KEY_MSG	DB  "  |           PRESS ANY KEY TO CONTINUE           |",0AH,0DH,"$"

	; GENERIC INPUT BUFFER
	GENERIC_BUF         DB  20 DUP(0)


;=== PHASE 2 ADDITION START (DATA: ORDER ARRAYS) ===
	ORDER_MAX       EQU 4          ; MAX 4 ITEMS PER ORDER, CAN ADJUST
	ORDER_CATEGORY  DB ORDER_MAX DUP(?)
	ORDER_PROD      DB ORDER_MAX DUP(?)
	ORDER_QTY       DB ORDER_MAX DUP(?)
	ORDER_PRICE     DW ORDER_MAX DUP(?)   ; UNIT PRICE, DW IN SEN
	ORDER_COUNT     DB 0
	
;=== PHASE 4B ADDITION START (RECEIPT LOOP + TOTAL VARS) ===
	TOTAL_COST_SEN	DW	0	; ORDER TOTAL IN SEN, RECALCULATED FROM ORDER ARRAYS
	RECEIPT_ITEM_ROW	DB	?	; CURRENT RECEIPT ROW BEING PRINTED (0DH-10H)
	RECEIPT_LOOP_I		DB	?	; LOOP INDEX i (0-BASED, INDEXES ORDER ARRAYS)
;=== PHASE 4B ADDITION END ===
	
	
;=== PHASE 3 ADDITION START (CONTINUE/CHECKOUT PROMPT TEXT) ===
	CONTINUE_OR_PAY_MSG	DB	"  |   {C} CONTINUE ORDER  | {P} PROCEED TO PAY    |", 0AH, 0DH,"$"

	ORDER_FULL_MSG		DB	"  |                                               |", 0AH, 0DH
						DB	"  |        ORDER FULL, PROCEED TO PAYMENT         |", 0AH, 0DH
						DB	"  |            PRESS <ENTER> TO CONTINUE          |", 0AH, 0DH,"$"


.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
	;CLEAR ORDER WHEN RETURN MAIN PAGE EACH TIME
	CALL CLEAR_ORDER
	MOV [TOTAL_COST_SEN], 0
	
    CALL TO_CLEAR_SCREEN
	CALL LmenuICON
	
	MENU_ENDL:
    MOV AX,4C00H
    INT 21H
MAIN ENDP

;====================================================================
; Backspace
; DI = FIRST ADDRESS FOR BUFFER, CX = MAX STRING LEN
; CX = ACTUAL STRING LEN
READ_INPUT_WITH_BACKSPACE PROC
    PUSH AX
    PUSH DX
    PUSH DI
    MOV BX, 0           ; BX = CURRENT STRING LEN   

READ_CHAR_LOOP:
    MOV AH, 01H
    INT 21H             ; READ INPUT 

    CMP AL, 0DH         ; CHECK Enter
    JE READ_INPUT_DONE

    CMP AL, 08H         ; CHECK Backspace
    JE HANDLE_BACKSPACE

    ; STRING BUFFER
    CMP BX, CX          ; NOT STORE UPON REACH LIMIT; IF NOT THEN CLEAR 
    JAE BUFFER_FULL
    MOV [DI], AL
    INC DI
    INC BX
    JMP READ_CHAR_LOOP

BUFFER_FULL:
    ; CLEAR OVERSIZED LINE
    MOV AH, 02H
    MOV DL, 08H
    INT 21H
    MOV DL, 20H
    INT 10H
    MOV DL, 08H
    INT 21H
    JMP READ_CHAR_LOOP

HANDLE_BACKSPACE:
	; CURRENT STRING LEN <0 , IGNORE BACKSPACE
    CMP BX, 0           
    JLE IGNORE_BACKSPACE
    
    DEC DI              ; DECREMENT BUFFER PTR
    DEC BX              ; DECREMENT CHAR COUNT

    ; VISUAL ERASE : BACKSPACE -> SPACE -> BACKSPACE
    MOV AH, 02H
    MOV DL, 20H         ; OVERLAP 08H
    INT 21H
    MOV DL, 08H         ; MOVE CURSOR BACK
    INT 21H
    JMP READ_CHAR_LOOP

IGNORE_BACKSPACE:
    ; FIX CURSOR POSITION FOR EMPTY BUFFER
    MOV AH, 02H
    MOV DL, 20H
    INT 21H
    MOV DL, 08H
    INT 21H
    JMP READ_CHAR_LOOP

READ_INPUT_DONE:
    MOV BYTE PTR [DI], '$' ; APPEND STRING
    MOV CX, BX          ; RETURN STRING LENGTH IN CX
    POP DI
    POP DX
    POP AX
    RET
READ_INPUT_WITH_BACKSPACE ENDP

MENU_SHOPNAME PROC
	;background
	MOV AH,06H
	MOV AX,0600H
	MOV BH,6EH
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
	;fontground
	MOV AH,02H
	MOV BX,00H
	MOV DX,0000
	INT 10H
	
	;=========== MAIN MENU OPTION ===========
	MOV AH,09H
	LEA DX,SHOPNAME
	INT 21H
	
	; Enter Selection :
	MOV AH,02H
    MOV BH,00H
    MOV DH,10H 
    MOV DL,00H 
    INT 10H 
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,67H
	MOV CX,1005H
	MOV DX,101AH
	INT 10H
	
	MOV AH,09H
	LEA DX,USER_SELECTION
	INT 21H
	
	RET		
MENU_SHOPNAME ENDP

LmenuICON PROC
    PUSH AX
    PUSH BX
    PUSH DX    

	CALL MENU_SHOPNAME 		
	
	; Y|N 
	MOV AH,02H
    MOV BH,00H
    MOV DH,10H 
    MOV DL,1EH 
    INT 10H 
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,6BH
	MOV CX,101EH
	MOV DX,101FH
	INT 10H
		
	; USER INPUT
	LEA DI, GENERIC_BUF
	MOV CX, 1
	CALL READ_INPUT_WITH_BACKSPACE
	
	MOV AL, GENERIC_BUF[0]
	MOV MENU_SELECTION, AL	
		
	CMP AL,'1'
	JE L_WELC_MENU_CUST_SELECT	
	CMP AL,'2'
	JE Llogin_PHASE				
	CMP AL,'3'
	JE LMENU_THANKS			
	JMP IF_INVALID_CODE			
	
	Llogin_PHASE:
	CALL Llogin
	JMP LmenuICON_ENDL
	
	IF_INVALID_CODE:	
		MOV AH,06H
		MOV AX,0600H
		MOV BH,4FH
		MOV CX,1006H
		MOV DX,112EH
		INT 10H

		MOV AH,02H
		MOV BX,00
		MOV DX,1000H
		INT 10H
		
		MOV AH,09H
		LEA DX,SHOPNAME_INVALID
		INT 21H
	
	LIF_YES_CONTINUE:	
	LEA DI, GENERIC_BUF
	MOV CX, 1
	CALL READ_INPUT_WITH_BACKSPACE
	CALL LmenuICON
	
	RETURN_LmenuICON:
		CALL LmenuICON
		
	L_WELC_MENU_CUST_SELECT:
		CALL LWELC_MENU		
		JMP MENU_ENDL
		
	LMENU_THANKS:
		CALL MENU_THANKS_PROCEDURE
		JMP MENU_ENDL 
	LmenuICON_ENDL:
    POP DX
    POP BX
    POP AX     
	RET
LmenuICON ENDP

RECEIPT_THANKQ PROC
	LRECEIPT_THANKQ_RETURN:
		MOV AH,06H
		MOV AX,0600H
		MOV BH,6EH
		MOV CX,0000H
		MOV DX,184FH
		INT 10H

		MOV AH,02H
		MOV BX,00H
		MOV DX,0000H
		INT 10H
		
		MOV AH,09H
		LEA DX,NO_EXIT_RECEIPT
		INT 21H
		
		MOV AH,06H
		MOV AX,0600H
		MOV BH,6BH
		MOV CX,0E05H
		MOV DX,0E2FH
		INT 10H

		MOV AH,02H
		MOV BX,00H
		MOV DH,0EH
		MOV DL,00H
		INT 10H
		
		LEA DX,TOTAL_COST_LABEL
		MOV AH,09H
		INT 21H
		
		MOV AX,[TOTAL_COST_SEN]     ; USE ACCUMULATED ORDER TOTAL, MATCH DISPLAY_RECEIPT
		CALL DISPLAY_PRICE_WITH_SEN
		
		MOV AH,06H
		MOV AX,0600H
		MOV BH,67H
		MOV CX,0F05H
		MOV DX,0F2BH
		INT 10H

		MOV AH,02H
		MOV BX,00H
		MOV DH,0FH
		MOV DL,00H
		INT 10H
		CALL SHOW_METHOD_PAYMENT
		
		MOV AH,06H
		MOV AX,0600H
		MOV BH,66H
		MOV CX,1400H
		MOV DX,1401H
		INT 10H
		MOV AH,02H
		MOV BX,00H
		MOV DH,14H
		MOV DL,00H
		INT 10H
		MOV AH,01H
		INT 21H
		CMP AL,0DH
		JE LRECEIPT_THANKQ
		JMP LRECEIPT_THANKQ_RETURN		  
	
	LRECEIPT_THANKQ:
		CALL MAIN
		JMP RECEIPT_THANKQ_PROC_ENDL
		
	RECEIPT_THANKQ_PROC_ENDL:
		RET		
RECEIPT_THANKQ ENDP

MENU_THANKS_PROCEDURE PROC
	MOV AH,02H
	MOV BH,00H
	MOV DH,09H       
	MOV DL,00H       
	INT 10H
	
	MOV AH,09H
	LEA DX,MENU_THANKS	
	INT 21H
	RET		
MENU_THANKS_PROCEDURE ENDP

BG_WELC_TO_MSG PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX		
	
	;{[> == == == WELCOME TO MENU == == == <]}
	MOV AH,06H
	MOV AX,0600H
	MOV BH,6EH
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,34H
	MOV CX,0205H
	MOV DX,022FH
	INT 10H
	
	; RETURN >> {R}
	MOV AH,06H
	MOV AL,00H
	MOV BH,67H
	MOV CX,0D21H
	MOV DX,0D2DH
	INT 10H
	
	MOV AH,02H
	MOV BH,00H
	MOV DH,00H
	MOV DL,00H
	INT 10H
	
	MOV AH,09H
    LEA DX,WELC_TO_MSG
    INT 21H
	
	POP DX		
	POP CX
	POP BX
	POP AX
	RET
BG_WELC_TO_MSG ENDP

LCUST_SELECT_INVALID PROC
    PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX    
    
	MOV AH,06H
	MOV AL,00H
	MOV BH,4FH
	MOV CX,1107H
	MOV DX,122DH
	INT 10H
	
    MOV AH,02H
    MOV BH,00H
    MOV DH,11H       
    MOV DL,00H       
    INT 10H
    
    MOV AH,09H
    LEA DX,LIST_SELECT_INV
    INT 21H
	
    MOV AH,06H
    MOV AL,00H  
    MOV BH,3EH       
    MOV CX,0D12H     
    MOV DX,0D14H     
    INT 10H

    MOV AH,02H
    MOV BH,00H
    MOV DH,0DH        
    MOV DL,13H   
    INT 10H
    
	POP DX
    POP CX
    POP BX
    POP AX     	
    RET		
LCUST_SELECT_INVALID ENDP

LWELC_MENU PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
	
	CALL BG_WELC_TO_MSG
    
	LSELECT_GROUP:
		; SELECTION : 
		MOV AH,06H
		MOV AX,0600H
		MOV BH,6BH
		MOV CX,0D12H
		MOV DX,0D14H
		INT 10H

		MOV AH,02H
		MOV BH,00H
		MOV DH,0DH
		MOV DL,13H
		INT 10H

		; BACKSPACE TO EDIT OPTION
		LEA DI, GENERIC_BUF
		MOV CX, 1
		CALL READ_INPUT_WITH_BACKSPACE
		MOV AL, GENERIC_BUF[0]
		MOV CUST_SELECTION, AL

		CMP AL,'r'
		JE LCUST_SELECT_RETURN
		CMP AL,'R'
		JE LCUST_SELECT_RETURN
		CMP AL,'1'
		JE LVALID_GROUP
		CMP AL,'2'
		JE LVALID_GROUP
		JMP LCUST_OPT_INVALID

		LCUST_SELECT_RETURN:
			CALL MAIN
		
		LCUST_OPT_INVALID:
			CALL LCUST_SELECT_INVALID
			LEA DI, GENERIC_BUF
			MOV CX, 1
			CALL READ_INPUT_WITH_BACKSPACE
			JMP BACK_MENU
		
		BACK_MENU:
			CALL LWELC_MENU				
		
		LVALID_GROUP:
			MOV [SELECTED_CATEGORY],AL
			CALL SHOW_NL
			
		LSELECT_PROD:
			CMP AL,'1'            
			JE LSHOW_LIST_SUBOPT1_JMP
			CMP AL,'2'   
			JE LSHOW_LIST_SUBOPT2_JMP
			JMP LSELECT_PROD_CONTINUE
		
		LSHOW_LIST_SUBOPT1_JMP:	
			CALL LSHOW_LIST_SUBOPT1
			JMP LSELECT_PROD_CONTINUE
			
		LSHOW_LIST_SUBOPT2_JMP:	
			CALL LSHOW_LIST_SUBOPT2
			JMP LSELECT_PROD_CONTINUE	
		
		RETURN_WELC_TO_MSG:			
			JMP MAIN
				
		LSELECT_PROD_CONTINUE:
			; Enter Selection :
			MOV AH,02H
			MOV BH,00H
			MOV DH,10H 
			MOV DL,00H 
			INT 10H 
			
			MOV AH,06H
			MOV AX,0600H
			MOV BH,67H
			MOV CX,1005H
			MOV DX,101DH
			INT 10H
			
			MOV AH,09H
			LEA DX,USER_SELECTION
			INT 21H
			
			LEA DI, GENERIC_BUF
			MOV CX, 1
			CALL READ_INPUT_WITH_BACKSPACE
			
			MOV AL, GENERIC_BUF[0]

			MOV [SELECTED_PROD],AL
			CMP AL,'r'
			JE RETURN_WELC_TO_MSG
			CMP AL,'R'
			JE RETURN_WELC_TO_MSG
			CMP AL,'a'
			JE LVALID_PROD
			CMP AL,'A'
			JE LVALID_PROD
			CMP AL,'b'
			JE LVALID_PROD
			CMP AL,'B'
			JE LVALID_PROD
			JMP LSELECT_PROD
			
		LVALID_PROD_INVALID:	
			CALL LCUST_SELECT_INVALID
			LEA DI, GENERIC_BUF
			MOV CX, 1
			CALL READ_INPUT_WITH_BACKSPACE
			JMP LSELECT_PROD
		
		LVALID_PROD:
			MOV [SELECTED_PROD],AL
			CALL SHOW_NL
			
			MOV AL,[SELECTED_CATEGORY]
			CMP AL,'1'
			JE LPROD_G1
			CMP AL,'2'
			JE LPROD_G2
		
	LPROD_G1:
		MOV AL,[SELECTED_PROD]
		CMP AL,'A'
		JE LSET_PROD_1_A
		CMP AL,'a'
		JE LSET_PROD_1_A
		CMP AL,'B'
		JE LSET_PROD_1_B
		CMP AL,'b'
		JE LSET_PROD_1_B
		JMP LPROD_G1

LSET_PROD_1_A:
    MOV WORD PTR [PRICE_OF_PROD], 200	; AS A DW
    JMP L_TO_GET_QTY
    
LSET_PROD_1_B:
    MOV WORD PTR [PRICE_OF_PROD], 300	
    JMP L_TO_GET_QTY
		
	LPROD_G2:
		MOV AL,[SELECTED_PROD]
		CMP AL,'A'
		JE LSET_PROD_2_A
		CMP AL,'a'
		JE LSET_PROD_2_A
		CMP AL,'B'
		JE LSET_PROD_2_B
		CMP AL,'b'
		JE LSET_PROD_2_B
		JMP LPROD_G2
		
LSET_PROD_2_A:
    MOV WORD PTR [PRICE_OF_PROD], 400	; STORE AS A DW VALUE
    JMP L_TO_GET_QTY
    
LSET_PROD_2_B:
    MOV WORD PTR [PRICE_OF_PROD], 500	
    JMP L_TO_GET_QTY


	L_TO_GET_QTY:
		MOV AH,06H
		MOV AL,00H
		MOV BH,6EH
		MOV CX,0E04H
		MOV DX,0E38H
		INT 10H
		
		MOV AH,02H
		MOV BH,00H
		MOV DH,0EH 
		MOV DL,00H       
		INT 10H

		LEA DX,QTY_PROD_MSG
		MOV AH,09H
		INT 21H
		
		; ENTER QUANTITY
		MOV AH,06H
		MOV AL,00H
		MOV BH,6BH
		MOV CX,1123H
		MOV DX,1126H
		INT 10H
		
		MOV AH,02H
		MOV BH,00H
		MOV DH,11H 
		MOV DL,23H       
		INT 10H
		
		CALL GET_TWO_DIGIT_INPUT
		
		MOV AL,[QTY_OF_PROD]
		CALL MUL_QTY_PRICE_SAFE
		
		CALL SHOW_NL
		
		CALL DISPLAY_PROD_CURRENT_PRICE
		
		CALL SHOW_NL
		
	;=====================================================================
	;=== PHASE 3 ADDITION START (SAVE ITEM, ASK CONTINUE/CHECKOUT) ===
	;=====================================================================
		CALL APPEND_ORDER_ITEM
		
		MOV AL,[ORDER_COUNT]
		CMP AL,ORDER_MAX
		JAE L_ORDER_FULL_NOTICE
		JMP L_ASK_CONTINUE_OR_PAY
		
	L_ORDER_FULL_NOTICE:
		MOV AH,06H
		MOV AX,0600H
		MOV BH,4FH
		MOV CX,1506H
		MOV DX,172CH
		INT 10H
		
		MOV AH,02H
		MOV BH,00H
		MOV DH,15H
		MOV DL,00H
		INT 10H
		
		LEA DX,ORDER_FULL_MSG
		MOV AH,09H
		INT 21H
		
	L_ORDER_FULL_WAIT:
		MOV AH,01H
		INT 21H
		CMP AL,0DH
		JNE L_ORDER_FULL_WAIT
		
		JMP L_GOTO_PAYMENT
		
	L_ASK_CONTINUE_OR_PAY:
		MOV AH,06H
		MOV AL,00H
		MOV BH,67H
		MOV CX,1504H
		MOV DX,1631H
		INT 10H
		
		MOV AH,02H
		MOV BH,00H
		MOV DH,15H
		MOV DL,00H
		INT 10H
		
		LEA DX,CONTINUE_OR_PAY_MSG
		MOV AH,09H
		INT 21H
		
		; Enter Selection :
		MOV AH,02H
		MOV BH,00H
		MOV DH,16H 
		MOV DL,00H 
		INT 10H 
		
		MOV AH,09H
		LEA DX,USER_SELECTION
		INT 21H
		
	L_READ_CONTINUE_OR_PAY:
		MOV AH,02H
		MOV BH,00H
		MOV DH,16H 
		MOV DL,1DH 
		INT 10H 
		
		MOV AH,06H
		MOV AX,0600H
		MOV BH,6BH
		MOV CX,161DH
		MOV DX,161EH
		INT 10H
		
		LEA DI, GENERIC_BUF
		MOV CX, 1
		CALL READ_INPUT_WITH_BACKSPACE
		
		MOV AL, GENERIC_BUF[0]
		
		CMP AL,'C'
		JE L_GOTO_CONTINUE_ORDER
		CMP AL,'c'
		JE L_GOTO_CONTINUE_ORDER
		CMP AL,'P'
		JE L_GOTO_PAYMENT
		CMP AL,'p'
		JE L_GOTO_PAYMENT
		
		; INVALID INPUT, SAME STYLE AS LCUST_SELECT_INVALID
		CALL LCUST_SELECT_INVALID
		LEA DI, GENERIC_BUF
		MOV CX, 1
		CALL READ_INPUT_WITH_BACKSPACE
		JMP L_ASK_CONTINUE_OR_PAY
		
	L_GOTO_CONTINUE_ORDER:
		; BACK TO CATEGORY SELECT ENTRY (LSELECT_GROUP IN LWELC_MENU)
		CALL TO_CLEAR_SCREEN
		CALL BG_WELC_TO_MSG
		JMP LSELECT_GROUP
		
	L_GOTO_PAYMENT:
		MOV AH,06H
		MOV AL,00H
		MOV BH,67H
		MOV CX,1506H
		MOV DX,162CH
		INT 10H
		
		MOV AH,02H
		MOV BH,00H
		MOV DH,15H 
		MOV DL,00H 
		INT 10H 
		
		LEA DX,ENTER_CONFIRM
		MOV AH,09H
		INT 21H
		; HIDE CURSOR
		MOV AH,01H
		MOV CH,20H
		INT 10H  
		 
	;=====================================================================
	;=== PHASE 3 ADDITION END ===
	;=====================================================================
		
	WAIT_PAY_CONFIRM:
		 
	
		MOV AH,07H
		INT 21H
		CMP AL,0DH
		JNE WAIT_PAY_CONFIRM

		MOV AH,01H
		MOV CH,06H
		MOV CL,07H
		INT 10H             ; RESTORE CURSOR
		
		CALL DISPLAY_RECEIPT	
	
	POP DX
	POP CX
	POP BX
	POP AX
	RET
LWELC_MENU ENDP

LSHOW_LIST_SUBOPT1 PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
	
	; CATEGORY LIST COLOR
	MOV AH,06H
	MOV AL,00H
	MOV BH,6EH
	MOV CX,0600H
	MOV DX,0D38H
	INT 10H
	
	; RETURN >> {R}
	MOV AH,06H
	MOV AL,00H
	MOV BH,67H
	MOV CX,0E0AH
	MOV DX,0E2DH
	INT 10H
	
	; CATEGORY LIST MSG
	MOV AH,02H
	MOV BH,00H
	MOV DH,06H 
	MOV DL,00H       
	INT 10H
	
	MOV AH,09H
	LEA DX,LIST_SUBOPT1
	INT 21H
	
	POP DX
	POP CX
	POP BX
	POP AX
	RET
LSHOW_LIST_SUBOPT1 ENDP

LSHOW_LIST_SUBOPT2 PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
	
	; CATEGORY LIST COLOR
	MOV AH,06H
	MOV AL,00H
	MOV BH,6EH
	MOV CX,0600H
	MOV DX,0D38H
	INT 10H
	
	; RETURN >> {R}
	MOV AH,06H
	MOV AL,00H
	MOV BH,67H
	MOV CX,0E0AH
	MOV DX,0E2DH
	INT 10H
	
	; CATEGORY LIST MSG
	MOV AH,02H
	MOV BH,00H
	MOV DH,06H 
	MOV DL,00H       
	INT 10H
	
	MOV AH,09H
	LEA DX,LIST_SUBOPT2
	INT 21H
	
	POP DX
	POP CX
	POP BX
	POP AX
	RET
LSHOW_LIST_SUBOPT2 ENDP

TO_CLEAR_SCREEN PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX		
	
    MOV AX,0600H
    MOV BH,07H
    MOV CX,0000H
    MOV DX,184FH
    INT 10H
    
    MOV AH,02H
    MOV BH,00H
    MOV DH,00H
	MOV DL,00H
    INT 10H
	
	POP DX
	POP CX
	POP BX
	POP AX		
    RET
TO_CLEAR_SCREEN ENDP

SHOW_NL PROC
    LEA DX,NL
    MOV AH,09H
    INT 21H
    RET
SHOW_NL ENDP

DISPLAY_PROD_CURRENT_PRICE PROC
	PUSH AX
	PUSH DX		
	
    LEA DX,PROD_CURRENT_PRICE
    MOV AH, 09H
    INT 21H
	
    MOV AX,[TOTAL_COST]
    CALL DISPLAY_PRICE_WITH_SEN
    
	POP DX
	POP AX		
    RET
DISPLAY_PROD_CURRENT_PRICE ENDP

DISPLAY_RECEIPT PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX		
	
	CALL UPDATE_SALES_DATA		
	
    CALL TO_CLEAR_SCREEN		
	MOV AH,06H
	MOV AX,0600H
	MOV BH,6EH
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
	
	; DISPLAY ITEM  ->  MAX 4 ITEMS
	MOV AH,06H
	MOV AX,0600H
	MOV BH,67H
	MOV CX,0D05H
	MOV DX,1029H
	INT 10H

	; THANK YOU MSG
	MOV AH,06H
	MOV AX,0600H
	MOV BH,67H
	MOV CX,1308H
	MOV DX,132CH
	INT 10H

	MOV AH,02H
	MOV BH,00H
	MOV DH,00H
	MOV DL,00H
	INT 10H
	
    LEA DX,TO_SEE_RECEIPT	
    MOV AH,09H
    INT 21H
	
	;SHOW CURSOR
	MOV AH,01H
	MOV CH,06H
	MOV CL,07H
	INT 10H 

	LEA DX,USER_PAYMENT		
	MOV AH,09H
	INT 21H
	
	;=====================================================================
	;=== PHASE 4B: LOOP PRINT EACH ORDER ITEM, ACCUMULATE TOTAL ===
	;=====================================================================
	MOV [TOTAL_COST_SEN], 0
	MOV [RECEIPT_LOOP_I], 0
	
RECEIPT_ITEM_LOOP:
	MOV AL, [RECEIPT_LOOP_I]
	CMP AL, [ORDER_COUNT]
	JAE RECEIPT_ITEM_LOOP_END_JMP
	
	
	XOR AH, AH
	MOV BX, AX                    ; BX = i (0-BASED)
	
	; LOAD ITEM i INTO GLOBALS, REUSE SHOW_PROD_INRECEIPT / QTY LOGIC
	MOV AL, [ORDER_CATEGORY + BX]
	MOV [SELECTED_CATEGORY], AL
	MOV AL, [ORDER_PROD + BX]
	MOV [SELECTED_PROD], AL
	MOV AL, [ORDER_QTY + BX]
	MOV [QTY_OF_PROD], AL
	
	; ---- ACCUMULATE: TOTAL_COST_SEN += ORDER_QTY[i] x ORDER_PRICE[i] ----
	; GET UNIT PRICE FROM ORDER_PROD[BX] CODE
    MOV AL, [ORDER_PROD + BX]
    CMP AL, 'A'
    JE REC_PRICE_A
    CMP AL, 'a'
    JE REC_PRICE_A
    CMP AL, 'B'
    JE REC_PRICE_B
    CMP AL, 'b'
    JE REC_PRICE_B
    
REC_PRICE_A:
    ; CATEGORY 1 PROD A: CHEESE OR CHOCOLATE
    MOV AL, [ORDER_CATEGORY + BX]
    CMP AL, '1'
    JE REC_CHEESE
    MOV DX, 400             ; CHOCOLATE CAKE = 400 SEN
    JMP REC_PRICE_DONE
REC_CHEESE:
    MOV DX, 200             ; CHEESE BUN = 200 SEN
    JMP REC_PRICE_DONE
    
RECEIPT_ITEM_LOOP_END_JMP:
	JMP RECEIPT_ITEM_LOOP_END

REC_PRICE_B:
    ; CATEGORY 2 PROD B: POTATO OR BANANA
    MOV AL, [ORDER_CATEGORY + BX]
    CMP AL, '1'
    JE REC_POTATO
    MOV DX, 500             ; BANANA CAKE = 500 SEN (RM5.00, MATCH MENU/ORDER PRICE)
    JMP REC_PRICE_DONE
REC_POTATO:
    MOV DX, 300             ; POTATO BUN = 300 SEN
    
REC_PRICE_DONE:
	MOV AL, [QTY_OF_PROD]
	XOR AH, AH
	MOV BX, DX
	MUL BX                        ; DX:AX = QTY x PRICE
	ADD [TOTAL_COST_SEN], AX
	
	; ---- ROW NUM = 0DH + i ----
	MOV AL, [RECEIPT_LOOP_I]
	ADD AL, 0DH
	MOV [RECEIPT_ITEM_ROW], AL
	
	; ---- MOVE TO ROW, PRINT "  |   " PREFIX ----
	MOV AH,02H
	MOV BH,00H
	MOV DH,[RECEIPT_ITEM_ROW]
	MOV DL,05H
	INT 10H
	
	LEA DX,PROD_LABEL
	MOV AH,09H
	INT 21H
	
	; ---- HIGHLIGHT SEPARATOR BEFORE PROD NAME (WAS HARDCODED 0EH, NOW FOLLOWS ROW) ----
	MOV CH,[RECEIPT_ITEM_ROW]
	MOV CL,04H
	MOV DH,[RECEIPT_ITEM_ROW]
	MOV DL,05H
	MOV AH,06H
	MOV AL,00H
	MOV BH,66H
	INT 10H
	
	CALL SHOW_PROD_INRECEIPT
	
	MOV AH,09H
	LEA DX,MULTIPLY_SYMBOL		
	INT 21H

	CALL SHOW_PROD_QTY_INRECEIPT
	
	; ---- i++ ----
	MOV AL, [RECEIPT_LOOP_I]
	INC AL
	MOV [RECEIPT_LOOP_I], AL
	JMP RECEIPT_ITEM_LOOP

RECEIPT_ITEM_LOOP_END:
	;=====================================================================
	;=== PHASE 4B LOOP END ===
	;=====================================================================

	MOV AH,02H
	MOV BH,00H
	MOV DH,12H
	MOV DL,00H
	INT 10H
	
	LEA DX,TOTAL_COST_LABEL
	MOV AH,09H
	INT 21H
	
	MOV AX,[TOTAL_COST_SEN]     ; USE ACCUMULATED ORDER TOTAL
	CALL DISPLAY_PRICE_WITH_SEN
	
	MOV AH, 02H
	MOV BH, 00H
	MOV DH, 17H    
	MOV DL, 18H    
	INT 10H
	
    L_PAY_RETRY:
    LEA DI, GENERIC_BUF
    MOV CX, 1
    CALL READ_INPUT_WITH_BACKSPACE
    
    MOV AL, GENERIC_BUF[0]
	MOV SELECTED_METHOD_PAY, AL

	L_DECISION_RECEIPT:
		CMP AL,'C'
		JE PAYMENT_RECEIPT
		CMP AL,'c'
		JE PAYMENT_RECEIPT
		CMP AL,'T'
		JE TNG_PAYMENT_SHOW
		CMP AL,'t'
		JE TNG_PAYMENT_SHOW
		
		JMP L_PAY_RETRY  	

	TNG_PAYMENT_SHOW:
		CALL TO_CLEAR_SCREEN_TNG_FORM
		MOV AH,09H
		LEA DX,AMT_PAYMENT_ENTER
		INT 21H
		
		LEA DI, GENERIC_BUF
		MOV CX, 1
		CALL READ_INPUT_WITH_BACKSPACE
		JMP L_TNG_PAYMENT_QRCODE
		
	L_TNG_PAYMENT_QRCODE:
		CALL TO_CLEAR_SCREEN
		MOV AH,09H
		LEA DX,AMT_PAYMENT_QRCODE
		INT 21H
		
		LEA DI, GENERIC_BUF
		MOV CX, 1
		CALL READ_INPUT_WITH_BACKSPACE
		JMP PAYMENT_RECEIPT

	PAYMENT_RECEIPT:
		CALL RECEIPT_THANKQ
		JMP DISPLAY_RECEIPT
		
	RETURN_TO_MENU_FUNC:
		CALL LWELC_MENU
		JMP RECEIPT_END_FUNC

	RECEIPT_END_FUNC:
	POP DX
	POP CX
	POP BX
	POP AX		
    RET
DISPLAY_RECEIPT ENDP

SHOW_METHOD_PAYMENT PROC
    MOV AL,[SELECTED_METHOD_PAY]
    CMP AL,'c'
	JE L_SHOW_METHOD_PAY_CASH
	CMP AL,'C'
    JE L_SHOW_METHOD_PAY_CASH		
	CMP AL,'t'
	JE L_SHOW_METHOD_PAY_TNG
    CMP AL,'T'
    JE L_SHOW_METHOD_PAY_TNG		
    
	L_SHOW_METHOD_PAY_CASH:
		LEA DX,SEL_METHOD_PAY_C
		JMP SHOW_METHOD_PAY
    
	L_SHOW_METHOD_PAY_TNG:
		LEA DX,SEL_METHOD_PAY_T
		JMP SHOW_METHOD_PAY
	
	SHOW_METHOD_PAY:
		MOV AH,09H
		INT 21H
	RET
SHOW_METHOD_PAYMENT ENDP

TO_CLEAR_SCREEN_TNG_FORM PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,6EH
	MOV CX,0000H
	MOV DX,1A4FH
	INT 10H

	MOV AH,06H
	MOV AX,0600H
	MOV BH,1FH
	MOV CX,0B10H
	MOV DX,1024H
	INT 10H

	MOV AH,06H
	MOV AX,0600H
	MOV BH,1EH
	MOV CX,1110H
	MOV DX,1224H
	INT 10H

	MOV AH,02H
	MOV BH,00H
	MOV DH,03H
	MOV DL,00H
	INT 10H

	POP DX
	POP CX
	POP BX
	POP AX
	RET
TO_CLEAR_SCREEN_TNG_FORM ENDP

MUL_QTY_PRICE_SAFE PROC
    PUSH BX
    PUSH DX			
    
    ; AL(QTY : 0-99) x [PRICE_OF_PROD] -> AX(TOTAL)
    ; MAX VALUE: 99 x 500 = 49500 < 65536  -> VALID TO STORE IN DW
    XOR AH, AH                  ; AX = QTY
    MOV BX, [PRICE_OF_PROD]     ; BX = ITEM PRICE IN DW
    MUL BX                       ; DX:AX = AX x BX 
    
    MOV [TOTAL_COST], AX        ; TOTAL COST
    
    POP DX			
    POP BX
    RET
MUL_QTY_PRICE_SAFE ENDP

GET_TWO_DIGIT_INPUT PROC
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI

RE_ENTER_QTY:
    LEA DI, GENERIC_BUF
    MOV CX, 2
    CALL READ_INPUT_WITH_BACKSPACE

    CMP CX, 0
    JE SHOW_QTY_ERROR

    LEA SI, GENERIC_BUF
    MOV BX, CX          ; LOOP TIME = STRING LEN

VALIDATE_LOOP:
    MOV AL, [SI]
    CMP AL, '0'
    JB SHOW_QTY_ERROR   ; < 0 -> ERROR
    CMP AL, '9'
    JA SHOW_QTY_ERROR   ; > 9 -> ERROR
    INC SI
    DEC BX
    JNZ VALIDATE_LOOP

    CMP CX, 1
    JE ONE_DIGIT_CONVERT

    MOV AL, GENERIC_BUF[0]
    SUB AL, '0'
    MOV BL, 10
    MUL BL              ; AL = TENS * 10
    MOV BL, GENERIC_BUF[1]
    SUB BL, '0'
    ADD AL, BL          ; AL = TENS * 10 + ONES
    JMP CHECK_RANGE

ONE_DIGIT_CONVERT:
    MOV AL, GENERIC_BUF[0]
    SUB AL, '0'

; QUANTITY VALID RANGE
CHECK_RANGE:
    CMP AL, 1
    JB SHOW_QTY_ERROR   ; < 1 -> ERROR
    CMP AL, 99
    JA SHOW_QTY_ERROR   ; > 99 -> ERROR

    MOV [QTY_OF_PROD], AL
    JMP GET_QTY_SUCCESS

SHOW_QTY_ERROR:
    CALL TO_CLEAR_SCREEN

    MOV AH, 06H
    MOV AX, 0600H
    MOV BH, 4FH         ; RED + WHITE -> ERROR MSG
    MOV CX, 0502H
    MOV DX, 0B2DH
    INT 10H

    MOV AH, 02H
    MOV BH, 00H
    MOV DH, 06H
    MOV DL, 00H
    INT 10H

    LEA DX, QTY_ERROR_MSG
    MOV AH, 09H
    INT 21H             ; ERROR : MUST BE A VALUE...

WAIT_ERROR_ENTER:
    MOV AH, 01H
    INT 21H
    CMP AL, 0DH
    JNE WAIT_ERROR_ENTER

    CALL TO_CLEAR_SCREEN
    CALL BG_WELC_TO_MSG
    
    LEA DX, QTY_PROD_MSG
    MOV AH, 09H
    INT 21H
    JMP RE_ENTER_QTY

GET_QTY_SUCCESS:
    POP SI
    POP DX
    POP CX
    POP BX
    RET
GET_TWO_DIGIT_INPUT ENDP

DISPLAY_DIGIT PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    MOV CX,0
    MOV BX,10
    
    CMP AX,0
    JNZ CONVERT_LOOP    
    MOV DL,'0'         	
    MOV AH,02H			
    INT 21H				
    JMP DISPLAY_END
    
	CONVERT_LOOP:
		XOR DX, DX          
		DIV BX              
		PUSH DX             
		INC CX              
		CMP AX, 0           
		JNZ CONVERT_LOOP    
		
	DISPLAY_LOOP:
		POP DX              
		ADD DL, '0'     	
		MOV AH, 02H          
		INT 21H
		LOOP DISPLAY_LOOP   
		
	DISPLAY_END:
		POP DX				
		POP CX
		POP BX
		POP AX
    RET
DISPLAY_DIGIT ENDP

DISPLAY_PRICE_WITH_SEN PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX

    MOV BX, 100
    XOR DX, DX
    DIV BX              ; AX=DOLLARS, DX=SEN
    
    ; ---- SHOW DOLLARS PART ----
	MOV CX, DX          ; STASH SEN IN CX
    CALL DISPLAY_DIGIT
    
    ; ---- SHOW DECIMAL POINT ----
    MOV AH, 02H
    MOV DL, '.'
    INT 21H
    
    ; ---- SHOW SEN PART (ALWAYS 2 DIGITS) ----
    MOV AX, CX         ; AX = SEN(0-99), FROM CX NOT THE '.'-CLOBBERED DX
    MOV BX, 10
    XOR DX, DX
    DIV BX              ; AL = TENS DIGIT, AH = ONES DIGIT
    
    ; SAVE AH TO ANOTHER REG
    MOV BL, AH         ; BL = ONES DIGIT (TEMP)
    
    ; SHOW SEN TENS DIGIT
    MOV DL, AL
    ADD DL, '0'
    MOV AH, 02H
    INT 21H
    
    ; SHOW SEN ONES DIGIT
    MOV DL, BL         ; RESTORE ONES DIGIT FROM BL
    ADD DL, '0'
    MOV AH, 02H
    INT 21H

    POP DX
    POP CX
    POP BX
    POP AX
    RET
DISPLAY_PRICE_WITH_SEN ENDP

SHOW_PROD_INRECEIPT PROC
    MOV AL,[SELECTED_CATEGORY]
    CMP AL,'1'
    JE L_SHOW_PROD_GRP1		
    CMP AL,'2'
    JE L_SHOW_PROD_GRP2		
    
	L_SHOW_PROD_GRP1:
		MOV AL,[SELECTED_PROD]
		CMP AL,'A'					
		JE L_SHOW_PROD_1_A		
		CMP AL,'a'
		JE L_SHOW_PROD_1_A        ; <- ADDED THESE TWO LINES
		CMP AL,'B'
		JE L_SHOW_PROD_1_B
		CMP AL,'b'
		JE L_SHOW_PROD_1_B        ; <- ADDED THESE TWO LINES	
    
	L_SHOW_PROD_1_A:
		LEA DX,PROD_1_A_MSG
		JMP SHOW_PRODUCT_NAME
    
	L_SHOW_PROD_1_B:
		LEA DX,PROD_1_B_MSG
		JMP SHOW_PRODUCT_NAME

	L_SHOW_PROD_GRP2:
		MOV AL,[SELECTED_PROD]
		CMP AL,'A'
		JE L_SHOW_PROD_2_A
		CMP AL,'a'
		JE L_SHOW_PROD_2_A
		CMP AL,'B'
		JE L_SHOW_PROD_2_B
		CMP AL,'b'
		JE L_SHOW_PROD_2_B
		
	L_SHOW_PROD_2_A:
		LEA DX,PROD_2_A_MSG
		JMP SHOW_PRODUCT_NAME
		
	L_SHOW_PROD_2_B:
		LEA DX,PROD_2_B_MSG

	SHOW_PRODUCT_NAME:
		MOV AH,09H
		INT 21H

	RET
SHOW_PROD_INRECEIPT ENDP

SHOW_PROD_QTY_INRECEIPT PROC
	PUSH AX
	PUSH BX
	PUSH CX
	PUSH DX
	
	; HIGHLIGHT SEPARATOR BEFORE QTY (COL 28H-29H).
	; ORIGINAL HARDCODED CX=0C28H/DX=0C29H, ROW 0CH (HEADER ROW),
	; DIDN'T MATCH THE 0EH USED BELOW FOR CURSOR - LEGACY BUG,
	; NOW UNIFIED TO FOLLOW RECEIPT_ITEM_ROW.
	MOV CH,[RECEIPT_ITEM_ROW]
	MOV CL,24H
	MOV DH,[RECEIPT_ITEM_ROW]
	MOV DL,25H
	MOV AH,06H
	MOV AL,00H
	MOV BH,66H
	INT 10H

	MOV AH,02H
	MOV BH,00H
	MOV DH,[RECEIPT_ITEM_ROW]
	MOV DL,25H
	INT 10H
	
	LEA DX,QTY_LABEL
	MOV AH,09H          ; ORIGINAL MISSED THIS LINE, LEFTOVER AH=02H MADE INT21H
	INT 21H             ; ACT AS "PRINT CHAR(DL)" INSTEAD OF "PRINT STRING", FIXED
	
	MOV AL,[QTY_OF_PROD]
    XOR AH,AH			
    CALL DISPLAY_DIGIT	
	
	POP DX
	POP CX
	POP BX
	POP AX
	RET
SHOW_PROD_QTY_INRECEIPT ENDP

;=============================(ADMIN LOGIN SYSTEM)========================================	
Llogin PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI    

	MOV AH,06H
	MOV AX,0600H
	MOV BH,6EH
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
	
	MOV AH,02H
	MOV BX,00
	MOV DX,0000
	INT 10H
		
	MOV AH,09H
	LEA DX,STRFONT
	INT 21H
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,67H
	MOV CX,1404H
	MOV DX,142CH
	INT 10H
	MOV AH,02H
	MOV BX,00
	MOV DX,1400H
	INT 10H
	MOV AH,09H
	LEA DX,STRFONT_LOGIN_R
	INT 21H
		
	MOV AH,06H
	MOV AX,0600H
	MOV BH,7AH
	MOV CX,0708H
	MOV DX,0F2CH
	INT 10H
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,1AH
	MOV CX,080AH
	MOV DX,0E2AH
	INT 10H

	MOV AH,02H
	MOV BX,00
	MOV DH,0AH
	MOV DL,00H
	INT 10H
		
	MOV AH,09H
	LEA DX,USERNAME
	INT 21H
	
	L_INPUT_USERNAME_CONTINUE:
	MOV AH,02H
	MOV BX,00
	MOV DH,0AH
	MOV DL,1DH
	INT 10H
		
	LEA DI, USER
	MOV CX, 10
	CALL READ_INPUT_WITH_BACKSPACE

	CMP USER[0], 'R'
	JE L_RETURN_WELC_MENU
	CMP USER[0], 'r'
	JE L_RETURN_WELC_MENU

	LEA SI, USER
	LEA DI, TARUMT
_CHK_USER_LOOP:
	MOV AL, [DI]
	CMP AL, '$'
	JE LPSW_ENTER
	CMP AL, [SI]
	JNE LINVALID
	INC SI
	INC DI
	JMP _CHK_USER_LOOP

	L_RETURN_WELC_MENU:
		CALL MAIN
		JMP L_INPUT_USERNAME_CONTINUE
	
LPSW_ENTER:
	MOV AH,09H
	LEA DX,NL
	INT 21H
		
	MOV AH,02H
	MOV BX,00
	MOV DH,0BH
	MOV DL,00H
	INT 10H
		
	MOV AH,09H
	LEA DX,PASSWORD
	INT 21H
		
	MOV AH,02H
	MOV BX,00
	MOV DH,0BH
	MOV DL,1DH
	INT 10H

	LEA DI, PSW
	MOV CX, 10
	CALL READ_INPUT_WITH_BACKSPACE

	CMP PSW[0], 'R'
	JE L_RETURN_WELC_MENU
	CMP PSW[0], 'r'
	JE L_RETURN_WELC_MENU

	LEA SI, PSW
	LEA DI, VERIFY
_CHK_PSW_LOOP:
	MOV AL, [DI]
	CMP AL, '$'
	JE LcheckPSW
	CMP AL, [SI]
	JNE LINVALID
	INC SI
	INC DI
	JMP _CHK_PSW_LOOP

LINVALID:
	MOV AH,09H
	LEA DX,NL
	INT 21H
		
	MOV AH,06H
	MOV AX,0600H
	MOV BH,4FH
	MOV CX,1109H
	MOV DX,122BH
	INT 10H
	
	MOV AH,02H
	MOV BX,00
	MOV DH,11H
	MOV DL,00H
	INT 10H
	
	MOV AH,09H
	LEA DX,INVALID_STRFONT_PSW
	INT 21H	
		
	LEA DI, GENERIC_BUF
	MOV CX, 1
	CALL READ_INPUT_WITH_BACKSPACE
	JMP Llogin_RetryOneMore   

LcheckPSW:
	MOV AH,06H
	MOV AX,0600H
	MOV BH,2EH
	MOV CX,0D04H
	MOV DX,0D28H
	INT 10H
		
	JMP CONTINUE_ADMIN	

    POP SI
    POP DX
    POP CX
    POP BX
    POP AX     
	RET
Llogin ENDP

Llogin_RetryOneMore PROC         
    PUSH AX    
	CALL Llogin
    POP AX     
	RET
Llogin_RetryOneMore ENDP

;=============================(ADMIN SYSTEM)========================================	
CONTINUE_ADMIN PROC
    PUSH AX
    PUSH BX
    PUSH DX    

	MOV AH,06H
	MOV AX,0600H
	MOV BH,6EH
	MOV CX,0000H
	MOV DX,184FH
	INT 10H
	
	MOV AH,02H
	MOV BX,00
	MOV DX,0106H
	INT 10H
	
	MOV AH,09H
	LEA DX,SYSTEM		
	INT 21H
	
	MOV AH,09H
	LEA DX,ADMIN_SYSTEM_OPT		
	INT 21H
	
	; Enter Selection :
	MOV AH,02H
    MOV BH,00H
    MOV DH,11H 
    MOV DL,00H 
    INT 10H 
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,67H
	MOV CX,1100H
	MOV DX,111AH
	INT 10H
	
	MOV AH,09H
	LEA DX,ADMIN_SELECTION
	INT 21H

	MOV AH,06H
	MOV AX,0600H
	MOV BH,6BH
	MOV CX,111DH	; BROWN + GRAY
	MOV DX,111EH
	INT 10H
	
	MOV AH,02H
	MOV BX,00
	MOV DX,111DH	; ENTER SELECTION
	INT 10H
	
	LEA DI, GENERIC_BUF
	MOV CX, 1
	CALL READ_INPUT_WITH_BACKSPACE
	
	MOV AL, GENERIC_BUF[0]
	SUB AL, 30H
	MOV SELECTION, AL
	
	MOV AH,09H
	LEA DX,NL
	INT 21H
	
	CMP SELECTION, 1
	JL LINVALIDSECa     
	CMP SELECTION, 4
	JG LINVALIDSECa     
	
	CMP SELECTION, 1
	JE LSalesReport     
	CMP SELECTION, 2
	JE LExit_Logout_JMP 
	CMP SELECTION, 3
	JE L_CHANGE_PWD_JMP 
	CMP SELECTION, 4
	JE L_NEW_DAY_JMP

	JMP CONTINUE_ADMIN

LExit_Logout_JMP:
	JMP LExit_Logout

LSalesReport:
	JMP LshowREPORT

L_CHANGE_PWD_JMP:
	JMP EXEC_CHANGE_PASSWORD
	
L_NEW_DAY_JMP:
	JMP EXEC_NEW_DAY

LINVALIDSECa:		
	MOV AH,06H
	MOV AX,0600H
	MOV BH,4FH
	MOV CX,1105H
	MOV DX,122EH
	INT 10H
	
	MOV AH,02H
	MOV BX,00
	MOV DX,1107H
	INT 10H
	
	MOV AH,09H
	LEA DX,INVALIDSEC	
	INT 21H	
		
	MOV AH,09H
	LEA DX,NL
	INT 21H	
		
	MOV AH,09H
	LEA DX,REMOVEINV	
	INT 21H	
		
	LEA DI, GENERIC_BUF
	MOV CX, 1
	CALL READ_INPUT_WITH_BACKSPACE
	CALL CONTINUE_ADMIN 

    POP DX
    POP BX
    POP AX     
	RET
CONTINUE_ADMIN ENDP

EXEC_CHANGE_PASSWORD PROC
    MOV AX,0600H
    MOV BH,6EH
    MOV CX,0000H
    MOV DX,184FH
    INT 10H

    MOV AH,02H
    MOV BH,00H
    MOV DX,0000H
    INT 10H

    MOV AH,09H
    LEA DX,CHANGE_PWD_MENU
    INT 21H
	
    MOV AH,02H
    MOV BH,00H
    MOV DH,08H          
    MOV DL,1FH
    INT 10H
	
	MOV AX,0600H
    MOV BH,1AH		; BROWN + GREEN (FOR OLD PASSWORD)
    MOV CX,081FH
    MOV DX,0827H
    INT 10H

	LEA DI, TEMP_OLD_PWD
	MOV CX, 5
	CALL READ_INPUT_WITH_BACKSPACE

    LEA SI, TEMP_OLD_PWD
    LEA DI, VERIFY
_CHK_OLD_PWD_LOOP:
    MOV AL, [DI]
    CMP AL, '$'
    JE _OLD_PWD_MATCH
    CMP AL, [SI]
    JNE _PWD_FAIL_EXIT
    INC SI
    INC DI
    JMP _CHK_OLD_PWD_LOOP

_OLD_PWD_MATCH:
    MOV AX,0600H
    MOV BH,6EH
    MOV CX,0000H
    MOV DX,184FH
    INT 10H

    MOV AH,02H
    MOV BH,00H
    MOV DX,0000H
    INT 10H

    MOV AH,09H
    LEA DX,NEW_PWD_PROMPT
    INT 21H

    MOV AH,02H
    MOV BH,00H
    MOV DH,08H          
    MOV DL,0AH
    INT 10H
	
	MOV AX,0600H
    MOV BH,1AH		; BROWN + GREEN (FOR RESET PASSWORD)
    MOV CX,080AH
    MOV DX,0829H
    INT 10H

	LEA DI, NEW_PWD_BUFFER
	MOV CX, 5
	CALL READ_INPUT_WITH_BACKSPACE

_SAVE_NEW_PWD:
    LEA SI, NEW_PWD_BUFFER
    LEA DI, VERIFY
    MOV CX, 5
_COPY_PWD:
    MOV AL, [SI]
    MOV [DI], AL
    INC SI
    INC DI
    LOOP _COPY_PWD

    MOV AX,0600H
    MOV BH,6EH
    MOV CX,0000H
    MOV DX,184FH
    INT 10H

    MOV AH,02H
    MOV BH,00H
    MOV DX,0000H
    INT 10H

    MOV AH,09H
    LEA DX,PWD_SUCCESS_MSG
    INT 21H

    MOV AH,07H
    INT 21H

    JMP CONTINUE_ADMIN_A 

_PWD_FAIL_EXIT:
    JMP CONTINUE_ADMIN_A

EXEC_CHANGE_PASSWORD ENDP

EXEC_NEW_DAY PROC
    PUSH AX
    PUSH BX
    PUSH DX

	MOV AX,0600H
    MOV BH,6EH
    MOV CX,0000H
    MOV DX,184FH
    INT 10H

    MOV AH,02H
    MOV BH,00H
    MOV DX,0000H
    INT 10H

    ; INCREMENT DAY COUNT (ONCE)
	MOV AL,[STIMULATED_DATE]
	INC AL
	MOV [STIMULATED_DATE],AL

    MOV AH,09H
    LEA DX,NEW_DAY_PROMPT
    INT 21H

	; SHOW DAY COUNT ON SCREEN
	MOV AH,02H
	MOV BH,00H
	MOV DH,03H
	MOV DL,27H
	INT 10H

	MOV AL,[STIMULATED_DATE]
	XOR AH,AH
	CALL DISPLAY_DIGIT

	; CLEAR ORDER DATA AND SALES STATS
	CALL CLEAR_ORDER
	CALL CLEAR_SALES
	
	; WAIT FOR USER TO PRESS ENTER
WAIT_ENTER_ONLY:
	MOV AH,01H
	INT 21H
	CMP AL,0DH
	JNE WAIT_ENTER_ONLY

	JMP CONTINUE_ADMIN_A

    POP DX
    POP BX
    POP AX
    RET
EXEC_NEW_DAY ENDP

Llogin_BACK1 PROC			
    PUSH AX    
	CALL Llogin
    POP AX     
	RET
Llogin_BACK1 ENDP

CONTINUE_ADMIN_A PROC		
    PUSH AX    
	JMP CONTINUE_ADMIN
    POP AX     
	RET
CONTINUE_ADMIN_A ENDP

;================================================================================================
;=================================sales report ==================================================	
LshowREPORT PROC			
    PUSH AX
    PUSH BX
	PUSH CX
    PUSH DX    
	
	LshowREPORT_DISPLAY:
		MOV AX,0600H		
		MOV BH,1EH
		MOV CX,0000H
		MOV DX,184FH
		INT 10H
		MOV AX,0600H
		MOV BH,79H
		MOV CX,0306H
		MOV DX,0F34H
		INT 10H
		MOV AX,0600H
		MOV BH,1EH
		MOV CX,0607H
		MOV DX,0B33H
		INT 10H

		MOV AH,02H
		MOV BX,00
		MOV DH,02H  
		MOV DL,00H
		INT 10H
		
		MOV AH,09H
		LEA DX,SALES_REPORT_MSG
		INT 21H
		
		CALL DISPLAY_SALES_DATA
		
		LEA DI, GENERIC_BUF
		MOV CX, 1
		CALL READ_INPUT_WITH_BACKSPACE
		JMP EXIT_TO_ADMIN_MENU

	EXIT_TO_ADMIN_MENU:
		JMP CONTINUE_ADMIN_A

    POP DX
	POP CX
    POP BX
    POP AX     
	RET
LshowREPORT ENDP

DISPLAY_SALES_DATA PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI

    ; ---- CHEESE BUN (ROW 08H) ----
    MOV AH,02H
    MOV BH,00H
    MOV DH,08H
    MOV DL,1CH
    INT 10H
    MOV AL,SALES_DATA[0]
    XOR AH,AH
    CALL DISPLAY_DIGIT

    MOV AH,02H
    MOV BH,00H
    MOV DH,08H
    MOV DL,27H
    INT 10H
    MOV AX,SALES_AMOUNT[0]         ; ALREADY IN SEN, PASS DIRECTLY TO DECIMAL DISPLAY
    CALL DISPLAY_PRICE_WITH_SEN

    ; ---- POTATO BUN (ROW 09H) ----
    MOV AH,02H
    MOV BH,00H
    MOV DH,09H
    MOV DL,1CH
    INT 10H
    MOV AL,SALES_DATA[1]
    XOR AH,AH
    CALL DISPLAY_DIGIT

    MOV AH,02H
    MOV BH,00H
    MOV DH,09H
    MOV DL,27H
    INT 10H
    MOV AX,SALES_AMOUNT[2]
    CALL DISPLAY_PRICE_WITH_SEN

    ; ---- CHOCOLATE CAKE (ROW 0AH) ----
    MOV AH,02H
    MOV BH,00H
    MOV DH,0AH
    MOV DL,1CH
    INT 10H
    MOV AL,SALES_DATA[2]
    XOR AH,AH
    CALL DISPLAY_DIGIT

    MOV AH,02H
    MOV BH,00H
    MOV DH,0AH
    MOV DL,27H
    INT 10H
    MOV AX,SALES_AMOUNT[4]
    CALL DISPLAY_PRICE_WITH_SEN

    ; ---- BANANA CAKE (ROW 0BH) ----
    MOV AH,02H
    MOV BH,00H
    MOV DH,0BH
    MOV DL,1CH
    INT 10H
    MOV AL,SALES_DATA[3]
    XOR AH,AH
    CALL DISPLAY_DIGIT

    MOV AH,02H
    MOV BH,00H
    MOV DH,0BH
    MOV DL,27H
    INT 10H
    MOV AX,SALES_AMOUNT[6]
    CALL DISPLAY_PRICE_WITH_SEN

    ; ---- TOTAL (ROW 0EH) ----
    MOV AH,02H
    MOV BH,00H
    MOV DH,0EH
    MOV DL,27H
    INT 10H
	
    MOV AX,TOTAL_SALES
    CALL DISPLAY_PRICE_WITH_SEN

    MOV AL, [SALES_QTY_OVERFLOW_FLAGS]
    OR  AL, [SALES_AMT_OVERFLOW_FLAGS]
    CMP AL, 0
    JE  DSD_NO_OVERFLOW_WARN

    MOV AH,02H
    MOV BH,00H
    MOV DH,10H
    MOV DL,00H
    INT 10H

    LEA DX, SALES_OVERFLOW_WARN_MSG
    MOV AH,09H
    INT 21H

DSD_NO_OVERFLOW_WARN:

    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
DISPLAY_SALES_DATA ENDP

UPDATE_SALES_DATA PROC
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI

    MOV SI, 0                      ; SI = ORDER LOOP INDEX i (0-BASED)

USD_LOOP:
    MOV AL, [ORDER_COUNT]
    XOR AH, AH
    CMP SI, AX
    JAE USD_DONE_JMP                   ; i >= ORDER_COUNT, LOOP DONE

    ; ---- LOAD ORDER i (ORDER_CATEGORY/PROD/QTY ARE BYTE ARRAYS, SI AS OFFSET) ----
    MOV AL, [ORDER_CATEGORY + SI]
    MOV BL, [ORDER_PROD + SI]
    MOV CL, [ORDER_QTY + SI]

    CMP AL, '1'
    JE USD_CHK_BUN
    CMP AL, '2'
    JE USD_CHK_CAKE
    JMP USD_NEXT                   ; SHOULDN'T HAPPEN, SKIP AS SAFETY

USD_CHK_BUN:
    CMP BL, 'A'
    JE USD_CHEESE
    CMP BL, 'a'
    JE USD_CHEESE
    CMP BL, 'B'
    JE USD_POTATO
    CMP BL, 'b'
    JE USD_POTATO
    JMP USD_NEXT

USD_CHK_CAKE:
    CMP BL, 'A'
    JE USD_CHOCO
    CMP BL, 'a'
    JE USD_CHOCO
    CMP BL, 'B'
    JE USD_BANANA
    CMP BL, 'b'
    JE USD_BANANA
    JMP USD_NEXT

USD_DONE_JMP:
	JMP USD_DONE	; i >= ORDER_COUNT, LOOP DONE

USD_CHEESE:
    MOV DI, 0
    JMP USD_ADD
USD_POTATO:
    MOV DI, 1
    JMP USD_ADD
USD_CHOCO:
    MOV DI, 2
    JMP USD_ADD
USD_BANANA:
    MOV DI, 3

USD_ADD:
    ; ---- SALES_DATA[DI] += qty (BYTE ARRAY) ----
    MOV AL, CL
    ADD [SALES_DATA + DI], AL
	
	JNC USD_QTY_OK
        MOV BYTE PTR [SALES_DATA + DI], 0FFH
        MOV BX, DI
        MOV AL, [OVERFLOW_BITMASK + BX]
        OR [SALES_QTY_OVERFLOW_FLAGS], AL
	USD_QTY_OK:

        ; ---- amount(SEN) = qty x PRICE_TABLE[DI], 16-BIT SAFE MUL ----
		; DI = PROD ID (0=CHEESE200, 1=POTATO300, 2=CHOCO400, 3=BANANA500)
		CMP DI, 0
		JE PRICE_CHEESE
		CMP DI, 1
		JE PRICE_POTATO
		CMP DI, 2
		JE PRICE_CHOCO
		CMP DI, 3
		JE PRICE_BANANA
		
	PRICE_CHEESE:
		MOV AX, 200		; RM2.00 = 200 SEN
		JMP PRICE_CALC
	PRICE_POTATO:
		MOV AX, 300		; RM3.00 = 300 SEN
		JMP PRICE_CALC
	PRICE_CHOCO:
		MOV AX, 400		; RM4.00 = 400 SEN
		JMP PRICE_CALC
	PRICE_BANANA:
		MOV AX, 500		; RM5.00 = 500 SEN
		
	PRICE_CALC:
		XOR CH, CH 	; CL STILL qty, CLEAR CH TO MAKE CX=qty
		MOV BX, CX	; BX = qty
		MUL BX    	; AX = price x qty

    ; ---- SALES_AMOUNT[DI] += AX (WORD ARRAY, NEEDS DI*2) ----
    MOV BX, DI
    SHL BX, 1
    ADD [SALES_AMOUNT + BX], AX
	JNC USD_AMT_OK
        MOV WORD PTR [SALES_AMOUNT + BX], 0FFFFH
        PUSH AX
        MOV BX, DI
        MOV AL, [OVERFLOW_BITMASK + BX]
        OR [SALES_AMT_OVERFLOW_FLAGS], AL
        POP AX
    USD_AMT_OK:

    ; ---- TOTAL_SALES += AX ----
    ADD [TOTAL_SALES], AX
	JNC USD_TOTAL_OK
        MOV WORD PTR [TOTAL_SALES], 0FFFFH
        OR [SALES_AMT_OVERFLOW_FLAGS], 00010000B
    USD_TOTAL_OK:

USD_NEXT:
    INC SI
    JMP USD_LOOP

USD_DONE:
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET
UPDATE_SALES_DATA ENDP

LExit_Logout PROC
    PUSH AX    
	JMP LshowExit
    POP AX     
	RET
LExit_Logout ENDP

LshowExit PROC			
    PUSH AX
    PUSH DX    
	
	MOV AH,02H
    MOV BH,00H
    MOV DH,10H 
    MOV DL,00H 
    INT 10H
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,6EH
	MOV CX,1000H
	MOV DX,1735H
	INT 10H
	
	MOV AH,09H
	LEA DX,ENSURE	
	INT 21H
	
	; Enter Selection :
	MOV AH,02H
    MOV BH,00H
    MOV DH,17H 
    MOV DL,00H 
    INT 10H 
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,67H
	MOV CX,1700H
	MOV DX,171AH
	INT 10H
	
	MOV AH,09H
	LEA DX,ADMIN_SELECTION
	INT 21H
	
	; Y|N
	MOV AH,02H
    MOV BH,00H
    MOV DH,17H 
    MOV DL,1DH 
    INT 10H 
	
	MOV AH,06H
	MOV AX,0600H
	MOV BH,6BH
	MOV CX,171DH
	MOV DX,171EH
	INT 10H
	
	LEA DI, GENERIC_BUF
	MOV CX, 1
	CALL READ_INPUT_WITH_BACKSPACE
	MOV AL, GENERIC_BUF[0]
	MOV SELECTION, AL

	CMP SELECTION,'Y'
	JE Llogin_BACK0   
	CMP SELECTION,'y'
	JE Llogin_BACK0
	
	CMP SELECTION,'N'
	JE CONTINUE_ADMIN_0  
	CMP SELECTION,'n'    
	JE CONTINUE_ADMIN_0
	
	CMP AL,0DH
	JE CONTINUE_ADMIN_JMP
	JMP LExit_Logout
	
	CONTINUE_ADMIN_JMP:
	JMP CONTINUE_ADMIN
	
	MOV AH,09H
	LEA DX,NL
	INT 21H

    POP DX
    POP AX     
	RET
LshowExit ENDP

Llogin_BACK0 PROC      		
    PUSH AX    
	CALL LmenuICON
    POP AX     
	RET
Llogin_BACK0 ENDP

CONTINUE_ADMIN_0 PROC  		
    PUSH AX    
	JMP CONTINUE_ADMIN_A
    POP AX     
	RET
CONTINUE_ADMIN_0 ENDP

LINVALIDSEC PROC
    PUSH DX    

	MOV AH,09H
	LEA DX,INVALIDSEC
	INT 21H
	JMP MENU_ENDL

    POP DX     
	RET
LINVALIDSEC ENDP

; APPEND_ORDER_ITEM
; WRITE SELECTED_CATEGORY/PROD/QTY INTO ORDER_CATEGORY/PROD/QTY[ORDER_COUNT], THEN ORDER_COUNT += 1
; IF ORDER_COUNT >= ORDER_MAX, SKIP WRITE, JUMP TO ORDER_FULL
; CALLED FROM L_TO_GET_QTY AFTER EACH ITEM ENTERED
APPEND_ORDER_ITEM PROC
    PUSH AX
    PUSH BX
    PUSH SI

    ; CHECK IF ORDER IS FULL
    MOV AL, [ORDER_COUNT]
    CMP AL, ORDER_MAX
    JAE ORDER_FULL           
	; ORDER FULL, SKIP WRITE (UI PROMPT SHOWN BY CALLER, SEE L_ORDER_FULL_NOTICE)

    ; SI = ORDER_COUNT, USED AS BYTE INDEX FOR DB ARRAYS (CATEGORY/PROD/QTY)
    XOR AH, AH
    MOV SI, AX

    MOV AL, [SELECTED_CATEGORY]
    MOV [ORDER_CATEGORY + SI], AL

    MOV AL, [SELECTED_PROD]
    MOV [ORDER_PROD + SI], AL

    MOV AL, [QTY_OF_PROD]
    MOV [ORDER_QTY + SI], AL


    ; INCREMENT ORDER_COUNT
    INC [ORDER_COUNT]

    JMP APPEND_ORDER_ITEM_END

ORDER_FULL:

APPEND_ORDER_ITEM_END:
    POP SI
    POP BX
    POP AX
    RET
APPEND_ORDER_ITEM ENDP

; CLEAR_ORDER
; RESET ORDER_COUNT TO 0 AFTER A TRANSACTION
; READY FOR NEXT CUSTOMER
; CALLED FROM MAIN (ON RETURN TO HOMEPAGE) AND FROM EXEC_NEW_DAY
CLEAR_ORDER PROC
    PUSH AX
    MOV [ORDER_COUNT], 0
    POP AX
    RET
CLEAR_ORDER ENDP

; CLEAR SALES STATS (ONLY CALLED ON NEW DAY)
CLEAR_SALES PROC
    PUSH AX
    PUSH CX
    PUSH DI
    
    ; CLEAR SALES_DATA[4]
    MOV [SALES_DATA + 0], 0
    MOV [SALES_DATA + 1], 0
    MOV [SALES_DATA + 2], 0
    MOV [SALES_DATA + 3], 0
    
    ; CLEAR SALES_AMOUNT[4] (DW ARRAY)
    MOV [SALES_AMOUNT + 0], 0
    MOV [SALES_AMOUNT + 2], 0
    MOV [SALES_AMOUNT + 4], 0
    MOV [SALES_AMOUNT + 6], 0
    
    ; CLEAR TOTAL_SALES
    MOV [TOTAL_SALES], 0
    
    ; CLEAR OVERFLOW FLAGS (RESET WARNINGS ON NEW DAY TOO)
    MOV [SALES_QTY_OVERFLOW_FLAGS], 0
    MOV [SALES_AMT_OVERFLOW_FLAGS], 0
    
    POP DI
    POP CX
    POP AX
    RET
CLEAR_SALES ENDP

END MAIN
