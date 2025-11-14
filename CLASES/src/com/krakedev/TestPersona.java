package com.krakedev;
/* 
 * comentario varias lineas
 * */
public class TestPersona {

	public static void main(String[] args) {
		// ESTO ES UN COMENTAEIO
		int a; // int es un tupo de dato--declaracion de variable
		Persona p; //se declara p como el tipo de dato Persona
		p=new Persona();// instanciar--permite el uso de la variable en la virtual java machine
		Persona p2=new Persona(); // se declara e instancia a la vez
		//3. modificar atributos p
		p.edad=10;
		p.estatura=1.50;
		p.nombre="Luisa";
		
		//3. modificar atributos P2
		p2.nombre="Marcelo";
		p2.estatura=1.70;
		p2.edad=10;
		//3. acceso a los atributos
	System.out.println("nombre: "+p.nombre);
	System.out.println("edad: "+p.edad);
	System.out.println("estatura: "+p.estatura);
	System.out.println("----------------------");
	//3. acceso a los atributos
	System.out.println("nombre: "+p2.nombre);
	System.out.println("edad: "+p2.edad);
	System.out.println("estatura: "+p2.estatura);
	// 4. modificar atributos
	p.nombre="marco";
	p.edad=20;
	p.estatura=2.00;
	// 5. accedo a los nuevos atributos
	System.out.println("----------------------");
	System.out.println("nombre: "+p.nombre);
	System.out.println("edad: "+p.edad);
	System.out.println("estatura: "+p.estatura);
	}

}
