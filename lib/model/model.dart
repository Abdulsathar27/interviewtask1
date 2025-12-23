class Lipstick {
  final String brandName;
  final String displayName;
  final String heroImage;
  final String listPrice;
  final String salePrice;
  final String skuId;
  final String productId;
  final String url;

  Lipstick({
    required this.brandName,
    required this.displayName,
    required this.heroImage,
    required this.listPrice,
    required this.salePrice,
    required this.skuId,
    required this.productId,
    required this.url,
  });

  factory Lipstick.fromJson(Map<String, dynamic> json) {
    final sku = json['currentSku'] ?? {};
    return Lipstick(
      brandName: json['brandName'] ?? '',
      displayName: json['displayName'] ?? '',
      heroImage: json['heroImage'] ?? '',
      listPrice: sku['listPrice'] ?? '',
      salePrice: sku['salePrice'] ?? sku['listPrice'] ?? '',
      skuId: sku['skuId'] ?? '',
      productId: json['productId'] ?? '',
      url: json['url'] ?? '',
    );
  }
}