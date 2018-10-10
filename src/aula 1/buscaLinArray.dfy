method Find(a: array<int>, key: int) returns (index: int)
    // Se 0 <= index  entao index é melhor q tamanho do array
   ensures 0 <= index ==> index < a.Length && a[index] == key
   // se o index for menor que 0, logo para todo k, se o k esta entre 0 e o tamanho do array,
   // entao todo elemento k no array é diferente do key (ele eh diferente de todo q ta la dentro)
   ensures index < 0 ==> forall k :: 0 <= k < a.Length ==> a[k] != key
{
  index := 0;
  while index < a.Length
    // Garanto que o valor do index está entre 0 e o tamanho do array
    invariant 0 <= index <= a.Length
    //o while soh vai estar correto se todas as posicoes k que eu avaliei antes do index, nenhuma tem o key 
    invariant forall k :: 0 <= k < index ==> a[k] != key
    
  {
    if a[index]==key {return;}
    index := index +1;
  }  
  index := -1;
}

