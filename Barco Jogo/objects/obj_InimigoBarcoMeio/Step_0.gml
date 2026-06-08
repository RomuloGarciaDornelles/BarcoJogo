// Se a vida do navio chegar a 0, destrói todas as partes dele
if (vida_atual <= 0) {
    // Destrói a parte da frente que estiver na tela
    if (instance_exists(obj_InimigoBarcoFrente)) {
        instance_destroy(obj_InimigoBarcoFrente);
    }
    
    // Destrói a parte de trás que estiver na tela
    if (instance_exists(obj_InimigoBarcoTras)) {
        instance_destroy(obj_InimigoBarcoTras);
    }
    
    // Destrói a si mesmo (o meio)
    instance_destroy();
}