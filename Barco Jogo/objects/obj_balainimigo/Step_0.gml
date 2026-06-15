// --- MOVIMENTO EM DIREÇÃO AO JOGADOR ---
x += lengthdir_x(velocidade_tiro, direcao_tiro);
y += lengthdir_y(velocidade_tiro, direcao_tiro);

// --- EFEITO 3D INVERSO (CONFORME DESCE, AUMENTA) ---
// Como ela viaja do fundo para a frente, usamos uma fórmula para ela crescer conforme o Y aumenta
image_xscale = (y / room_height) * 2;
image_yscale = (y / room_height) * 2;

// Garante que a bala fique na frente de tudo
depth = -10000;

// Destrói a bala se ela passar do limite inferior da tela para não pesar o jogo
if (y > room_height + 50) {
    instance_destroy();
}