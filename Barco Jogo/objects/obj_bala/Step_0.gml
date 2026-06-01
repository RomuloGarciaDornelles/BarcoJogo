// --- MOVIMENTO EM DIREÇÃO AO PONTO DO CLIQUE ---
// Move a bala na direção calculada no Create usando as funções de ângulo livre
x += lengthdir_x(velocidade_tiro, direcao_tiro);
y += lengthdir_y(velocidade_tiro, direcao_tiro);

// --- EFEITO 3D DE DISTÂNCIA ---
// Conforme ela se move pelo cenário (baseado no Y), ela encolhe
image_xscale = y / room_height;
image_yscale = y / room_height;

// --- SISTEMA DE CAMADAS DINÂMICO ---
// Faz a bala passar por trás das ondas baseado na altura (Y)
if (y > 450) {
    layer = layer_get_id("BarcoPrincipal");
} else if (y <= 450 && y > 400) {
    layer = layer_get_id("AGUA5");
} else if (y <= 400 && y > 350) {
    layer = layer_get_id("AGUA4");
} else if (y <= 350 && y > 300) {
    layer = layer_get_id("AGUA3");
} else if (y <= 300) {
    layer = layer_get_id("barcoinimigo");
}