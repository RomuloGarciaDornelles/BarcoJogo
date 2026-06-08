// --- MOVIMENTO EM DIREÇÃO AO JOGADOR ---
x += lengthdir_x(velocidade_tiro, direcao_tiro);
y += lengthdir_y(velocidade_tiro, direcao_tiro);

// --- EFEITO 3D INVERSO (CONFORME DESCE, AUMENTA) ---
// Como ela viaja do fundo para a frente, usamos uma fórmula para ela crescer conforme o Y aumenta
image_xscale = (y / room_height) * 2;
image_yscale = (y / room_height) * 2;

// --- SISTEMA DE CAMADAS DINÂMICO INVERSO (CORRIGIDO) ---
// Mudamos a primeira condição para que, lá no topo (y <= 300), ela use uma camada que você sabe que fica na frente do barco, ou simplesmente comente essa parte para testar!
if (y > 450) {
    layer = layer_get_id("BarcoPrincipal");
	depth = -999999
} else if (y <= 450 && y > 400) {
    layer = layer_get_id("AGUA5");
	depth = -999999
} else if (y <= 400 && y > 350) {
    layer = layer_get_id("AGUA4");
	depth = -999999
} else if (y <= 350 && y > 300) {
    layer = layer_get_id("AGUA3");
} else if (y <= 300) {
    // Se a camada "barcoinimigo" estiver atrás das águas, experimente trocar temporariamente por uma camada alta, como "Instances"
    layer = layer_get_id("Instances"); 
	depth = -999999
}

// Destrói a bala se ela passar do limite inferior da tela para não pesar o jogo
if (y > room_height + 50) {
    instance_destroy();
}