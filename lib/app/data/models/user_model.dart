
class UserModel {
  final BasicInfo basicInfo;
  final PhysicalAttribute physicalAttribute;
  final HoroscopeDetails horoscopeDetails;
  final CareerDetails careerDetails;
  final FamilyDetails familyDetails;
  final Expectations expectations;
  final ProfilePhotos profilePhotos;

  UserModel({
    required this.basicInfo,
    required this.physicalAttribute,
    required this.horoscopeDetails,
    required this.careerDetails,
    required this.familyDetails,
    required this.expectations,
    required this.profilePhotos,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      basicInfo: BasicInfo.fromJson(json['basicInfo']),
      physicalAttribute: PhysicalAttribute.fromJson(json['physicalAttribute']),
      horoscopeDetails: HoroscopeDetails.fromJson(json['horoscopeDetails']),
      careerDetails: CareerDetails.fromJson(json['careerDetails']),
      familyDetails: FamilyDetails.fromJson(json['familyDetails']),
      expectations: Expectations.fromJson(json['expectations']),
      profilePhotos: ProfilePhotos.fromJson(json['profilePhotos']),
    );
  }
}

class BasicInfo {
  String firstName;
  String middleName;
  String lastName;
  String gender;
  String birthdate;
  String subCaste;
  String email;
  String mobile;
  String password;

  BasicInfo({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.gender,
    required this.birthdate,
    required this.subCaste,
    required this.email,
    required this.mobile,
    required this.password,
  });

  factory BasicInfo.fromJson(Map<String, dynamic> json) {
    return BasicInfo(
      firstName: json['firstName'],
      middleName: json['middleName'],
      lastName: json['lastName'],
      gender: json['gender'],
      birthdate: json['birthdate'],
      subCaste: json['subCaste'],
      email: json['email'],
      mobile: json['mobile'],
      password: json['password'],
    );
  }
}

class PhysicalAttribute {
  String height;
  String weight;
  String complexion;
  String bloodGroup;

  PhysicalAttribute({
    required this.height,
    required this.weight,
    required this.complexion,
    required this.bloodGroup,
  });

  factory PhysicalAttribute.fromJson(Map<String, dynamic> json) {
    return PhysicalAttribute(
      height: json['height'],
      weight: json['weight'],
      complexion: json['complexion'],
      bloodGroup: json['bloodGroup'],
    );
  }
}

class HoroscopeDetails {
  String birthTime;
  String birthDistrict;
  String rashi;
  String nakshatra;

  HoroscopeDetails({
    required this.birthTime,
    required this.birthDistrict,
    required this.rashi,
    required this.nakshatra,
  });

  factory HoroscopeDetails.fromJson(Map<String, dynamic> json) {
    return HoroscopeDetails(
      birthTime: json['birthTime'],
      birthDistrict: json['birthDistrict'],
      rashi: json['rashi'],
      nakshatra: json['nakshatra'],
    );
  }
}

class CareerDetails {
  String degree;
  String edufield;
  String occupationType;
  String occupationPlace;
  int personalIncome;

  CareerDetails({
    required this.degree,
    required this.edufield,
    required this.occupationType,
    required this.occupationPlace,
    required this.personalIncome,
  });

  factory CareerDetails.fromJson(Map<String, dynamic> json) {
    return CareerDetails(
      degree: json['degree'],
      edufield: json['edufield'],
      occupationType: json['occupationType'],
      occupationPlace: json['occupationPlace'],
      personalIncome: json['personalIncome'],
    );
  }
}

class FamilyDetails {
  bool fatherAlive;
  bool motherAlive;
  int brothers;
  int marriedBrothers;
  int sisters;
  int marriedSister;
  String parentNames;
  String parentOccupation;
  String parentsResideCity;
  String nativeDistrict;
  String nativeTaluka;
  String familyEstate;
  List<String> surnamesOfRelatives;
  String maternalPlaceSurname;
  String intercasteStatus;
  String intercasteDetails;

  FamilyDetails({
    required this.fatherAlive,
    required this.motherAlive,
    required this.brothers,
    required this.marriedBrothers,
    required this.sisters,
    required this.marriedSister,
    required this.parentNames,
    required this.parentOccupation,
    required this.parentsResideCity,
    required this.nativeDistrict,
    required this.nativeTaluka,
    required this.familyEstate,
    required this.surnamesOfRelatives,
    required this.maternalPlaceSurname,
    required this.intercasteStatus,
    required this.intercasteDetails,
  });

  factory FamilyDetails.fromJson(Map<String, dynamic> json) {
    return FamilyDetails(
      fatherAlive: json['fatherAlive'],
      motherAlive: json['motherAlive'],
      brothers: json['brothers'],
      marriedBrothers: json['marriedBrothers'],
      sisters: json['sisters'],
      marriedSister: json['marriedSister'],
      parentNames: json['parentNames'],
      parentOccupation: json['parentOccupation'],
      parentsResideCity: json['parentsResideCity'],
      nativeDistrict: json['nativeDistrict'],
      nativeTaluka: json['nativeTaluka'],
      familyEstate: json['familyEstate'],
      surnamesOfRelatives: List<String>.from(json['surnamesOfRelatives']),
      maternalPlaceSurname: json['maternalPlaceSurname'],
      intercasteStatus: json['intercasteStatus'],
      intercasteDetails: json['intercasteDetails'],
    );
  }
}

class Expectations {
  List<String> preferredCities;
  bool mangalDosh;
  String expectedSubCaste;
  String expectedHeight;
  int minAgeGap;
  String expectedEducation;
  String expectedOccupation;
  double incomePerMonth;
  String expectedMaritalStatus;

  Expectations({
    required this.preferredCities,
    required this.mangalDosh,
    required this.expectedSubCaste,
    required this.expectedHeight,
    required this.minAgeGap,
    required this.expectedEducation,
    required this.expectedOccupation,
    required this.incomePerMonth,
    required this.expectedMaritalStatus,
  });

  factory Expectations.fromJson(Map<String, dynamic> json) {
    return Expectations(
      preferredCities: List<String>.from(json['preferredCities']),
      mangalDosh: json['mangalDosh'],
      expectedSubCaste: json['expectedSubCaste'],
      expectedHeight: json['expectedHeight'],
      minAgeGap: json['minAgeGap'],
      expectedEducation: json['expectedEducation'],
      expectedOccupation: json['expectedOccupation'],
      incomePerMonth: json['incomePerMonth'],
      expectedMaritalStatus: json['expectedMaritalStatus'],
    );
  }
}

class ProfilePhotos {
  String? profilePicUrl;
  List<String> album;

  ProfilePhotos({this.profilePicUrl, required this.album});

  factory ProfilePhotos.fromJson(Map<String, dynamic> json) {
    return ProfilePhotos(
      profilePicUrl: json['profilePicUrl'],
      album: List<String>.from(json['album']),
    );
  }
}
