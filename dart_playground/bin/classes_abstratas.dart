void main(List<String> args) {
  execPrint(A());
  execPrint(B());
  execPrint(C());
}

void execPrint(IPrint print) {
  print.printName();
}

abstract class IPrint {
  void printName();
}

class A implements IPrint {
  @override
  void printName() {
    print("Name A");
  }
}

class B implements IPrint {
  @override
  void printName() {
    print("Name B");
  }
}

class C implements IPrint {
  @override
  void printName() {
    print("Name C");
  }
}
