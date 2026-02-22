# Perl Switch Statement
    The perl switch statement is used to execute the code from multiple conditions. There is no case or switch statement in perl.
    Instead we use 'when' in place of case and 'given' in place of case.
    The syntax of switch statement in perl language is given below:
        given(expression){
            when (value1)
            {//code to be executed;}
            when (value2)
            {//code to be executed;}
            when (value3)
            {//code to be executed;}
            default
            {//code to be executed if all the cases are not matched.}
            }
                
    Perl Switch Example
    Let's see a simple example of c language switch statement.
        use feature qw(switch say);
        print "Enter a Number\n ";
        chomp( my $grade = <> );
        given ($grade) {
            when ('10') { say 'It is 10' ;}
            when ('20') { say 'It is 20' ;}
            when ('30') { say 'It is 30' ;}
            default { say 'Not 10, 20 or 30';}
            }
            
        Output:
            Enter a Number
            10
            It is 10
            Enter a Number
            55
            'Not 10, 20 or 30'
