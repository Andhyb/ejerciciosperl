
use strict;
use warnings;

# Clase Empleado
package Empleado;

sub new {
    my ($class, $nombre) = @_;
    my $self = { nombre => $nombre };
    bless $self, $class;
    return $self;
}

sub get_nombre {
    my $self = shift;
    return $self->{nombre};
}

# Clase Departamento (Asociación)
package Departamento;

sub new {
    my ($class, $nombre) = @_;
    my $self = { nombre => $nombre, empleados => [] };
    bless $self, $class;
    return $self;
}

sub agregar_empleado {
    my ($self, $empleado) = @_;
    push @{ $self->{empleados} }, $empleado;
}

sub mostrar_empleados {
    my $self = shift;
    print "Empleados en el departamento " . $self->{nombre} . ":\n";
    foreach my $empleado (@{ $self->{empleados} }) {
        print "- " . $empleado->get_nombre() . "\n";
    }
}

# Usar asociación
package main;

my $dep = Departamento->new("Recursos Humanos");
my $empleado1 = Empleado->new("Carlos");
my $empleado2 = Empleado->new("Ana");

$dep->agregar_empleado($empleado1);
$dep->agregar_empleado($empleado2);
$dep->mostrar_empleados();
