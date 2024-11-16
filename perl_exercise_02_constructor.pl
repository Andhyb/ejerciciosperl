
use strict;
use warnings;

#definicion de una clase

package Perro;

# Constructor para inicializar los atributos de la clase
sub new {
    my ($class, $nombre, $raza) = @_;
    my $self = {
        nombre => $nombre,
        raza   => $raza,
    };
    bless $self, $class;
    return $self;
}

package main;

my $perro = Perro->new("Perro1", "salchicha");
print "Se creó un objeto de la clase Perro con nombre: " . $perro->{nombre} . " y raza: " . $perro->{raza} . "\n";
