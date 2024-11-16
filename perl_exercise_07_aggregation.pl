
use strict;
use warnings;

# Clase Libro
package Libro;

sub new {
    my ($class, $titulo) = @_;
    my $self = {
        titulo => $titulo
    };
    bless $self, $class;
    return $self;
}

sub get_titulo {
    my $self = shift;
    return $self->{titulo};
}

# Clase Biblioteca (Agregación)
package Biblioteca;

sub new {
    my ($class, $nombre) = @_;
    my $self = {
        nombre => $nombre,
        libros => []  # Lista de libros
    };
    bless $self, $class;
    return $self;
}

sub agregar_libro {
    my ($self, $libro) = @_;
    push @{ $self->{libros} }, $libro;
}

sub mostrar_libros {
    my $self = shift;
    print "Libros en la biblioteca " . $self->{nombre} . ":\n";
    foreach my $libro (@{ $self->{libros} }) {
        print "- " . $libro->get_titulo() . "\n";
    }
}

# Usar agregación
package main;

my $biblioteca = Biblioteca->new("Biblioteca Central");

my $libro1 = Libro->new("El Quijote");
my $libro2 = Libro->new("Cien Años de Soledad");

$biblioteca->agregar_libro($libro1);
$biblioteca->agregar_libro($libro2);

$biblioteca->mostrar_libros();
