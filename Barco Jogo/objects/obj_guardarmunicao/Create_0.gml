// Trava a animação do sprite para ele não ficar piscando sozinho
image_speed = 0; 

balas_carregadas = 0;
limite_balas = 3;     // Máximo de balas que cabem no menu
tempo_recarga = 120;   // 60 frames = 1 segundo para carregar cada bala

alarm[0] = tempo_recarga; // Começa a contar o tempo de recarga