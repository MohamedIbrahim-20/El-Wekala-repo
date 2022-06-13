class Data {
  final int id;
  final String img;
  final String title;
  final String company;
  final String detail1;
  final String detail2;
  final String category;
  final int price;
  final int amount;
//id INTEGER PRIMARY KEY, title text, price INTEGER, company TEXT,detail1 TEXT, detail2 TEXT, category TEXT,amount INTEGER
  Data({required this.img,required this.title,required this.company,required this.detail1,required this.detail2,required this.category,required this.price,required this.amount, required this.id});
}