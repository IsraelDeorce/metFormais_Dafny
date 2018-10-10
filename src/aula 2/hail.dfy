// Conejctura de Collatz (sacanagem matemática) -> não encontra a variante
method hail(N: nat)
   decreases *
{
   var n := N;
   while 1 < n
      decreases *
   { 
      n := if n % 2 == 0 then n / 2 else n * 3 + 1;
   }
}