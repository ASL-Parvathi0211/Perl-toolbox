# Perl If else-if Example
    The Perl if else-if statement executes one code from multiple conditions. The syntax of if else-if statement is given below:
        if(condition1){
            //code to be executed if condition1 is true
            }else if(condition2){
                //code to be executed if condition2 is true
                }
                else if(condition3){
                    //code to be executed if condition3 is true
                    }
                    ...
                    else{
                        //code to be executed if all the conditions are false
                        }
            
    The example of if else-if statement in Perl language is given below.
        print "Enter a Number to check grade\n";
        $num = <>;
        if( $num < 0 || $num > 100){
            printf "Wrong Number\n";
            }elsif($num >= 0 && $num < 50){
                printf "Fail\n";
                }elsif($num >= 0 && $num < 60){
                    printf "D Grade\n";
                    }elsif($num >= 60 && $num < 70){
                        printf "C Grade\n";
                        }elsif($num >= 70 && $num < 80){
                            printf "B Grade\n";
                            }elsif($num >= 80 && $num < 90){
                                printf "A Grade\n";
                                }elsif($num >= 90 && $num <= 100){
                                    printf "A+ Grade\n";
                                    }
            
        Output:
            Enter a Number to check grade
            66
            C Grade
            Enter a Number to check grade
            2
            Wrong Number
           