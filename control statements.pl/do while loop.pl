# Perl do while Loop
    Unlike for and while loop, the do while loop checks its condition at the bottom of the loop. So do while loop will execute at least once.
    do while loop syntax
    The syntax of Perl language do-while loop is given below:
        do{
            //code to be executed
            }while(condition);
            
    Perl do while Example
        This is the simple program of Perl do while loop where we are printing the table of 1.
            $i = 1;
            # do...while loop execution
            do{
                printf "$i\n";
                $i++;
                }while( $i <= 10 );
                
            Output:
                1
                2
                3
                4
                5
                6
                7
                8
                9
                10

    # Perl Nested do while Loop Example
        A nested do while loop is the one in which a do while loop is nested inside another do while loop.
        It is executed completely for both inner and outer loops.
        Example:
            $i = 1;
            # do...while loop execution
            do{
                $j = 1;
                do{
                    printf "$i $j\n";
                    $j++;
                    }while( $j <= 3 );
                    $i++;
                    }while( $i <= 3 );
        
            Output:
                1 1
                1 2
                1 3
                2 1
                2 2
                2 3
                3 1
                3 2
                3 3

    # Perl Infinite do while Loop Example
        By passing true in while condition, infinite do while loop is executed. Its execution can be stopped by using ctrl + c.
        do{
            printf "Infinitive do-while Loop\n";
            }while( true );
        
        Output:
        Infinitive While Loop
        Infinitive While Loop
        Infinitive While Loop
        Infinitive While Loop
        Infinitive While Loop
        ctrl+c
