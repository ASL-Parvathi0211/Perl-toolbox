# Perl for Loop
    Perl for loop is also known as C-style for loop. The for loop iterates the statement or a part of the program several times.
    It has three parameters:
    • Initialize : This part is executed first, and only once. It initializes and declares loop variable.
    • Condition : The for loop executes till the condition is true. When condition is false, loop execution stops and execution terminates out of the loop.
    • Increment/Decrement : The for loop variable increment or decrement as long as it satisfies the loop condition. When condition is not satisfied loop terminates and output is printed.
    The syntax of for loop in Perl language is given below:
        for(initialization;condition;incr/decr){
            //code to be executed
            }
    
    Perl for loop Example:
        Let's see the simple program of for loop that prints table of 1.
        for( $a = 1; $a <= 10; $a++ ){
            print " $a\n";
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
            
    # Perl Nested for Loop
        In this example, one for loop is nested inside another for loop. Inner loop is executed completely while outer loop is executed only once. It means if loop is running for 3 times, outer loop will execute 3 times but inner loop will execute 9 times.
        Example:
            for( $i = 1; $i <= 3; $i++ ){
                for( $j = 1; $j <= 3; $j++ ){
                    print " $i $j\n";
                    }
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

    # Perl Infinite for Loop
        If double semicolon (;;) is used in for loop, the loop will execute for infinite times. You can stop the execution using ctrl + c.
            for( ; ; )
            {
                printf "Infinite For Loop\n";
                }
            
            Output:
                Infinite For Loop
                Infinite For Loop
                Infinite For Loop
                Infinite For Loop
                Infinite For Loop
                Ctrl+c
