
class UserModel {
  final String? id;
  final PersonalInfo? personalInfo;
  final ContactInfo? contactInfo;
  final Address? address;
  final EmergencyContact? emergencyContact;
  final HealthInfo? healthInfo;
  final Membership? membership;
  final Profile? profile;
  final ProfilePhotos? profilePhotos;

  UserModel({
    this.id,
    this.personalInfo,
    this.contactInfo,
    this.address,
    this.emergencyContact,
    this.healthInfo,
    this.membership,
    this.profile,
    this.profilePhotos,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'],
      personalInfo: json['personalInfo'] != null ? PersonalInfo.fromJson(json['personalInfo']) : null,
      contactInfo: json['contactInfo'] != null ? ContactInfo.fromJson(json['contactInfo']) : null,
      address: json['address'] != null ? Address.fromJson(json['address']) : null,
      emergencyContact: json['emergencyContact'] != null ? EmergencyContact.fromJson(json['emergencyContact']) : null,
      healthInfo: json['healthInfo'] != null ? HealthInfo.fromJson(json['healthInfo']) : null,
      membership: json['membership'] != null ? Membership.fromJson(json['membership']) : null,
      profile: json['profile'] != null ? Profile.fromJson(json['profile']) : null,
      profilePhotos: json['profilePhotos'] != null ? ProfilePhotos.fromJson(json['profilePhotos']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (personalInfo != null) data['personalInfo'] = personalInfo!.toJson();
    if (contactInfo != null) data['contactInfo'] = contactInfo!.toJson();
    if (address != null) data['address'] = address!.toJson();
    if (emergencyContact != null) data['emergencyContact'] = emergencyContact!.toJson();
    if (healthInfo != null) data['healthInfo'] = healthInfo!.toJson();
    if (membership != null) data['membership'] = membership!.toJson();
    if (profile != null) data['profile'] = profile!.toJson();
    return data;
  }
}

class PersonalInfo {
  String firstName;
  String lastName;
  String dateOfBirth;
  String gender;

  PersonalInfo({
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.gender,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) {
    return PersonalInfo(
      firstName: json['firstName'],
      lastName: json['lastName'],
      dateOfBirth: json['dateOfBirth'],
      gender: json['gender'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
    };
  }
}

class ContactInfo {
  String email;
  String phoneNumber;

  ContactInfo({required this.email, required this.phoneNumber});

  factory ContactInfo.fromJson(Map<String, dynamic> json) {
    return ContactInfo(
      email: json['email'],
      phoneNumber: json['phoneNumber'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'phoneNumber': phoneNumber,
    };
  }
}

class Address {
  String street;
  String city;
  String state;
  String zipCode;
  String country;

  Address({
    required this.street,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      city: json['city'],
      state: json['state'],
      zipCode: json['zipCode'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
      'city': city,
      'state': state,
      'zipCode': zipCode,
      'country': country,
    };
  }
}

class EmergencyContact {
  String name;
  String relationship;
  String phone;

  EmergencyContact({
    required this.name,
    required this.relationship,
    required this.phone,
  });

  factory EmergencyContact.fromJson(Map<String, dynamic> json) {
    return EmergencyContact(
      name: json['name'],
      relationship: json['relationship'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'relationship': relationship,
      'phone': phone,
    };
  }
}

class HealthInfo {
  List<String> medicalConditions;
  List<String> allergies;
  List<String> medications;

  HealthInfo({
    required this.medicalConditions,
    required this.allergies,
    required this.medications,
  });

  factory HealthInfo.fromJson(Map<String, dynamic> json) {
    return HealthInfo(
      medicalConditions: List<String>.from(json['medicalConditions']),
      allergies: List<String>.from(json['allergies']),
      medications: List<String>.from(json['medications']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'medicalConditions': medicalConditions,
      'allergies': allergies,
      'medications': medications,
    };
  }
}

class Membership {
  String planId;
  String startDate;

  Membership({required this.planId, required this.startDate});

  factory Membership.fromJson(Map<String, dynamic> json) {
    return Membership(
      planId: json['planId'],
      startDate: json['startDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'planId': planId,
      'startDate': startDate,
    };
  }
}

class Profile {
  String profileImageUrl;
  bool receiveNotifications;

  Profile({required this.profileImageUrl, required this.receiveNotifications});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      profileImageUrl: json['profileImageUrl'],
      receiveNotifications: json['receiveNotifications'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'profileImageUrl': profileImageUrl,
      'receiveNotifications': receiveNotifications,
    };
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

  Map<String, dynamic> toJson() {
    return {'profilePicUrl': profilePicUrl, 'album': album};
  }
}
