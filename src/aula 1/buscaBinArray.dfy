// Especificacao de predicado que retorma V somente se array estiver ordenado
predicate sorted(a:array<int>)
  // O reads diz que o predicado não modifica o array, soh lê (maldito FRAME)
  reads a 
// Não me aplica esse predicado se o Array for igual a null
  requires a != null
{
  // Tira casos relevantes como j=k,
  forall j,k :: 0 <= j < k < a.Length ==> a[j] <= a[k]
}

method Find(a: array<int>, key: int) returns (index: int)
   requires sorted(a);
   ensures 0 <= index ==> index < a.Length && a[index] == key
   ensures index < 0 ==> forall k :: 0 <= k < a.Length ==> a[k] != key
{
}
// Vai aparecer a prova de terminacao na quarta feira

