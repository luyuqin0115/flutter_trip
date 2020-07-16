import 'package:fluttertrip/generated/json/base/json_convert_content.dart';

class HomeDaoEntity with JsonConvert<HomeDaoEntity> {
	HomeDaoConfig config;
	List<HomeDaoBannerList> bannerList;
	List<HomeDaoLocalNavList> localNavList;
	HomeDaoGridNav gridNav;
	List<HomeDaoSubNavList> subNavList;
	HomeDaoSalesBox salesBox;
}

class HomeDaoConfig with JsonConvert<HomeDaoConfig> {
	String searchUrl;
}

class HomeDaoBannerList with JsonConvert<HomeDaoBannerList> {
	String icon;
	String url;
}

class HomeDaoLocalNavList with JsonConvert<HomeDaoLocalNavList> {
	String icon;
	String title;
	String url;
	String statusBarColor;
	bool hideAppBar;
}

class HomeDaoGridNav with JsonConvert<HomeDaoGridNav> {
	HomeDaoGridNavHotel hotel;
	HomeDaoGridNavFlight flight;
	HomeDaoGridNavTravel travel;
}

class HomeDaoGridNavHotel with JsonConvert<HomeDaoGridNavHotel> {
	String startColor;
	String endColor;
	HomeDaoGridNavHotelMainItem mainItem;
	HomeDaoGridNavHotelItem1 item1;
	HomeDaoGridNavHotelItem2 item2;
	HomeDaoGridNavHotelItem3 item3;
	HomeDaoGridNavHotelItem4 item4;
}

class HomeDaoGridNavHotelMainItem with JsonConvert<HomeDaoGridNavHotelMainItem> {
	String title;
	String icon;
	String url;
	String statusBarColor;
}

class HomeDaoGridNavHotelItem1 with JsonConvert<HomeDaoGridNavHotelItem1> {
	String title;
	String url;
	String statusBarColor;
}

class HomeDaoGridNavHotelItem2 with JsonConvert<HomeDaoGridNavHotelItem2> {
	String title;
	String url;
}

class HomeDaoGridNavHotelItem3 with JsonConvert<HomeDaoGridNavHotelItem3> {
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoGridNavHotelItem4 with JsonConvert<HomeDaoGridNavHotelItem4> {
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoGridNavFlight with JsonConvert<HomeDaoGridNavFlight> {
	String startColor;
	String endColor;
	HomeDaoGridNavFlightMainItem mainItem;
	HomeDaoGridNavFlightItem1 item1;
	HomeDaoGridNavFlightItem2 item2;
	HomeDaoGridNavFlightItem3 item3;
	HomeDaoGridNavFlightItem4 item4;
}

class HomeDaoGridNavFlightMainItem with JsonConvert<HomeDaoGridNavFlightMainItem> {
	String title;
	String icon;
	String url;
}

class HomeDaoGridNavFlightItem1 with JsonConvert<HomeDaoGridNavFlightItem1> {
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoGridNavFlightItem2 with JsonConvert<HomeDaoGridNavFlightItem2> {
	String title;
	String url;
}

class HomeDaoGridNavFlightItem3 with JsonConvert<HomeDaoGridNavFlightItem3> {
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoGridNavFlightItem4 with JsonConvert<HomeDaoGridNavFlightItem4> {
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoGridNavTravel with JsonConvert<HomeDaoGridNavTravel> {
	String startColor;
	String endColor;
	HomeDaoGridNavTravelMainItem mainItem;
	HomeDaoGridNavTravelItem1 item1;
	HomeDaoGridNavTravelItem2 item2;
	HomeDaoGridNavTravelItem3 item3;
	HomeDaoGridNavTravelItem4 item4;
}

class HomeDaoGridNavTravelMainItem with JsonConvert<HomeDaoGridNavTravelMainItem> {
	String title;
	String icon;
	String url;
	bool hideAppBar;
	String statusBarColor;
}

class HomeDaoGridNavTravelItem1 with JsonConvert<HomeDaoGridNavTravelItem1> {
	String title;
	String url;
	String statusBarColor;
	bool hideAppBar;
}

class HomeDaoGridNavTravelItem2 with JsonConvert<HomeDaoGridNavTravelItem2> {
	String title;
	String url;
	String statusBarColor;
	bool hideAppBar;
}

class HomeDaoGridNavTravelItem3 with JsonConvert<HomeDaoGridNavTravelItem3> {
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoGridNavTravelItem4 with JsonConvert<HomeDaoGridNavTravelItem4> {
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoSubNavList with JsonConvert<HomeDaoSubNavList> {
	String icon;
	String title;
	String url;
	bool hideAppBar;
}

class HomeDaoSalesBox with JsonConvert<HomeDaoSalesBox> {
	String icon;
	String moreUrl;
	HomeDaoSalesBoxBigCard1 bigCard1;
	HomeDaoSalesBoxBigCard2 bigCard2;
	HomeDaoSalesBoxSmallCard1 smallCard1;
	HomeDaoSalesBoxSmallCard2 smallCard2;
	HomeDaoSalesBoxSmallCard3 smallCard3;
	HomeDaoSalesBoxSmallCard4 smallCard4;
}

class HomeDaoSalesBoxBigCard1 with JsonConvert<HomeDaoSalesBoxBigCard1> {
	String icon;
	String url;
	String title;
}

class HomeDaoSalesBoxBigCard2 with JsonConvert<HomeDaoSalesBoxBigCard2> {
	String icon;
	String url;
	String title;
}

class HomeDaoSalesBoxSmallCard1 with JsonConvert<HomeDaoSalesBoxSmallCard1> {
	String icon;
	String url;
	String title;
}

class HomeDaoSalesBoxSmallCard2 with JsonConvert<HomeDaoSalesBoxSmallCard2> {
	String icon;
	String url;
	String title;
}

class HomeDaoSalesBoxSmallCard3 with JsonConvert<HomeDaoSalesBoxSmallCard3> {
	String icon;
	String url;
	String title;
}

class HomeDaoSalesBoxSmallCard4 with JsonConvert<HomeDaoSalesBoxSmallCard4> {
	String icon;
	String url;
	String title;
}
