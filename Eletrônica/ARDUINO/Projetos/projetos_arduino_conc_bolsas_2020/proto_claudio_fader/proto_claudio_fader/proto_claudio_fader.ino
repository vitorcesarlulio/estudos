
const int ledbranco = 3;
const int ledverde = 5;
const int ledamarelo = 6;
const int ledvermelho = 9;
const int led1azul = 10;
const int led11 = 11;


//Controladores do efeito de fader
int brilho = 0;
int fader = 5;
boolean acende = true;
boolean apaga = false;
 
//Método setup, executado uma vez ao ligar o Arduino.
void setup() {
  
  //Definindo o pino led como de saída.
  pinMode(ledbranco,OUTPUT);
  pinMode(ledverde,OUTPUT);
  pinMode(ledamarelo,OUTPUT);
  pinMode(ledvermelho,OUTPUT);
  pinMode(led1azul,OUTPUT);
  pinMode(led11,OUTPUT);
  
}
 
//Método loop, executado enquanto o Arduino estiver ligado.
void loop() {  
  analogWrite(ledbranco,brilho); 
  analogWrite(ledverde,brilho);
  analogWrite(ledamarelo,brilho);
  analogWrite(ledvermelho,brilho);
  analogWrite(led1azul,brilho);
   
  //Processo de acendimento do led usando o efeito fader.
  if (acende == true) {
    if (brilho < 255) {
      brilho = brilho + fader; //aumentando o brilho do led.
    } else {     
      acende = false;
      apaga = true;
    }
  }
 
  //Processo para apagar o led com efeito fader.  
  if (apaga == true) {
    if (brilho > 0) {
      brilho = brilho - fader; // diminuindo o brilho do led.
    } else {
      acende = true;
      apaga = false;
    }
  }
   
  delay(20);
}
