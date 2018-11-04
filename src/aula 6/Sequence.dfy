// https://rise4fun.com/Dafny/tutorial/Sequences
// Sequency se parece com array, mas não é (é tipo String do java)
// |s| = tamanho da sequencia
// sequencias podem ser usadas sob arrays. EXs (tem no manual):
// a[..] = array conversion to sequence
// a[lo..hi] = subarray conversion to sequence
// a[lo..] = drop
// a[..hi] = take
predicate sorted(s: seq<int>)
{
    forall i,j :: 0 <= i < j < |s| ==> s[i] <= s[j]
}

// Entao por exemplo, podemos verificar se um array está ordenado assim:
// Sorted(a[..])          A sequencia do meu array está ordenado?


// Tudo isso para chegar na regra do replace da lógica de Hoare, só que Dafny:
// s[i := v]   IMPORTANTEEEEEEEEEEE  -> replace index i by v in seq s