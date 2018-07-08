
int values[4];

void setup()
{
  Serial.begin(9600);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
  pinMode(A3, INPUT);
}

void loop()
{
  int temp = analogRead(A0);
  int data = analogRead(A1);
  int po = analogRead(A2);
  int ec = analogRead(A3);
  Serial.print(temp);
  Serial.print(",");
  Serial.print(data);
  Serial.print(",");
  Serial.print(po);
  Serial.print(",");
  Serial.println(ec);
  delay(1000);
}
