class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Discover Products',
      image: 'assets/onboarding.webp',
      discription:
          "Find exclusive items curated just for you. Explore a wide range of products with ease!"),
  UnbordingContent(
      title: 'Exclusive Discounts',
      image: 'assets/girl-announcing-shopping-super-sale.png',
      discription:
          "Access special discounts every day. Save big while shopping for what you love!"),
  UnbordingContent(
      title: "Convenient Shopping Experience 💜",
      image: 'assets/women-doing-shopping-with-trolley-with-market.png',
      discription: "Press on get started! and Start Shopping"),
];
