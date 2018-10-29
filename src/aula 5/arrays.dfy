// Primeiro um exemplo só lendo um array, ( depois um com atribuição )
//Ensures é a pré condição

// Para todo j entra 0 e o tramanho do array, se isso for verdadeiro, eu quero que o que eu
// retorne como maior elemento seja realmente o maior elemento. 
method findMax(a: array<int>) returns (m:int)
    ensures forall j:int :: 0<=j<a.Length ==> m>=a[j];
    // O próximo ensures é para garantir que para array tamanho > 0.
    // Existe posição j no array, que é maior que todos os demais
    ensures a.Length > 0 ==> (exists j:int :: 0<=j<a.Length && m==a[j]);
    ensures a.Length == 0 ==> m==0;
{
  if(a.Length == 0){
    m := 0;
  } else {
    m := a[0];
    var i := 1;
    // A invariante tem que ser verdadeira antes durante e após????
    while(i < a.Length) 
      invariant 1<=i<=a.Length
      // o m vai tendo sempre o maior valor até o momento
      && forall j:int :: 0<=j<i ==> m>=a[j]
      && exists j:int :: 0<=j<i && m==a[j]
    {
       if(a[i] > m) {
           m := a[i];
       }
       i := i + 1;
    }
  }
}