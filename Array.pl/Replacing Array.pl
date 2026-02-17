# Perl Replacing Array Elements, splice()
        The splice array function removes the elements as defined and replaces them with the given list.
            @alpha = (A..Z);
            print "Before - @alpha\n";
            splice(@alpha, 8, 8, U..Z);
            print "After - @alpha\n";
            
            Output:
                Before - A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
                After - A B C D E F G H U V W X Y Z Q R S T U V W X Y Z
        In the above program, the replacement begins counting from 9th position (I) to 8 elements that is P.
