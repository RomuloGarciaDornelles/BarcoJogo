// --- SISTEMA DE VIDA CENTRALIZADA ---

// Se a bala bater no barco da frente ou de trás, ela manda o dano para o objeto do Meio
if (other.object_index == obj_InimigoBarcoFrente || other.object_index == obj_InimigoBarcoTras) {
    if (instance_exists(obj_InimigoBarcoMeio)) {
        obj_InimigoBarcoMeio.vida_atual -= 20;
    }
} else {
    // Se bater direto no meio, tira a vida dele normalmente
    other.vida_atual -= 20;
}

// Destrói a bola de canhão
instance_destroy();