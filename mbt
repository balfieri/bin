#!/usr/bin/perl
#
use strict;
use warnings;

my $dir       = `cat ~/.default_tree`;
my $recipient = `cat ~/.default_recipient`;
my $backups   = `cat ~/.default_backups_dir`;

# common code to move somewhere else
#
chdir( $ENV{HOME} );
system( "rm -fr ${dir}/*/*.out ${dir}/*/*.o ${dir}/*/*.exe ${dir}/*/*~ ${dir}/*/*.raw ${dir}/*/*.eps ${dir}/*/*.tmp.sp ${dir}/*/*.v ${dir}/*/*.lxt ${dir}/userdoc" );
my $date = `date +%Y_%m_%d_%H_%M_%S`;  chomp $date;
my $file = "${recipient}.${date}.tar.gz";
my $rm_dir = shift @ARGV || 0;
-d $dir or die "ERROR: $dir does not exist\n";
system( "mv ${dir}/.git .git.save" ) == 0 or die "ERROR: mv of .git failed\n";
system( "tar cvfz ${file} $dir" ) == 0 or die "ERROR: tar failed\n";
system( "mv .git.save ${dir}/.git" ) == 0 or die "ERROR: mv back of .git failed\n";
print "Encrypting $file...\n";
system( "gpg --encrypt --recipient ${recipient} ${file}" ) == 0 or die "ERROR: encryption failed\n";
my $gpg_file = $file . ".gpg";
print "Moving $gpg_file to ${backups}/${gpg_file}...\n";
system( "mv ${gpg_file} ${backups}" ) == 0 or die "ERROR: mv failed\n";
print "Deleting ${file}...\n";
system( "rm -f $file" ) == 0 or die "ERROR: rm of $file failed\n";
if ( $rm_dir ) {
    print "Deleting ${dir}...\n";
    system( "rm -fr ${dir}" ) == 0 or die "ERROR: could not rm ${dir}\n";
}
