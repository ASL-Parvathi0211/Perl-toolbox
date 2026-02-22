# Perl Regular Expression
    A regular expression is a string of characters that defines a specific pattern. The perl regular expression syntax is quite similar with that of awk, grep and sed.
    There are three regular expression operators inside perl:
    • Matching regular expression operator
    • Substitute regular expression operator
    • Transliterate regular expression operator

    # Perl Matching Operators
        Perl matching operators have various modifiers. It is mainly used to match a string or statement to a regular expression.

        # Perl Matching Operator =~
            The matching operator =~ is used to match a word in the given string. It is case sensitive, means if string has a lowercase letter and you are searching for an uppercase letter then it will not match.
                $line = "This is javaTpoint.";
                if ($line =~ /java/){
                    print "Matching\n";
                    }else{
                        print "Not Matching\n";
                        }
                        if ($line =~ /Java/){
                            print "Matching\n";
                            }else{
                                print "Not Matching\n";
                                }
                                
                Output:
                    Matching
                    Not Matching
 
        # Perl Matching Operator !~
            It is the opposite of the earlier one (=~). If the letters match it gives the output as not matched and vice versa.
                $ line = "This is javaTpoint.";
                if ($line!~ /java/){
                    print "Matching\n";
                    }else{
                        print "Not Matching\n";
                        }
                        if ($line!~ /Java/){
                            print "Matching\n";
                            }else{
                                print "Not Matching\n";
                                }
                Output:
                    Not Matching
                    Matching
