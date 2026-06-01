// 1. Desenha o próprio barco na tela
draw_self();

// 2. Desenha a barra de vida um pouco acima do barco
// x - 50 e x + 50 controlam a largura da barra. 
// y - 80 e y - 70 controlam a altura onde ela vai ficar.
draw_healthbar(x - 50, y - 80, x + 50, y - 70, vida_atual, c_black, c_red, c_green, 0, true, true);