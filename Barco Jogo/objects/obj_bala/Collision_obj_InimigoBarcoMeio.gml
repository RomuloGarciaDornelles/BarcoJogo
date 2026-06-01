// "other" significa "o outro objeto envolvido na colisão" (ou seja, o inimigo)
other.vida_atual -= 20; // Tira 20 de vida do inimigo a cada acerto

// Destrói a bola de canhão para ela não atravessar o barco direto
instance_destroy();

// Velocidade da bala (mude o número para ser mais rápida ou mais lenta)
speed = 12; 

// Direção do tiro:
// Se o seu jogo é de lado (Jogador na esquerda, Inimigo na direita):
direction = 0; 

// SE o seu jogo for com o jogador embaixo e o inimigo no fundo da tela, 
// apague a linha de cima e use esta:
// direction = 90;