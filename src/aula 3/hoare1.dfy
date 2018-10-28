// Aula dia 22/10/2018 - Professor demonstrando Hoare no Dafny

// Esse código é equivalente a: (| x<3 |)  x:= x+1  (| x<5 |)
method SomaUm(x:int) returns (y:int)
    requires x < 3
    ensures y < 5
{
    y := x + 1;
}
method Main() {
    var x := 1;
    var y := SomaUm(x);
}