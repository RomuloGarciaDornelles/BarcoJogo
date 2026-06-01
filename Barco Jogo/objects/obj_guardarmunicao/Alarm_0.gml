if (balas_carregadas < limite_balas) {
    balas_carregadas += 1;
}

// Se ainda não encheu o menu, recomeça o relógio para a próxima bala
if (balas_carregadas < limite_balas) {
    alarm[0] = tempo_recarga;
}