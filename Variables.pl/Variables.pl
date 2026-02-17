# Perl Variables
    A variable is a place to store values. They can be manipulated throughout the program. When variables are created they reserve some memory space.
    There are three types of variables:
    • Scalar defined by $
    • Arrays defined by @
    • Hashes defined by %
    The same variable can be used for all these three types of variables in a program. For example, $name, @name and %name, all three variables will be considered different in a program.

# Perl Variable Declaration
    The equal sign (=) is used to assign values to variables. At the left of (=) is the variable name and on the right it is the value of the variable.
    • $name = "Anastasia";
    • $rank = "9th";
    • $marks = 756.5;
    Here we have created three variables $name, $rank and $marks.
    
# Perl use strict
    If you are using use strict statement in a program, then you have to declare your variable before using it. It is mandatory. Otherwise you'll get an error.
    The $a and $b are special variables used in perl sort function. There is no need to declare these two variables. So it is recommended not to use these two variables except in connection to sort.
    Variables can be declared using my, our, use vars, state and $person::name (explicit package name). Although, they all have different meanings.
        use 5.010;
        use strict;
        my $x = 23;
        say $x;
        state $name = "Anastasia";
        say $name;
        our $rank = "9th";
        say $rank;
        use vars qw($marks);
        $marks = 756.5;
        say $marks;
        $Person::name = 'John';
        say $Person::name;
        $a = 1224365;
        say $a;
        $b = "Welcome at CSE";
        say $b;
        
        # Output:
            23
            Anastasia
            9th
            756.5
            John
            1224365
            Welcome at CSE
            Look at the above output, the last two variable are $a and $b. so we have not defined them. Yet their output is displayed.

