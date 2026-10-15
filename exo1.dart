void main() {
  try {
    print(12 ~/ 0);
  } catch (e) {
    print("Division impossible");
  }
}