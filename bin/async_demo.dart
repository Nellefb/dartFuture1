// Neste exercício, você irá executar uma função assíncrona que simula o login de um usuário
// e a consulta de seu saldo bancário

// 1 execute o método de login informando o e-mail e a senha
// 2 caso o email e senha sejam válidos, consulte o saldo do usuário informando o token e printando o resultado no console
// 3 caso o email ou senha sejam inválidos, printe a mensagem de erro. 


import 'dart:ffi';

void main(){
  consulta();
  print("Fim");
}

//para pegar o token direto, deve clocar await e async
void consulta() async{
  try{
    String token = await login('email@email.com', '123');
  num saldo = await consultarSaldo(token);
  print(saldo);
  } catch(error){
    print(error);
  }
}


void main2() {
  Future<String> futureToken = login('email@email.com', '123');
  futureToken.then((String token){
    //Concluido com sucesso
    //consultarSaldo(token);
    //não da pa printar o consultar saldo pois ele retrna future, precisa do then no value
    consultarSaldo(token).then((num saldo){
      print(saldo);
    });
  }).catchError((error){
    //Concluido com erro
    print(error);
  });

//main executa antes da future, depois ele printa o dado da future





  //Future<void> future = login('email@email.com', '123').then((token){
  // Future<void> future = login('email@email', '123').then((token){
  //   consultarSaldo(token).then((saldo) {
  //     print(saldo);
  //   });
  // }).catchError((value){
  //   print(value);
  // });
  
}


Future<String> login(String email, String senha) async {
  // Simulando um atraso de download de 2 segundos
  await Future.delayed(Duration(seconds: 2));
  
  if(email != 'email@email.com' || senha != '123') {
    throw Exception('email ou senha inválida');
  }

  // Simulando informações de token de acesso do usuário
  final token = 'bas89e8ahdkkdassd';

  return token;
}

Future<num> consultarSaldo(String token) async {
     // Simulando um atraso de download de 3 segundos
  await Future.delayed(Duration(seconds: 3));
  
  return 2000;
}


//https://www.canva.com/design/DAFrFIrk-Lc/n_v7URQguV59lPi1T-Vbhg/edit