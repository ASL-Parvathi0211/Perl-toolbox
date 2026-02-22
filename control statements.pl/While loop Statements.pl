# Perl while Loop
    The Perl while loop is used to iterate the part of program or statements many times.
    In while loop, condition is given before the statement. When loop execution starts, it first checks whether the condition is true or false. If condition is true,loop executes. If condition is false, the loop terminates out of the loop.
    Syntax of while loop in C language
    The syntax of while loop in Perl language is given below:
        while(condition){
            //code to be executed
            }
            
    Perl while loop Example
        $i = 1;
        # while loop execution
        while( $i <= 10 ){
            printf "$i\n";
            $i++;
            }
        
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

    # Perl Nested while Loop Example
        In nested while loop, one while loop is used inside another while loop. The inner while loop is executed completely while outer loop is executed once.
            $i = 1;
            # while loop execution
            while( $i <= 3 ){
                $j = 1;
                while( $j <= 3 ){
                    printf "$i $j\n";
                    $j++;
                    }
                    $i++;
                    }
                
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

    # Perl Infinite while Loop Example
        To create infinite while loop, pass true as the test condition. Press ctrl + c to stop the loop execution.
            while(true)
            {
                printf"Infinitive While Loop\n";
                }
            
            Output:
                Infinitive While Loop
                Infinitive While Loop
                Infinitive While Loop
                Infinitive While Loop
                Infinitive While Loop
                ctrl+c
