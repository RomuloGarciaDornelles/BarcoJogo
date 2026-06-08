// --- VERIFICAÇÃO DE MORTE COM ATRASO ---
if (vida_atual <= 0) {
    // 1. Destrói as partes do barco do jogador se elas existirem na tela
    if (instance_exists(obj_BarcoFrente)) {
        instance_destroy(obj_BarcoFrente);
    }
    if (instance_exists(obj_BarcoTras)) {
        instance_destroy(obj_BarcoTras);
    }
    
    // 2. Dispara o Alarme 0 para esperar meio segundo (30 frames) antes da mensagem
    if (alarm[0] == -1) {
        alarm[0] = 30; 
    }
    
    // 3. Torna o barco invisível e desativa colisões enquanto espera o alarme
    visible = false;
    x = -9999; // Joga para fora da tela temporariamente para não tomar mais tiros
}