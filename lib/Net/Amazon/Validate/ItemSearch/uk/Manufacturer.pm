# -*- perl -*-
# !!! DO NOT EDIT !!!
# This file was automatically generated.
package Net::Amazon::Validate::ItemSearch::uk::Manufacturer;

use 5.006;
use strict;
use warnings;

sub new {
    my ($class , %options) = @_;
    my $self = {
        '_default' => 'Software',
        %options,
    };

    push @{$self->{_options}}, 'Apparel';
    push @{$self->{_options}}, 'Baby';
    push @{$self->{_options}}, 'Electronics';
    push @{$self->{_options}}, 'HealthPersonalCare';
    push @{$self->{_options}}, 'HomeGarden';
    push @{$self->{_options}}, 'Kitchen';
    push @{$self->{_options}}, 'OutdoorLiving';
    push @{$self->{_options}}, 'Software';
    push @{$self->{_options}}, 'SoftwareVideoGames';
    push @{$self->{_options}}, 'Toys';
    push @{$self->{_options}}, 'VideoGames';

    bless $self, $class;
}

sub user_or_default {
    my ($self, $user) = @_;
    if (defined $user && length($user) > 0) {    
        return $self->find_match($user);
    } 
    return $self->default();
}

sub default {
    my ($self) = @_;
    return $self->{_default};
}

sub find_match {
    my ($self, $value) = @_;
    for (@{$self->{_options}}) {
        return $_ if lc($_) eq lc($value);
    }
    die "$value is not a valid value for uk::Manufacturer!\n";
}

1;

__END__

=head1 NAME

Net::Amazon::Validate::ItemSearch::uk::Manufacturer - valid search indices for the uk locale and the Manufacturer operation.

=head1 DESCRIPTION

The default value is Software, unless mode is specified.

The list of available values are:

    Apparel
    Baby
    Electronics
    HealthPersonalCare
    HomeGarden
    Kitchen
    OutdoorLiving
    Software
    SoftwareVideoGames
    Toys
    VideoGames

=cut
