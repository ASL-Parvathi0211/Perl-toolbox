# Perl redo Statement
    The Perl redo statement restarts the current loop without evaluation of the control statement. Further statements in the block will not be executed.
    The syntax of redo statement is given below:
    redo;
    
    1. Perl redo statement Example
        $a = 5;
        while($a < 150){
            if( $a == 40 ){
                $a = $a + 10;
                redo;
                }
                print "a = $a\n";
                }continue{
                    $a = $a * 2;
                    }
                    
        Output:
            a = 5
            a = 10
            a = 20
            a = 50
            a = 100

            