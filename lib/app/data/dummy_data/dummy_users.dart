import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/data/models/basic_info_model.dart';
import 'package:myapp/app/data/models/physical_attribute_model.dart';
import 'package:myapp/app/data/models/horoscope_details_model.dart';
import 'package:myapp/app/data/models/career_details_model.dart';
import 'package:myapp/app/data/models/family_details_model.dart';
import 'package:myapp/app/data/models/expectations_model.dart';
import 'package:myapp/app/data/models/profile_photos_model.dart';

final List<UserModel> dummyUsers = [
  UserModel(
    id: '1',
    basicInfo: const BasicInfo(
      firstName: 'Rushi',
      middleName: 'V',
      lastName: 'Patil',
      gender: 'Male',
      birthdate: '1995-06-15',
      subCaste: 'Maratha',
      email: 'rushi.patil@example.com',
      mobile: '9876543210',
    ),
    physicalAttribute: const PhysicalAttribute(
      height: '5\'10"',
      weight: '75kg',
      complexion: 'Fair',
      bloodGroup: 'O+',
    ),
    horoscopeDetails: const HoroscopeDetails(
      birthTime: '10:30 AM',
      birthDistrict: 'Pune',
      rashi: 'Simha',
      nakshatra: 'Magha',
    ),
    careerDetails: const CareerDetails(
      degree: 'B.E. Computer',
      edufield: 'Engineering',
      occupationType: 'Salaried',
      occupationPlace: 'Pune',
      personalIncome: 1200000,
    ),
    familyDetails: const FamilyDetails(
      fatherAlive: true,
      motherAlive: true,
      brothers: 1,
      marriedBrothers: 0,
      sisters: 1,
      marriedSister: 1,
      parentNames: 'Mr. & Mrs. Patil',
      parentOccupation: 'Farmer',
      parentsResideCity: 'Pune',
      nativeDistrict: 'Satara',
      nativeTaluka: 'Karad',
      familyEstate: 'House and Farm',
      surnamesOfRelatives: ['Jadhav', 'More'],
      maternalPlaceSurname: 'Pawar',
      intercasteStatus: 'No',
    ),
    expectations: const Expectations(
      preferredCities: ['Pune', 'Mumbai'],
      mangalDosh: false,
      expectedSubCaste: 'Maratha',
      expectedHeight: '5\'4" - 5\'8"',
      minAgeGap: 3,
      expectedEducation: 'Graduate',
      expectedOccupation: 'Salaried',
      incomePerMonth: 50000,
      expectedMaritalStatus: 'Never Married',
    ),
    profilePhotos: const ProfilePhotos(
      profilePicUrl: 'https://via.placeholder.com/150',
      album: [
        'https://via.placeholder.com/300',
        'https://via.placeholder.com/300'
      ],
    ),
  ),
];
