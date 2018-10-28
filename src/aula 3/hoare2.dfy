// Aula dia 22/10/2018 - Professor demonstrando Hoare no Dafny
// Não da para fazer isso com funções, pois dados em funções no Dafny são imutáveis
// Esse código é equivalente a: 
// provar (| x>2 ^ y>3 |) x:=x+1 ; y:=y+x (| y>6 |)
method Main() {
    var x := 3;
    var y := 7;
    assert x > 2 && y > 3;
    x := x + 1;
    y := y + x;
    assert y > 6;
}