      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 usuarios OCCURS 5 TIMES.
         05 nombre PIC x(10) VALUE SPACES.
         05 apellido PIC x(10) VALUE SPACES.
         05 dni PIC x(8) VALUE SPACES.
         05 usuario PIC x(10) VALUE SPACES.


       LINKAGE SECTION.
       01 PARAMETRES.
           02 PA-RETURN-CODE PIC 99 VALUE 0.
       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
           DISPLAY "Hello world".
           MOVE 0 TO PA-RETURN-CODE.

       funcionExterna.
           DISPLAY "funcion externa ejecutada".
           STOP RUN.
       END PROGRAM YOUR-PROGRAM.
https:*> //www.youtube.com/watch?v=vSJNqrLZUbk&ab_channel=Tecno-logicos
