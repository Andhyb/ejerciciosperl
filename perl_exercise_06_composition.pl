
use strict;
use warnings;

# Clase Dirección
package Direccion;

sub new {
    my ($class, $calle, $ciudad) = @_;
    my $self = {
        calle => $calle,
        ciudad => $ciudad
    };
    bless $self, $class;
    return $self;
}

sub mostrar_direccion {
    my $self = shift;
    print "Calle: " . $self->{calle} . ", Ciudad: " . $self->{ciudad} . "\n";
}

# Clase Persona con Composición
package Persona;

sub new {
    my ($class, $nombre, $direccion) = @_;
    my $self = {
        nombre => $nombre,
        direccion => $direccion  # Objeto Dirección
    };
    bless $self, $class;
    return $self;
}

sub mostrar_info {
    my $self = shift;
    print "Nombre: " . $self->{nombre} . "\n";
    print "Dirección: ";
    $self->{direccion}->mostrar_direccion();
}

# Usar composición
package main;

my $direccion = Direccion->new("Av. Central 123", "Lima");
my $persona = Persona->new("Carlos", $direccion);

$persona->mostrar_info();
