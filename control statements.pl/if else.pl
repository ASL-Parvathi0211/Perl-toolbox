# Perl If-else Example
    The Perl if-else statement is used to execute a code if condition is true or false. The syntax of if-else statement is given below:
        if(expression){
            //code to be executed if condition is true
            }else{
                //code to be executed if condition is false
                }
            
    Let's see the simple example of even and odd number using if-else statement in Perl language.
        $a = 10;
        if( $a %2==0 ){
            printf "Even Number\n";
            }else{
                printf "Odd Number\n";
                }
            
        Output:
            Even Number
    Here, input is an even number and hence output is even.
        
    # Perl If-else Example with Input from user
        In this example, we'll take input from user by using standard input (<STDIN>/<>).
            print "Enter a Number?\n";
            $num = <>;
            if( $num %2==0 ){
                printf "Even Number\n";
                }else{
                    printf "Odd Number\n";
                    }
            
            Output:
                Enter a Number?
                5
                Odd Number
                Enter a Number?
                4
                Even Number
        In the first output, user has entered number 5 which is odd. Hence the output is odd.
        In the second output, user has entered number 4 which is even. Hence the output is even.
