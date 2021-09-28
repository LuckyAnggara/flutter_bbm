class DataPerformance {
  final double? amount;
  final String? title;

  DataPerformance({this.amount, this.title});
}

// list of products
// for our demo
List<DataPerformance> listDataPerformance = [
  DataPerformance(title: "Total Penjualan", amount: 500000000),
  DataPerformance(title: "Harga Pokok Produksi", amount: 385000000),
  DataPerformance(title: "Total Beban", amount: 2000000),
  DataPerformance(title: "Laba / Rugi", amount: 125800000),
];
