// --- EVENTO DE DISPARO DO INIMIGO (FORÇANDO PROFUNDIDADE) ---

// Criamos a bala usando instance_create_depth em vez de layer.
// Usamos "depth - 10" para garantir que a bala fique visualmente NA FRENTE do barco inimigo
//var tiro_inimigo = instance_create_depth(x, y, depth - 10, obj_balainimigo);
var tiro_inimigo = instance_create_layer(x, y, "barcoinimigo", obj_balainimigo);
tiro_inimigo.depth = depth-900000

// --- DIREÇÃO DO TIRO (MIRA FIXA NO SEU BARCO) ---
tiro_inimigo.direcao_tiro = point_direction(880, 180, 680, 600);

// Reinicia o alarme com o tempo de 160 frames
alarm[1] = tempo_ataque;