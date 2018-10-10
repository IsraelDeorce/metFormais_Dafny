method M(n: int)
{
  // count up to 'n'; will this program terminate?
  var i := 0;
  while i < n
    decreases n-i // ele fez isso automaticamente, mas aki eu faço na mao
    // decreases *  -> desliga a prova
  {
    i := i + 1;
  }
}