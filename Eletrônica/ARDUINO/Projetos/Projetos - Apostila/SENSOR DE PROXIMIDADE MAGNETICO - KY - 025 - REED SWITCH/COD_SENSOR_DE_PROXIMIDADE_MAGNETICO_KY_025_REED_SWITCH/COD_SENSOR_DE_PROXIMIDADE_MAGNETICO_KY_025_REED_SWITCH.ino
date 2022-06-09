/* !-- VARIAVEIS --! */
int led = 13;     // defina o pino do LED
int digitalPin = 3; // KY-025 interface digital
int analogPin = A0; // KY-025 interface analógica
int digitalVal;   // leituras digital
int analogVal;    // leituras analógicas


/* !-- INICIO DO SETUP (SO PASSA AQUI 1 VEZ) --! */
void setup()
{
  pinMode(led, OUTPUT);
  pinMode(digitalPin, INPUT);
  //pinMode(analogPin, OUTPUT);
  Serial.begin(9600);
}


/* !-- INICIO DO LOOP (REPETIÇÃO) --! */
void loop()
{
  // Leia a interface digital
  digitalVal = digitalRead(digitalPin);
  if (digitalVal == HIGH) // se for detectado campo magnético
  {
    digitalWrite(led, HIGH); // acender o LED do Arduino
  }
  else
  {
    digitalWrite(led, LOW); // apague o LED do Arduino
  }
  // Leia a interface analógica
  analogVal = analogRead(analogPin);
  Serial.println(analogVal); // imprimir valor analógico em série

  delay(100);
} //FIM
