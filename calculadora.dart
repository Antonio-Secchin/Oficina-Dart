import 'dart:io';

num add(num num1, num num2){
  return num1 + num2;
}

num less(num num1,num num2){
  return num1 - num2;
}

num multiply(num num1, num num2){
  return num1 * num2;
}

num divide(num num1, num num2){
  return num1 / num2;
}

void main() {
  //bloco para pegar o primeiro valor da calculadora
  print("entre com um numero: ");
  var val = stdin.readLineSync();
  num n1 = num.parse(val ?? '0');
  //define a variavel da condicao do loop como true
  bool whileON = true;

  while(whileON){
	//bloco para saber qual a operacao a ser realizada ou encerrar o programa quando passado C
	print("entre com a sua operacao ou C para encerrar o programa, ou reset para zerar o buffer:");
	val = stdin.readLineSync();
	String operador = val ?? '';

    if(val == 'reset'){
        print("digite o primeiro numero: ");
        val = stdin.readLineSync();
        n1 = num.parse(val ?? '0');
        continue;
    }

	if(val == 'C'){
  	whileON = false;
  	//print(n1);
  	return;
	}

	//pega o segundo numero a ser usado nas operacoes
	print("entre com outro numero:");
	val = stdin.readLineSync();
	num n2 = num.parse(val ?? '0');

	//faz a soma
	if(operador == '+'){
  	n1 = add(n1,n2);
  	print(n1);
	}
	//faz a subtracao
	if(operador == '-'){
  	n1 = less(n1,n2);
  	print(n1);
	}
	//faz a multiplicacao
	if(operador == '*'){
  	n1 = multiply(n1,n2);
  	print(n1);
	}
	//faz a divisao
	if(operador == '/'){
  	n1 = divide(n1,n2);
  	print(n1);
	}
  }
}



