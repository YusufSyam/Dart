class Hewan {
  int age = 0;
  int weight = 10;

  Hewan(this.age, this.weight);

  void makan(int addWeight) {
    this.weight += addWeight;
  }

  void setWeight(int weight) {
    this.weight = weight;
  }

  int getWeight() {
    return this.weight;
  }
}
