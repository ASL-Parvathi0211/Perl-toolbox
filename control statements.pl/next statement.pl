# Perl next Statement
    The Perl next statement is like continue statement in C. It helps you to move on to the next element of your array or hash skipping all the elements in between.
    The syntax of Perl next statement is given below:
    next;
        
        1. Perl next statement Example
            @array = (a..z);
            print("@array\n");
            for ($index = 0; $index < @array; $index++) {
                if ($index == 0 || $index == 4 || $index == 8 || $index == 14 || $index == 20) {
                    next;
                    }
                    $array[$index] = "-";
                    }
                    print("@array\n");
                    
            Output:
                a b c d e f g h i j k l m n o p q r s t u v w x y z
                a - - - e - - - i - - - - - o - - - - - u - - - - -
        In the above program, we declared an array, from (a-z).
            The alphabetical array is printed as it is.
            for loop is used, with next statement for all the vowels.
            We have assigned (-) sign to the rest of the array elements other than vowels.
            Now due to next statement, only vowel elements will be printed and other elements will be replaced with (-) sign.

    # Perl next statement with label
        The next label allows you to transfer control to an enclosing loop other than the neighboring loop.
        If label is specified with next statement, execution skips to the next iteration identified with label.
        The syntax of Perl next statement is given below:
        next LABEL;
            
            1. Perl next statement with label Example
                OUTER: for ($i = 0; $i < 3; $i++) {
                    for ($j = 0; $j < 3; $j++) {
                        print("inner: $i,$j\n");
                        if ($j == 1) {
                            next OUTER;
                            }
                            }
                            print("outer: $i,$j\n\n");
                            }
                Output:
                    Inner: 0,0
                    Inner: 0,1
                    Inner: 1,0
                    Inner: 1,1
                    Inner: 2,0
                    Inner: 2,1
