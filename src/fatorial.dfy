function fib(n: nat): nat
{
  if n == 0 then 0 else
  if n == 1 then 1 else
  fib(n - 1) + fib(n - 2)
}

method ComputeFib(n:nat) returns (b:nat)
  ensures b == fib(n)
{
  if n==0 {return 0;}
  var i:=1;
  var a:=0;
  b:=1; 
  //A invariante é de estado, pois é verdadeira no primeiro estado e continua verdadeira no bloco de laço 
  while i<n
    invariant 0 < i <= n
    invariant a == fib(i-1)
    invariant b == fib(i)
  {
    //A invariante, junto o caso de saida do laço + a pré condição, gera a pós condição
    //Portanto, saimos de baixo para cima para enchergar qual é a pós condição
    
    //A vai receber o valor de b, e b o de a+b
    a, b := b, a+b;
    i:=i+1;
  }
}

