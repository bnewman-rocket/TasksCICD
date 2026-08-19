       $set OUTDD("output.txt")
       identification division.
       program-id. BasicProgram.

       environment division.
       configuration section.

       data division.
       working-storage section.

       procedure division.

           perform main
           .
       main section.
           display "Hello, "
           .
           goback
           .

       end program BasicProgram.