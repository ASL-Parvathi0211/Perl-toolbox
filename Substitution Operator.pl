# Perl Substitution Operator
    The substitution operator is just an extension of the matched operator. It allows the replacement of text matched with some new text.
    Its basic syntax is:
        s/oldPattern/newPattern /;
        
    # Perl Substitution Operator with s///
        Here we are replacing liquid with solid in the first part with s///.
        In the second part, 'liquid' is replaced with 'solid' globally with s///g.
            $line = "liquid will remain liquid until it is evaporated";
            $line =~ s/liquid/solid/;
            print "$line\n";
            print"\n";
            $line = "liquid will remain liquid until it is solidified";
            $line =~ s/liquid/solid/g;
            print "$line\n";
            
            Output:
                solid will remain liquid until it is evaporated
                solid will remain solid until it is evaporated
    
    # Perl Functions and Subroutines
        Perl functions and subroutines are used to reuse a code in a program. You can use a function at several places in your application with different parameters.
        There is only one difference in function and subroutine, subroutine is created with sub keyword and it returns a value. You can divide your code into separate subroutines. Logically each function in each division should perform a specific task.
            Syntax of subroutine:
                sub subName{
                    body
                    }

    # Perl define and call subroutine function
        The syntax for Perl define a subroutine function is given below:
            sub subName{
                body
                }
                OR
                subName(list of arguments);
                &subName(list of arguments);
        In the following example, we are defining a subroutine function 'myOffice' and call it.
            #defining function
            sub myOffice{
                print "java\n";
                }
                # calling Function
                myOffice();
            
            Output:
                java
