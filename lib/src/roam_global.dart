part of 'types.dart';

class GroupUser extends GeneralStruct {
	static const List<Tuple2<String, String>> fields = [
    Tuple2('user_id', 'Str'),
    Tuple2('first_name', 'Str'),
    Tuple2('last_name', 'Str'),
    Tuple2('photo', 'Str'),
  ];

  GroupUser.fromBinary() : super.fromBinary();

	GroupUser.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  GroupUser.fromMap(Map<String, dynamic> s) : super.fromJson(s);
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
const users = 'users';

class SearchOptions extends GeneralStruct {
  static const List<Tuple2<String, String>> fields = [
    Tuple2(userID, 'Str'),
    Tuple2(userH3Index, 'u64'),
    Tuple2(categories, 'Vec<Str>'),
    Tuple2(minPeople, 'u8'),
    Tuple2(maxPeople, 'u16'),
    Tuple2(maxRadius, 'u8'),
    Tuple2(minAge, 'u8'),
    Tuple2(maxAge, 'u8'),
    Tuple2(locationH3Index, 'u64'),
    Tuple2(locationName, 'Str'),
    Tuple2(users, 'Vec<GroupUser>')
  ];

  SearchOptions.fromBinary() : super.fromBinary();
	
	SearchOptions.fromJson(Map<String, dynamic> s) : super.fromJson(s);
  SearchOptions.fromMap(Map<String, dynamic> s) : super.fromJson(s);
}
