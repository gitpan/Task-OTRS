
use strict;
use warnings;

use 5.008006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Almost all of the modules required for installing OTRS Help Desk.",
  "AUTHOR" => "Michiel Beijen <michiel.beijen\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-OTRS",
  "EXE_FILES" => [],
  "LICENSE" => "open_source",
  "NAME" => "Task::OTRS",
  "PREREQ_PM" => {
    "Authen::NTLM" => 0,
    "Authen::SASL" => 0,
    "Compress::Zlib" => 0,
    "Crypt::PasswdMD5" => 0,
    "DBI" => 0,
    "Date::Format" => 0,
    "Digest::HMAC_MD5" => 0,
    "Digest::MD5" => 0,
    "Encode::HanExtra" => 0,
    "GD" => 0,
    "GD::Graph" => 0,
    "GD::Text" => 0,
    "IO::Socket::SSL" => 0,
    "JSON::XS" => 0,
    "MIME::Base64" => 0,
    "Mail::IMAPClient" => 0,
    "Net::DNS" => "0.61",
    "Net::LDAP" => 0,
    "Net::POP3" => 0,
    "Net::SMTP" => 0,
    "PDF::API2" => "0.73",
    "SOAP::Lite" => "0.713",
    "Text::CSV_XS" => 0,
    "XML::Parser" => 0,
    "version" => 0
  },
  "VERSION" => "1.03",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



