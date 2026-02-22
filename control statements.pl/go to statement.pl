# Perl goto Statement
    The Perl goto statement is the jump statement. It is used to transfer control by jumping to other label inside a loop.
    There are three goto forms:
        
    goto LABEL:
        It jumps to the statement labeled with LABEL and resumes normal execution from there.
            
    goto EXPR:
        It is a generalization of goto LABEL. The expression returns a label name and then jumps to that labeled statement.
            
    goto &NAME:
        For currently running subroutine it substitutes a call to the named subroutine.
        Syntax of Perl goto statement is as follows:
            goto LABEL
            or
            goto EXPR
            or
            goto &NAME
                
    Perl goto Statement Example
    Let's see a simple example to use goto statement in Perl language.
        LOOP:do
        print "You are not eligible to vote!\n";
        print "Enter your age\n";
        $age = <>;
        if( $age < 18){
            goto LOOP;
            }
            else{
                print "You are eligible to vote\n";
                }
            
        Output:
            You are not eligible to vote!
            Enter your age:
            11
            You are not eligible to vote!
            Enter your age:
            5
            You are not eligible to vote!
            Enter your age:
            26
            You are eligible to vote!



































































































