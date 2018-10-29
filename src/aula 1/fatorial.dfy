function fib(n: nat): nat
{
  if n == 0 then 0 else
  if n == 1 then 1 else
  fib(n - 1) + fib(n - 2)
}

method ComputeFib(n: nat) returns (x: nat)
  ensures x == fib(n)
{
  x := 0;
  var y:=1;
  var i:=0;
  //A invariante é de estado, pois é verdadeira no primeiro estado e continua verdadeira no bloco de laço 
  while i < n
    invariant 0 <= i <= n
    invariant x == fib(i)
    invariant y == fib(i+1)
  {
    //A invariante, junto o caso de saida do laço + a pré condição, gera a pós condição
    //Portanto, saimos de baixo para cima para enchergar qual é a pós condição
    
    //x vai receber o valor de y, e y o de a + y
    x, y := y, x + y;
    i := i + 1;
  }
}

