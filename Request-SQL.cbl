IDENTIFICATION DIVISION.
       PROGRAM-ID. JEREMIAHSILVALOOP.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       01 WS-VARIABLES.
           03 WS-COUNT                         PIC 9.
           03 WS-ATHLETES                      PIC 99.
      
       PROCEDURE DIVISION.
       P1-BEGINING.
           INITIALISE WS-VARIABLES
    
           PERFORM P2-PROCESSING-2   THRU   P2-END WITH TEST
                                               BEFORE UNTIL WS-COUNT = 3
           PERFORM P3-FINALIZE
           .
       P2-PROCESSING-2.
           ADD 1                                TO     WS-COUNT
           DISPLAY 'BOCA JUNIORS LIST: '               WS-COUNT

           PERFORM WITH TEST BEFORE UNTIL WS-ATHLETES = 22
               ADD 1                            TO     WS-ATHLETES 
             
               DISPLAY 'ATHLETES No: '                 WS-ATHLETES 
           END-PERFORM
           
           MOVE ZEROS                           TO     WS-ATHLETES 
           .
       P2-END.
       P3-FINALIZE.
       
         STOP RUN.
       END PROGRAM JEREMIAHSILVALOOP.