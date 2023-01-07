// Adding a class mixin

abstract class SnickersOriginal {
  bool hasHazelnut = true;
  bool hasRice = false;
  bool hasAlmond = false;
}

abstract class SnickersCrisp {
  bool hasHazelnut = true;
  bool hasRice = true;
  bool hasAlmond = false;
}

class ChocolateBar {
  bool hasChocolate = true;
}

class CandyBar extends ChocolateBar with SnickersOriginal {
  List<String> ingredients = [];
  CandyBar() {
    if (hasChocolate) {
      ingredients.add('Chocolate');
    }
    if (hasHazelnut) {
      ingredients.add('Hazelnut');
    }
    if (hasRice) {
      ingredients.add('Rice');
    }
    if (hasAlmond) {
      ingredients.add('Almonds');
    }
  }

  List<String> getIngredients() {
    return ingredients;
  }
}

void main(List<String> args) {
  var snickersOriginal = CandyBar();
  print('Ingredients : ');
  snickersOriginal.getIngredients().forEach(print);
}
