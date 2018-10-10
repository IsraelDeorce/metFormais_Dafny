// Ordem Lexicografica. (N, <) não somente funciona, ou seja, não pode-se definir um dominio 
// com um valor só, pois o dominio são dois valores, tanto o m quanto o n. 
// Portanto, a invariante é sobre um par de termos. Oberserve:
// (N x N, <) , logo decreses m, n
// Em Ackerman, o N vai diminuindo ate chegar no M, então m diminui, e o programa termina quando M é 0
function Ack(m: nat, n:nat): nat
decreases m, n
{
    if m == 0 then n + 1
    else if n == 0 then Ack(m - 1, 1)
    else Ack(m - 1, Ack(m, n - 1))
}