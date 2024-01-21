import 'dart:math';

class FakeImages {
  static String randomImage({bool isUser = false}) {
    return isUser
        ? "https://randomuser.me/api/portraits/men/${Random().nextInt(10) + 1}.jpg"
        : ""
            "https://picsum.photos/seed/${Random().nextInt(100) + 1}/300/300";
  }
}
