method ComparaTroca(a:array<int>,p:int,q:int)
modifies a;
requires 0<=p<=q<a.Length;
ensures a[p]<=a[q];
// Estou garantindo que o que estava nas posições é igual ao que estava antes ex: ComparaTroca(a,0,1)
// Ou então as duas trocaram de posição ex: ComparaTroca(a,1,2)
ensures (a[p]==old(a[p]) && a[q]==old(a[q])) || (a[p]==old(a[q]) && a[q]==old(a[p]));
// Agora faço um para cada para garantir que os outros (que não são p ou q) não foram alterados
ensures forall i :: 0<=i<a.Length && i!=p && i!=q ==> a[i]==old(a[i])
{
  if (a[p] > a[q])
  {
    a[p], a[q] := a[q], a[p];
  }
}

method Main() 
{
  var a := new int[8];
  a[0] := 3;
  a[1] := 10;
  a[2] := 1;
  a[3] := 0;
  a[4] := 3;
  a[5] := 2;
  a[6] := 0;
  a[7] := 0;
  ComparaTroca(a,0,1);
  assert forall i :: 0<=i<a.Length ==> a[i]==old(a[i]);
}
