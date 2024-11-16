
use strict;
use warnings;

# Clase con Getters y Setters
package Persona;

sub new {
    my ($class, $nombre, $edad) = @_;
    my $self = {
        nombre => $nombre,
        edad   => $edad,
    };
    bless $self, $class;
    return $self;
}

# Getter y Setter para 'nombre'
sub get_nombre {
    my $self = shift;
    return $self->{nombre};
}

sub set_nombre {
    my ($self, $nombre) = @_;
    $self->{nombre} = $nombre;
}

# Usar los getters y setters
package main;

my $persona = Persona->new("Juan", 25);

# Usando getter
print "Nombre inicial: " . $persona->get_nombre() . "\n";

# Usando setter
$persona->set_nombre("Carlos");
print "Nombre actualizado: " . $persona->get_nombre() . "\n";
