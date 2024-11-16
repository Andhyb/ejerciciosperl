
use strict;
use warnings;

# Clase base
package Persona;

sub new {
    my ($class, $nombre) = @_;
    my $self = { nombre => $nombre };
    bless $self, $class;
    return $self;
}

sub saludar {
    my $self = shift;
    print "Hola, soy " . $self->{nombre} . "\n";
}

# Clase derivada
package Empleado;
our @ISA = ('Persona');  # Herencia simple

sub new {
    my ($class, $nombre, $puesto) = @_;
    my $self = $class->SUPER::new($nombre);
    $self->{puesto} = $puesto;
    bless $self, $class;
    return $self;
}

sub mostrar_puesto {
    my $self = shift;
    print "Mi puesto es: " . $self->{puesto} . "\n";
}

# Usar herencia
package main;

my $empleado = Empleado->new("Carlos", "Gerente");
$empleado->saludar();
$empleado->mostrar_puesto();
