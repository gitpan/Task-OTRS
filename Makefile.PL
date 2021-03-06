
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.029.
use strict;
use warnings;

use 5.010000;

use ExtUtils::MakeMaker;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Almost all of the modules required for installing OTRS Help Desk.",
  "AUTHOR" => "Michiel Beijen <michiel.beijen\@gmail.com>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Task-OTRS",
  "EXE_FILES" => [],
  "LICENSE" => "open_source",
  "MIN_PERL_VERSION" => "5.010000",
  "NAME" => "Task::OTRS",
  "PREREQ_PM" => {
    "Archive::Zip" => 0,
    "Authen::NTLM" => 0,
    "Compress::Zlib" => 0,
    "Crypt::Eksblowfish::Bcrypt" => 0,
    "DBI" => 0,
    "Date::Format" => 0,
    "Digest::HMAC_MD5" => 0,
    "Encode::HanExtra" => 0,
    "GD" => 0,
    "GD::Graph" => 0,
    "GD::Text" => 0,
    "IO::Socket::SSL" => 0,
    "JSON::XS" => 0,
    "Mail::IMAPClient" => 0,
    "Net::DNS" => "0.61",
    "Net::LDAP" => 0,
    "PDF::API2" => "0.73",
    "SOAP::Lite" => "0.713",
    "Template" => 0,
    "Text::CSV_XS" => 0,
    "XML::Parser" => 0,
    "YAML::XS" => 0,
    "version" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => 0
  },
  "VERSION" => "1.10",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Archive::Zip" => 0,
  "Authen::NTLM" => 0,
  "Compress::Zlib" => 0,
  "Crypt::Eksblowfish::Bcrypt" => 0,
  "DBI" => 0,
  "Date::Format" => 0,
  "Digest::HMAC_MD5" => 0,
  "Encode::HanExtra" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "GD" => 0,
  "GD::Graph" => 0,
  "GD::Text" => 0,
  "IO::Handle" => 0,
  "IO::Socket::SSL" => 0,
  "IPC::Open3" => 0,
  "JSON::XS" => 0,
  "Mail::IMAPClient" => 0,
  "Net::DNS" => "0.61",
  "Net::LDAP" => 0,
  "PDF::API2" => "0.73",
  "SOAP::Lite" => "0.713",
  "Template" => 0,
  "Test::More" => 0,
  "Text::CSV_XS" => 0,
  "XML::Parser" => 0,
  "YAML::XS" => 0,
  "version" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



