part of 'types.dart';

class GroupUser extends GeneralStruct {
	static const List<Tuple2<String, String>> fields = [
    Tuple2('user_id', 'Str'),
    Tuple2('first_name', 'Str'),
    Tuple2('last_name', 'Str'),
    Tuple2('image', 'Str'),
    Tuple2('bio', 'Str'),
  ];

  GroupUser.fromBinary() : super.fromBinary();

	GroupUser.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  GroupUser.fromMap(Map<String, dynamic> s) : super.fromJson(s);
}

class GroupUsers extends GeneralStruct {
	static const List<Tuple2<String, String>> fields = [
    Tuple2('group_id', 'Str'),
    Tuple2('users', 'Vec<GroupUser>'),
  ];

  GroupUsers.fromBinary() : super.fromBinary();

	GroupUsers.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  GroupUsers.fromMap(Map<String, dynamic> s) : super.fromJson(s);
}

class GroupDetails extends GeneralStruct {
	static const List<Tuple2<String, String>> fields = [
    Tuple2('group_id', 'Str'),
    Tuple2('location_name', 'Str'),
  ];

  GroupDetails.fromBinary() : super.fromBinary();

	GroupDetails.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  GroupDetails.fromMap(Map<String, dynamic> s) : super.fromJson(s);
}

class GroupMatch extends GeneralStruct {
	static const List<Tuple2<String, String>> fields = [
    Tuple2('group_id', 'Str'),
    Tuple2('users', 'Vec<GroupUser>'),
    Tuple2('group_location_name', 'Str'),
  ];

  GroupMatch.fromBinary() : super.fromBinary();

	GroupMatch.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  GroupMatch.fromMap(Map<String, dynamic> s) : super.fromJson(s);
}

class SearchMatch extends GeneralStruct {
	static const List<Tuple2<String, String>> fields = [
    Tuple2('entity_type', 'Str'),
    Tuple2('entity_id', 'Str'),
  ];

  SearchMatch.fromBinary() : super.fromBinary();

	SearchMatch.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  SearchMatch.fromMap(Map<String, dynamic> s) : super.fromJson(s);
}

const userH3Index = 'user_h3_index';
const locationH3Index = 'location_h3_index';
const userID = 'user_id';
const categories = 'categories';
const minPeople = 'min_people';
const maxPeople = 'max_people';
const maxRadius = 'max_radius';
const minAge = 'min_age';
const maxAge = 'max_age';
const locationName = 'location_name';
const locationLat = 'location_lat';
const locationLng = 'location_lng';
const isLocationFlexible = 'is_location_flexible';

class SearchOptions extends GeneralStruct {
  static const List<Tuple2<String, String>> fields = [
    Tuple2(userID, 'Str'),
    Tuple2(userH3Index, 'i64'),
    Tuple2(categories, 'Vec<Str>'),
    Tuple2(minPeople, 'i16'),
    Tuple2(maxPeople, 'i16'),
    Tuple2(maxRadius, 'u8'),
    Tuple2(minAge, 'i16'),
    Tuple2(maxAge, 'i16'),
    Tuple2(locationH3Index, 'i64'),
    Tuple2(locationName, 'Str'),
		Tuple2(isLocationFlexible, 'Bool')
  ];

  SearchOptions.fromBinary() : super.fromBinary();
	
	SearchOptions.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  SearchOptions.fromMap(Map<String, dynamic> s) : super.fromJson(s);
}
