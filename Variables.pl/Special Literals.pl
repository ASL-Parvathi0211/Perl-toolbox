# Special Literals
    So far you must have a feeling about string scalars and its concatenation and interpolation opration. So let me tell you about three special literals __FILE__, __LINE__, and __PACKAGE__ represent the current filename, line number, and package name at that point in your program.
    They may be used only as separate tokens and will not be interpolated into strings. Check the below example −
        #!/usr/bin/perl
        
        print "File name ". __FILE__ . "\n";
        print "Line Number " . __LINE__ ."\n";
        print "Package " . __PACKAGE__ ."\n";
        
        # they can not be interpolated
        print "__FILE__ __LINE__ __PACKAGE__\n";
        
    This will produce the following result –
        File name hello.pl
        Line Number 4
        Package main
        __FILE__ __LINE__ __PACKAGE__
