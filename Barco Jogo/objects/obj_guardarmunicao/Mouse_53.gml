if (balas_carregadas > 0) {
    balas_carregadas -= 1; // Gasta uma bala do menu
    
    // Cria a bola de canhão na camada do jogador
    var tiro = instance_create_layer(obj_BarcoMeio.x + 50, obj_BarcoMeio.y - 20, "BarcoPrincipal", obj_bala);
    
    // Passa o elemento atual para a bala
    tiro.tipo_elemento = global.elemento_atual;
    
    // Se o menu estava cheio, o relógio volta a funcionar
    if (alarm[0] == -1) {
        alarm[0] = tempo_recarga; 
    }
}