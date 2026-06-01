if (vida_atual <= 0) {
    // Aqui o inimigo foi derrotado!
    
    // Deleta o barco inimigo da tela
    instance_destroy();
    
    // Avança para a próxima sala (que pode ser a sala de upgrades)
    // Se vocês criarem uma sala chamada "rm_upgrade", o código seria:
    // room_goto(rm_upgrade);
    
    // Por enquanto, vamos só dar um aviso na tela de que ele morreu
    show_message("Navio derrotado! Hora do Tesouro.");
}