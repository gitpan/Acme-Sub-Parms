use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	     => 'Acme::Sub::Parms',
    'VERSION_FROM'   => 'lib/Acme/Sub/Parms.pm',
    'linkext'        => { LINKTYPE=>'' },	# no link needed
    'dist'           => {'COMPRESS'=>'gzip -9f', 'SUFFIX' => 'gz',
	                 'ZIP'=>'/usr/bin/zip','ZIPFLAGS'=>'-rl'},
    'PREREQ_PM'      => {
                            'Carp'               => 0,
                            'Filter::Util::Call' => '1.06',
    }, 
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Acme/Sub/Parms.pod', # retrieve abstract from module
       AUTHOR         => 'Benjamin Franz <snowhare@cpan.org>') : ()),

       ($] >= 5.800 ?     ## Add these new keywords supported since 5.8
             (NO_META      => 1) : ()),

       PL_FILES       => {},

);
