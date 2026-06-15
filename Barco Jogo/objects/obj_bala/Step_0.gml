// --- MOVIMENTO EM DIREÇÃO AO PONTO DO CLIQUE ---
// Move a bala na direção calculada no Create usando as funções de ângulo livre
x += lengthdir_x(velocidade_tiro, direcao_tiro);
y += lengthdir_y(velocidade_tiro, direcao_tiro);

// --- EFEITO 3D DE DISTÂNCIA ---
// Conforme ela se move pelo cenário (baseado no Y), ela encolhe
image_xscale = y / room_height;
image_yscale = y / room_height;

// Garante que a bala fique na frente de tudo
depth = -10000;