# Perl String
    Strings are an essential part of the Perl language. They are scalar variables, so they start with ($) sign. A string can be defined within a single quote (') or double quote (").
    # Perl String Operators
        The operators make it easy to manipulate a string in different ways. There are two types of string operators:
        Concatenation (.)
        Repetition (x)
        
        1. Perl Concatenation Operator
            Perl strings are concatenated with a (.) sign instead of (+) sign.
                $firstName = "Christian";
                $lastName = "Grey";
                $fullName = $firstName . " " . $lastName;
                print "$fullName\n";
                
            Output:
                Christian Grey

        2. Perl Repeitition Operator
            Perl strings can be repeated a number of times with (x) variable.
                $text = "Thank You ";
                $output = $text x 3;
                print "$output\n";
                
                Output:
                    Thank You Thank You Thank You

    # Perl Initializing and Declaring a String
        In Perl, to declare a string use my keyword before variable name.
        A string can be initialised and declared with the following syntax:
            my $variableName = "";
        In this example, we have shown how to initialize and declare a string. We have printed several strings together by the following ways:
            • Join strings using a dot (.) operator.
            • Supply strings as separate arguments.
            • Embed strings in a bigger string.
        We have shown all the three methods to print the output.
            • use strict;
            • use warnings;
            • # Declaring and initializing a string.
            • my $msg1 = "Welcome at Java.";
            • my $msg2 = "This is our Perl Tutorial.";
            • #printing using . operator.
            • print $msg1 . "" . $msg2. "\n";
            • #print as separate arguments.
            • print $msg1, "",$msg2, "\n";
            • #embedd string in a bigger string.
            • print "$msg1$msg2\n";
            
            Output:
                Welcome at Java. This is our Perl Tutorial.
                Welcome at Java. This is our Perl Tutorial.
                Welcome at Java. This is our Perl Tutorial.

    # Perl Single quote Vs Double quote String
        Strings can be placed within a single quote (') or double quote (") but they have little different behavior.
            my $user = 'Ana';
            print 'Hello $user, welcome at our site.\n';
            print "\n";
            my $user = 'Ana';
            my $day = "today";
            print "Hello $user, welcome at our site $day.\n";
            
            Output:
                Hello $user, welcome at our site.\n
                Hello Ana, welcome at our site today.

    # Perl substr Function
        This function returns a substring of EXPR, starting at OFFSET within the string. If OFFSET is negative, starts that many characters from the end of the string. If LEN is specified, returns that number of bytes, or all bytes up until end-of-string if not specified. If LEN is negative, leaves that many characters off the end of the string.
        If REPLACEMENT is specified, replaces the substring with the REPLACEMENT string.
        If you specify a substring that passes beyond the end of the string, it returns only the valid element of the original string.
        Syntax
            substr EXPR, OFFSET, LEN, REPLACEMENT
            substr EXPR, OFFSET, LEN
            substr EXPR, OFFSET
            Return Value
            This function returns string.
        Example
            $temp = substr("okay", 2);
            print "Substring valuye is $temp\n";
            $temp = substr("okay", 1,2);
            print "Substring valuye is $temp\n";
            
            OUTPUT:
                Substring valuye is ay
                Substring valuye is ka
