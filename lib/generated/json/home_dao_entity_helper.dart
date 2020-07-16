import 'package:fluttertrip/model/home_dao_entity.dart';

homeDaoEntityFromJson(HomeDaoEntity data, Map<String, dynamic> json) {
	if (json['config'] != null) {
		data.config = new HomeDaoConfig().fromJson(json['config']);
	}
	if (json['bannerList'] != null) {
		data.bannerList = new List<HomeDaoBannerList>();
		(json['bannerList'] as List).forEach((v) {
			data.bannerList.add(new HomeDaoBannerList().fromJson(v));
		});
	}
	if (json['localNavList'] != null) {
		data.localNavList = new List<HomeDaoLocalNavList>();
		(json['localNavList'] as List).forEach((v) {
			data.localNavList.add(new HomeDaoLocalNavList().fromJson(v));
		});
	}
	if (json['gridNav'] != null) {
		data.gridNav = new HomeDaoGridNav().fromJson(json['gridNav']);
	}
	if (json['subNavList'] != null) {
		data.subNavList = new List<HomeDaoSubNavList>();
		(json['subNavList'] as List).forEach((v) {
			data.subNavList.add(new HomeDaoSubNavList().fromJson(v));
		});
	}
	if (json['salesBox'] != null) {
		data.salesBox = new HomeDaoSalesBox().fromJson(json['salesBox']);
	}
	return data;
}

Map<String, dynamic> homeDaoEntityToJson(HomeDaoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.config != null) {
		data['config'] = entity.config.toJson();
	}
	if (entity.bannerList != null) {
		data['bannerList'] =  entity.bannerList.map((v) => v.toJson()).toList();
	}
	if (entity.localNavList != null) {
		data['localNavList'] =  entity.localNavList.map((v) => v.toJson()).toList();
	}
	if (entity.gridNav != null) {
		data['gridNav'] = entity.gridNav.toJson();
	}
	if (entity.subNavList != null) {
		data['subNavList'] =  entity.subNavList.map((v) => v.toJson()).toList();
	}
	if (entity.salesBox != null) {
		data['salesBox'] = entity.salesBox.toJson();
	}
	return data;
}

homeDaoConfigFromJson(HomeDaoConfig data, Map<String, dynamic> json) {
	if (json['searchUrl'] != null) {
		data.searchUrl = json['searchUrl']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoConfigToJson(HomeDaoConfig entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['searchUrl'] = entity.searchUrl;
	return data;
}

homeDaoBannerListFromJson(HomeDaoBannerList data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoBannerListToJson(HomeDaoBannerList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	return data;
}

homeDaoLocalNavListFromJson(HomeDaoLocalNavList data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoLocalNavListToJson(HomeDaoLocalNavList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavFromJson(HomeDaoGridNav data, Map<String, dynamic> json) {
	if (json['hotel'] != null) {
		data.hotel = new HomeDaoGridNavHotel().fromJson(json['hotel']);
	}
	if (json['flight'] != null) {
		data.flight = new HomeDaoGridNavFlight().fromJson(json['flight']);
	}
	if (json['travel'] != null) {
		data.travel = new HomeDaoGridNavTravel().fromJson(json['travel']);
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavToJson(HomeDaoGridNav entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.hotel != null) {
		data['hotel'] = entity.hotel.toJson();
	}
	if (entity.flight != null) {
		data['flight'] = entity.flight.toJson();
	}
	if (entity.travel != null) {
		data['travel'] = entity.travel.toJson();
	}
	return data;
}

homeDaoGridNavHotelFromJson(HomeDaoGridNavHotel data, Map<String, dynamic> json) {
	if (json['startColor'] != null) {
		data.startColor = json['startColor']?.toString();
	}
	if (json['endColor'] != null) {
		data.endColor = json['endColor']?.toString();
	}
	if (json['mainItem'] != null) {
		data.mainItem = new HomeDaoGridNavHotelMainItem().fromJson(json['mainItem']);
	}
	if (json['item1'] != null) {
		data.item1 = new HomeDaoGridNavHotelItem1().fromJson(json['item1']);
	}
	if (json['item2'] != null) {
		data.item2 = new HomeDaoGridNavHotelItem2().fromJson(json['item2']);
	}
	if (json['item3'] != null) {
		data.item3 = new HomeDaoGridNavHotelItem3().fromJson(json['item3']);
	}
	if (json['item4'] != null) {
		data.item4 = new HomeDaoGridNavHotelItem4().fromJson(json['item4']);
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavHotelToJson(HomeDaoGridNavHotel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['startColor'] = entity.startColor;
	data['endColor'] = entity.endColor;
	if (entity.mainItem != null) {
		data['mainItem'] = entity.mainItem.toJson();
	}
	if (entity.item1 != null) {
		data['item1'] = entity.item1.toJson();
	}
	if (entity.item2 != null) {
		data['item2'] = entity.item2.toJson();
	}
	if (entity.item3 != null) {
		data['item3'] = entity.item3.toJson();
	}
	if (entity.item4 != null) {
		data['item4'] = entity.item4.toJson();
	}
	return data;
}

homeDaoGridNavHotelMainItemFromJson(HomeDaoGridNavHotelMainItem data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavHotelMainItemToJson(HomeDaoGridNavHotelMainItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	return data;
}

homeDaoGridNavHotelItem1FromJson(HomeDaoGridNavHotelItem1 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavHotelItem1ToJson(HomeDaoGridNavHotelItem1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	return data;
}

homeDaoGridNavHotelItem2FromJson(HomeDaoGridNavHotelItem2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavHotelItem2ToJson(HomeDaoGridNavHotelItem2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}

homeDaoGridNavHotelItem3FromJson(HomeDaoGridNavHotelItem3 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavHotelItem3ToJson(HomeDaoGridNavHotelItem3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavHotelItem4FromJson(HomeDaoGridNavHotelItem4 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavHotelItem4ToJson(HomeDaoGridNavHotelItem4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavFlightFromJson(HomeDaoGridNavFlight data, Map<String, dynamic> json) {
	if (json['startColor'] != null) {
		data.startColor = json['startColor']?.toString();
	}
	if (json['endColor'] != null) {
		data.endColor = json['endColor']?.toString();
	}
	if (json['mainItem'] != null) {
		data.mainItem = new HomeDaoGridNavFlightMainItem().fromJson(json['mainItem']);
	}
	if (json['item1'] != null) {
		data.item1 = new HomeDaoGridNavFlightItem1().fromJson(json['item1']);
	}
	if (json['item2'] != null) {
		data.item2 = new HomeDaoGridNavFlightItem2().fromJson(json['item2']);
	}
	if (json['item3'] != null) {
		data.item3 = new HomeDaoGridNavFlightItem3().fromJson(json['item3']);
	}
	if (json['item4'] != null) {
		data.item4 = new HomeDaoGridNavFlightItem4().fromJson(json['item4']);
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavFlightToJson(HomeDaoGridNavFlight entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['startColor'] = entity.startColor;
	data['endColor'] = entity.endColor;
	if (entity.mainItem != null) {
		data['mainItem'] = entity.mainItem.toJson();
	}
	if (entity.item1 != null) {
		data['item1'] = entity.item1.toJson();
	}
	if (entity.item2 != null) {
		data['item2'] = entity.item2.toJson();
	}
	if (entity.item3 != null) {
		data['item3'] = entity.item3.toJson();
	}
	if (entity.item4 != null) {
		data['item4'] = entity.item4.toJson();
	}
	return data;
}

homeDaoGridNavFlightMainItemFromJson(HomeDaoGridNavFlightMainItem data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavFlightMainItemToJson(HomeDaoGridNavFlightMainItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	return data;
}

homeDaoGridNavFlightItem1FromJson(HomeDaoGridNavFlightItem1 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavFlightItem1ToJson(HomeDaoGridNavFlightItem1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavFlightItem2FromJson(HomeDaoGridNavFlightItem2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavFlightItem2ToJson(HomeDaoGridNavFlightItem2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	return data;
}

homeDaoGridNavFlightItem3FromJson(HomeDaoGridNavFlightItem3 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavFlightItem3ToJson(HomeDaoGridNavFlightItem3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavFlightItem4FromJson(HomeDaoGridNavFlightItem4 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavFlightItem4ToJson(HomeDaoGridNavFlightItem4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavTravelFromJson(HomeDaoGridNavTravel data, Map<String, dynamic> json) {
	if (json['startColor'] != null) {
		data.startColor = json['startColor']?.toString();
	}
	if (json['endColor'] != null) {
		data.endColor = json['endColor']?.toString();
	}
	if (json['mainItem'] != null) {
		data.mainItem = new HomeDaoGridNavTravelMainItem().fromJson(json['mainItem']);
	}
	if (json['item1'] != null) {
		data.item1 = new HomeDaoGridNavTravelItem1().fromJson(json['item1']);
	}
	if (json['item2'] != null) {
		data.item2 = new HomeDaoGridNavTravelItem2().fromJson(json['item2']);
	}
	if (json['item3'] != null) {
		data.item3 = new HomeDaoGridNavTravelItem3().fromJson(json['item3']);
	}
	if (json['item4'] != null) {
		data.item4 = new HomeDaoGridNavTravelItem4().fromJson(json['item4']);
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavTravelToJson(HomeDaoGridNavTravel entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['startColor'] = entity.startColor;
	data['endColor'] = entity.endColor;
	if (entity.mainItem != null) {
		data['mainItem'] = entity.mainItem.toJson();
	}
	if (entity.item1 != null) {
		data['item1'] = entity.item1.toJson();
	}
	if (entity.item2 != null) {
		data['item2'] = entity.item2.toJson();
	}
	if (entity.item3 != null) {
		data['item3'] = entity.item3.toJson();
	}
	if (entity.item4 != null) {
		data['item4'] = entity.item4.toJson();
	}
	return data;
}

homeDaoGridNavTravelMainItemFromJson(HomeDaoGridNavTravelMainItem data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavTravelMainItemToJson(HomeDaoGridNavTravelMainItem entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	data['statusBarColor'] = entity.statusBarColor;
	return data;
}

homeDaoGridNavTravelItem1FromJson(HomeDaoGridNavTravelItem1 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavTravelItem1ToJson(HomeDaoGridNavTravelItem1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavTravelItem2FromJson(HomeDaoGridNavTravelItem2 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['statusBarColor'] != null) {
		data.statusBarColor = json['statusBarColor']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavTravelItem2ToJson(HomeDaoGridNavTravelItem2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['statusBarColor'] = entity.statusBarColor;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavTravelItem3FromJson(HomeDaoGridNavTravelItem3 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavTravelItem3ToJson(HomeDaoGridNavTravelItem3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoGridNavTravelItem4FromJson(HomeDaoGridNavTravelItem4 data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoGridNavTravelItem4ToJson(HomeDaoGridNavTravelItem4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoSubNavListFromJson(HomeDaoSubNavList data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['hideAppBar'] != null) {
		data.hideAppBar = json['hideAppBar'];
	}
	return data;
}

Map<String, dynamic> homeDaoSubNavListToJson(HomeDaoSubNavList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['hideAppBar'] = entity.hideAppBar;
	return data;
}

homeDaoSalesBoxFromJson(HomeDaoSalesBox data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['moreUrl'] != null) {
		data.moreUrl = json['moreUrl']?.toString();
	}
	if (json['bigCard1'] != null) {
		data.bigCard1 = new HomeDaoSalesBoxBigCard1().fromJson(json['bigCard1']);
	}
	if (json['bigCard2'] != null) {
		data.bigCard2 = new HomeDaoSalesBoxBigCard2().fromJson(json['bigCard2']);
	}
	if (json['smallCard1'] != null) {
		data.smallCard1 = new HomeDaoSalesBoxSmallCard1().fromJson(json['smallCard1']);
	}
	if (json['smallCard2'] != null) {
		data.smallCard2 = new HomeDaoSalesBoxSmallCard2().fromJson(json['smallCard2']);
	}
	if (json['smallCard3'] != null) {
		data.smallCard3 = new HomeDaoSalesBoxSmallCard3().fromJson(json['smallCard3']);
	}
	if (json['smallCard4'] != null) {
		data.smallCard4 = new HomeDaoSalesBoxSmallCard4().fromJson(json['smallCard4']);
	}
	return data;
}

Map<String, dynamic> homeDaoSalesBoxToJson(HomeDaoSalesBox entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['moreUrl'] = entity.moreUrl;
	if (entity.bigCard1 != null) {
		data['bigCard1'] = entity.bigCard1.toJson();
	}
	if (entity.bigCard2 != null) {
		data['bigCard2'] = entity.bigCard2.toJson();
	}
	if (entity.smallCard1 != null) {
		data['smallCard1'] = entity.smallCard1.toJson();
	}
	if (entity.smallCard2 != null) {
		data['smallCard2'] = entity.smallCard2.toJson();
	}
	if (entity.smallCard3 != null) {
		data['smallCard3'] = entity.smallCard3.toJson();
	}
	if (entity.smallCard4 != null) {
		data['smallCard4'] = entity.smallCard4.toJson();
	}
	return data;
}

homeDaoSalesBoxBigCard1FromJson(HomeDaoSalesBoxBigCard1 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoSalesBoxBigCard1ToJson(HomeDaoSalesBoxBigCard1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeDaoSalesBoxBigCard2FromJson(HomeDaoSalesBoxBigCard2 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoSalesBoxBigCard2ToJson(HomeDaoSalesBoxBigCard2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeDaoSalesBoxSmallCard1FromJson(HomeDaoSalesBoxSmallCard1 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoSalesBoxSmallCard1ToJson(HomeDaoSalesBoxSmallCard1 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeDaoSalesBoxSmallCard2FromJson(HomeDaoSalesBoxSmallCard2 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoSalesBoxSmallCard2ToJson(HomeDaoSalesBoxSmallCard2 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeDaoSalesBoxSmallCard3FromJson(HomeDaoSalesBoxSmallCard3 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoSalesBoxSmallCard3ToJson(HomeDaoSalesBoxSmallCard3 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}

homeDaoSalesBoxSmallCard4FromJson(HomeDaoSalesBoxSmallCard4 data, Map<String, dynamic> json) {
	if (json['icon'] != null) {
		data.icon = json['icon']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	return data;
}

Map<String, dynamic> homeDaoSalesBoxSmallCard4ToJson(HomeDaoSalesBoxSmallCard4 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['icon'] = entity.icon;
	data['url'] = entity.url;
	data['title'] = entity.title;
	return data;
}