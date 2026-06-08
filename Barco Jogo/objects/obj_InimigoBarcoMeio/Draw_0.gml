// 1. Desenha o próprio barco na tela normalmente
draw_self();

// 2. Ajuste manual de posição para centralizar perfeitamente no navio inteiro
// Somamos +180 ao X para empurrar a barra mais para a direita
var centro_x = x + 120;

// Subimos um pouco mais a barra (mudando de -30 para -70) para ela flutuar acima dos mastros
var topo_y = y - 40;
var fundo_y = y - 25;

// Desenha a barra larga e centralizada por cima do barco
draw_healthbar(centro_x - 150, topo_y, centro_x + 150, fundo_y, vida_atual, c_black, c_red, c_green, 0, true, true);