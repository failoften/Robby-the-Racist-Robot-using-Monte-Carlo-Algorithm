// An algorithm for picking a random number based on monte carlo method
// Here probability is determined by formula y = x
public float MonteCarlo(float theNumber) {

  // Have we found one yet
  boolean foundRandom = false;

  int hack = 0;  // let's count just so we don't get stuck in an infinite loop by accident

  while (!foundRandom && hack < 10000) {

    // Pick two random numbers
    float randomNum1 = (float) random(theNumber);
    float randomNum2 = (float) random(theNumber);

    float y = randomNum1*randomNum1;  // y = x*x (change for different results)       // r1 * r1 to make r1 a postitive number

    // If randomNum2 is valid, set foundRandom to true and return random number to draw loop
    if (randomNum2 < y) {
      foundRandom = true;
      return randomNum1;
    }
    hack++;
  }

  // Shiffman's hacky hack
  return 0;
}
