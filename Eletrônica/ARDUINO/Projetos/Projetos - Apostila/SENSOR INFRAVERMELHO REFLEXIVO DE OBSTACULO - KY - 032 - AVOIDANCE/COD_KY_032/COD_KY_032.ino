/* !-- VARIAVEIS --! */
const int pinoOut = 8; //PINO DIGITAL UTILIZADO PELO MÓDULO


/* !-- INICIO DO SETUP (SO PASSA AQUI 1 VEZ) --! */
void setup() {
  pinMode(pinoOut, INPUT); //DEFINE O PINO COMO ENTRADA
  Serial.begin (9600);      //INICIALIZA A SERIAL
}


/* !-- INICIO DO LOOP (REPETIÇÃO) --! */
void loop() {
  if (digitalRead(pinoOut) == LOW) {            //SE LEITURA DO PINO FOR IGUAL A LOW, FAZ
    Serial.println ("Objeto detectado");        //IMPRIME O TEXTO NO MONITOR SERIAL
  } else {                       //SENÃO, FAZ
    Serial.println ("Nenhum objeto detectado"); //IMPRIME O TEXTO NO MONITOR SERIAL
  }
}
