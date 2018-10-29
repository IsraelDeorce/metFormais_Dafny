// Recebe um array, compara duas posições e decide se troca ou não
method ComparaTroca(a:array<int>, p:int, q:int) {
    requires 0<=p<=q<a.Length;
    // tem que dizer que o array pode ser modificado, para o Dafny aceitar.
    modifies a;
    // Como quero ordenador, devo escolher uma ordem (crescente)
    ensures a[p]<=a[q];
    // Vou usar varios ensures no lugar de && para ficar mais bonito
    ensures ??????? tem que fazer o coisa que o professor botou no quadro (OLHAR NO MANUAL)
}