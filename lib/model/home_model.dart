class HomeModel {
  List<BannerModel> bannerList;
  Config config;
  GridNav gridNav;
  List<LocalNav> localNavList;
  SalesBox salesBox;
  List<SubNav> subNavList;

  HomeModel(
      {this.bannerList,
      this.config,
      this.gridNav,
      this.localNavList,
      this.salesBox,
      this.subNavList});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      bannerList: json['bannerList'] != null
          ? (json['bannerList'] as List)
              .map((i) => BannerModel.fromJson(i))
              .toList()
          : null,
      config: json['config'] != null ? Config.fromJson(json['config']) : null,
      gridNav:
          json['gridNav'] != null ? GridNav.fromJson(json['gridNav']) : null,
      localNavList: json['localNavList'] != null
          ? (json['localNavList'] as List)
              .map((i) => LocalNav.fromJson(i))
              .toList()
          : null,
      salesBox:
          json['salesBox'] != null ? SalesBox.fromJson(json['salesBox']) : null,
      subNavList: json['subNavList'] != null
          ? (json['subNavList'] as List).map((i) => SubNav.fromJson(i)).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
    if (this.localNavList != null) {
      data['localNavList'] = this.localNavList.map((v) => v.toJson()).toList();
    }
    if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
    if (this.subNavList != null) {
      data['subNavList'] = this.subNavList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LocalNav {
  bool hideAppBar;
  String icon;
  String statusBarColor;
  String title;
  String url;

  LocalNav(
      {this.hideAppBar, this.icon, this.statusBarColor, this.title, this.url});

  factory LocalNav.fromJson(Map<String, dynamic> json) {
    return LocalNav(
      hideAppBar: json['hideAppBar'],
      icon: json['icon'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['icon'] = this.icon;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class GridNav {
  GridNavItem flight;
  GridNavItem hotel;
  GridNavItem travel;

  GridNav({this.flight, this.hotel, this.travel});

  factory GridNav.fromJson(Map<String, dynamic> json) {
    return GridNav(
      flight:
          json['flight'] != null ? GridNavItem.fromJson(json['flight']) : null,
      hotel: json['hotel'] != null ? GridNavItem.fromJson(json['hotel']) : null,
      travel:
          json['travel'] != null ? GridNavItem.fromJson(json['travel']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
    if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
    if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
    return data;
  }
}

class GridNavItem {
  String endColor;
  CommonModel item1;
  CommonModel item2;
  CommonModel item3;
  CommonModel item4;
  CommonModel mainItem;
  String startColor;

  GridNavItem(
      {this.endColor,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.mainItem,
      this.startColor});

  factory GridNavItem.fromJson(Map<String, dynamic> json) {
    return GridNavItem(
      endColor: json['endColor'],
      item1: json['item1'] != null ? CommonModel.fromJson(json['item1']) : null,
      item2: json['item2'] != null ? CommonModel.fromJson(json['item2']) : null,
      item3: json['item3'] != null ? CommonModel.fromJson(json['item3']) : null,
      item4: json['item4'] != null ? CommonModel.fromJson(json['item4']) : null,
      mainItem: json['mainItem'] != null
          ? CommonModel.fromJson(json['mainItem'])
          : null,
      startColor: json['startColor'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['endColor'] = this.endColor;
    data['startColor'] = this.startColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class Item4 {
  bool hideAppBar;
  String title;
  String url;

  Item4({this.hideAppBar, this.title, this.url});

  factory Item4.fromJson(Map<String, dynamic> json) {
    return Item4(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class CommonModel {
  String icon;
  String statusBarColor;
  String title;
  String url;
  bool hideAppBar;

  CommonModel(
      {this.icon, this.statusBarColor, this.title, this.url, this.hideAppBar});

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
      hideAppBar: json['hideAppBar'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class Item1 {
  String statusBarColor;
  String title;
  String url;

  Item1({this.statusBarColor, this.title, this.url});

  factory Item1.fromJson(Map<String, dynamic> json) {
    return Item1(
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item2 {
  String title;
  String url;

  Item2({this.title, this.url});

  factory Item2.fromJson(Map<String, dynamic> json) {
    return Item2(
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item3 {
  bool hideAppBar;
  String title;
  String url;

  Item3({this.hideAppBar, this.title, this.url});

  factory Item3.fromJson(Map<String, dynamic> json) {
    return Item3(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Flight {
  String endColor;
  Item1X item1;
  Item2X item2;
  Item3X item3;
  Item4X item4;
  MainItemX mainItem;
  String startColor;

  Flight(
      {this.endColor,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.mainItem,
      this.startColor});

  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
      endColor: json['endColor'],
      item1: json['item1'] != null ? Item1X.fromJson(json['item1']) : null,
      item2: json['item2'] != null ? Item2X.fromJson(json['item2']) : null,
      item3: json['item3'] != null ? Item3X.fromJson(json['item3']) : null,
      item4: json['item4'] != null ? Item4X.fromJson(json['item4']) : null,
      mainItem: json['mainItem'] != null
          ? MainItemX.fromJson(json['mainItem'])
          : null,
      startColor: json['startColor'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['endColor'] = this.endColor;
    data['startColor'] = this.startColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class MainItemX {
  String icon;
  String title;
  String url;

  MainItemX({this.icon, this.title, this.url});

  factory MainItemX.fromJson(Map<String, dynamic> json) {
    return MainItemX(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item1X {
  bool hideAppBar;
  String title;
  String url;

  Item1X({this.hideAppBar, this.title, this.url});

  factory Item1X.fromJson(Map<String, dynamic> json) {
    return Item1X(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item3X {
  bool hideAppBar;
  String title;
  String url;

  Item3X({this.hideAppBar, this.title, this.url});

  factory Item3X.fromJson(Map<String, dynamic> json) {
    return Item3X(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item2X {
  String title;
  String url;

  Item2X({this.title, this.url});

  factory Item2X.fromJson(Map<String, dynamic> json) {
    return Item2X(
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item4X {
  bool hideAppBar;
  String title;
  String url;

  Item4X({this.hideAppBar, this.title, this.url});

  factory Item4X.fromJson(Map<String, dynamic> json) {
    return Item4X(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Travel {
  String endColor;
  Item1XX item1;
  Item2XX item2;
  Item3XX item3;
  Item4XX item4;
  MainItemXX mainItem;
  String startColor;

  Travel(
      {this.endColor,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.mainItem,
      this.startColor});

  factory Travel.fromJson(Map<String, dynamic> json) {
    return Travel(
      endColor: json['endColor'],
      item1: json['item1'] != null ? Item1XX.fromJson(json['item1']) : null,
      item2: json['item2'] != null ? Item2XX.fromJson(json['item2']) : null,
      item3: json['item3'] != null ? Item3XX.fromJson(json['item3']) : null,
      item4: json['item4'] != null ? Item4XX.fromJson(json['item4']) : null,
      mainItem: json['mainItem'] != null
          ? MainItemXX.fromJson(json['mainItem'])
          : null,
      startColor: json['startColor'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['endColor'] = this.endColor;
    data['startColor'] = this.startColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class Item3XX {
  bool hideAppBar;
  String title;
  String url;

  Item3XX({this.hideAppBar, this.title, this.url});

  factory Item3XX.fromJson(Map<String, dynamic> json) {
    return Item3XX(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item4XX {
  bool hideAppBar;
  String title;
  String url;

  Item4XX({this.hideAppBar, this.title, this.url});

  factory Item4XX.fromJson(Map<String, dynamic> json) {
    return Item4XX(
      hideAppBar: json['hideAppBar'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class MainItemXX {
  bool hideAppBar;
  String icon;
  String statusBarColor;
  String title;
  String url;

  MainItemXX(
      {this.hideAppBar, this.icon, this.statusBarColor, this.title, this.url});

  factory MainItemXX.fromJson(Map<String, dynamic> json) {
    return MainItemXX(
      hideAppBar: json['hideAppBar'],
      icon: json['icon'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['icon'] = this.icon;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item1XX {
  bool hideAppBar;
  String statusBarColor;
  String title;
  String url;

  Item1XX({this.hideAppBar, this.statusBarColor, this.title, this.url});

  factory Item1XX.fromJson(Map<String, dynamic> json) {
    return Item1XX(
      hideAppBar: json['hideAppBar'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Item2XX {
  bool hideAppBar;
  String statusBarColor;
  String title;
  String url;

  Item2XX({this.hideAppBar, this.statusBarColor, this.title, this.url});

  factory Item2XX.fromJson(Map<String, dynamic> json) {
    return Item2XX(
      hideAppBar: json['hideAppBar'],
      statusBarColor: json['statusBarColor'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['statusBarColor'] = this.statusBarColor;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SalesBox {
  CommonModel bigCard1;
  CommonModel bigCard2;
  String icon;
  String moreUrl;
  CommonModel smallCard1;
  CommonModel smallCard2;
  CommonModel smallCard3;
  CommonModel smallCard4;

  SalesBox(
      {this.bigCard1,
      this.bigCard2,
      this.icon,
      this.moreUrl,
      this.smallCard1,
      this.smallCard2,
      this.smallCard3,
      this.smallCard4});

  factory SalesBox.fromJson(Map<String, dynamic> json) {
    return SalesBox(
      bigCard1: json['bigCard1'] != null
          ? CommonModel.fromJson(json['bigCard1'])
          : null,
      bigCard2: json['bigCard2'] != null
          ? CommonModel.fromJson(json['bigCard2'])
          : null,
      icon: json['icon'],
      moreUrl: json['moreUrl'],
      smallCard1: json['smallCard1'] != null
          ? CommonModel.fromJson(json['smallCard1'])
          : null,
      smallCard2: json['smallCard2'] != null
          ? CommonModel.fromJson(json['smallCard2'])
          : null,
      smallCard3: json['smallCard3'] != null
          ? CommonModel.fromJson(json['smallCard3'])
          : null,
      smallCard4: json['smallCard4'] != null
          ? CommonModel.fromJson(json['smallCard4'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['moreUrl'] = this.moreUrl;
    if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
    if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
    if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
    if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
    if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
    if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
    return data;
  }
}

class SmallCard1 {
  String icon;
  String title;
  String url;

  SmallCard1({this.icon, this.title, this.url});

  factory SmallCard1.fromJson(Map<String, dynamic> json) {
    return SmallCard1(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SmallCard4 {
  String icon;
  String title;
  String url;

  SmallCard4({this.icon, this.title, this.url});

  factory SmallCard4.fromJson(Map<String, dynamic> json) {
    return SmallCard4(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class BigCard2 {
  String icon;
  String title;
  String url;

  BigCard2({this.icon, this.title, this.url});

  factory BigCard2.fromJson(Map<String, dynamic> json) {
    return BigCard2(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SmallCard3 {
  String icon;
  String title;
  String url;

  SmallCard3({this.icon, this.title, this.url});

  factory SmallCard3.fromJson(Map<String, dynamic> json) {
    return SmallCard3(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class BigCard1 {
  String icon;
  String title;
  String url;

  BigCard1({this.icon, this.title, this.url});

  factory BigCard1.fromJson(Map<String, dynamic> json) {
    return BigCard1(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SmallCard2 {
  String icon;
  String title;
  String url;

  SmallCard2({this.icon, this.title, this.url});

  factory SmallCard2.fromJson(Map<String, dynamic> json) {
    return SmallCard2(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class SubNav {
  bool hideAppBar;
  String icon;
  String title;
  String url;

  SubNav({this.hideAppBar, this.icon, this.title, this.url});

  factory SubNav.fromJson(Map<String, dynamic> json) {
    return SubNav(
      hideAppBar: json['hideAppBar'],
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hideAppBar'] = this.hideAppBar;
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class Config {
  String searchUrl;

  Config({this.searchUrl});

  factory Config.fromJson(Map<String, dynamic> json) {
    return Config(
      searchUrl: json['searchUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchUrl'] = this.searchUrl;
    return data;
  }
}

class BannerModel {
  String icon;
  String url;

  BannerModel({this.icon, this.url});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      icon: json['icon'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    return data;
  }
}
