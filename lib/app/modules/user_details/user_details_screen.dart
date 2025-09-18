
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/modules/user_details/user_details_controller.dart';

class UserDetailsScreen extends GetView<UserDetailsController> {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UserModel user = controller.user;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('${user.basicInfo.firstName} ${user.basicInfo.lastName}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => controller.goToEditUser(),
            tooltip: 'Edit User',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            _buildProfileHeader(context, user),
            const SizedBox(height: 32),
            _buildSectionCard(
              context,
              title: 'Basic Information',
              child: _buildBasicInfo(user.basicInfo),
            ),
            _buildSectionCard(
              context,
              title: 'Physical Attributes',
              child: _buildPhysicalAttributes(user.physicalAttribute),
            ),
            _buildSectionCard(
              context,
              title: 'Horoscope Details',
              child: _buildHoroscopeDetails(user.horoscopeDetails),
            ),
            _buildSectionCard(
              context,
              title: 'Career & Education',
              child: _buildCareerDetails(user.careerDetails),
            ),
            _buildSectionCard(
              context,
              title: 'Family Details',
              child: _buildFamilyDetails(user.familyDetails),
            ),
            _buildSectionCard(
              context,
              title: 'Partner Expectations',
              child: _buildExpectations(user.expectations),
            ),
            _buildSectionCard(
              context,
              title: 'Profile Photos',
              child: _buildProfilePhotos(user.profilePhotos),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, UserModel user) {
    final theme = Theme.of(context);
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
          child: Text(
            user.basicInfo.firstName[0].toUpperCase(),
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          '${user.basicInfo.firstName} ${user.basicInfo.lastName}',
          style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          user.basicInfo.email,
          style: theme.textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
        ),
      ],
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required Widget child}) {
    final theme = Theme.of(context);
    return Card(
      child: ExpansionTile(
        initiallyExpanded: true,
        shape: const Border(), // Remove the border when expanded
        title: Text(
          title,
          style: theme.textTheme.titleLarge?.copyWith(
                color: theme.colorScheme.primary,
              ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: child,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    final theme = Theme.of(Get.context!);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 150,
              child: Text(label, style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold))),
          const SizedBox(width: 16),
          Expanded(child: Text(value, style: theme.textTheme.bodyMedium)),
        ],
      ),
    );
  }

  Widget _buildBasicInfo(BasicInfo info) {
    return Column(
      children: [
        _buildInfoRow('Full Name', '${info.firstName} ${info.middleName} ${info.lastName}'),
        _buildInfoRow('Gender', info.gender),
        _buildInfoRow('Birthdate', info.birthdate),
        _buildInfoRow('Sub-Caste', info.subCaste),
        _buildInfoRow('Email', info.email),
        _buildInfoRow('Mobile', info.mobile),
      ],
    );
  }

  Widget _buildPhysicalAttributes(PhysicalAttribute attrs) {
    return Column(
      children: [
        _buildInfoRow('Height', attrs.height),
        _buildInfoRow('Weight', attrs.weight),
        _buildInfoRow('Complexion', attrs.complexion),
        _buildInfoRow('Blood Group', attrs.bloodGroup),
      ],
    );
  }

  Widget _buildHoroscopeDetails(HoroscopeDetails details) {
    return Column(
      children: [
        _buildInfoRow('Birth Time', details.birthTime),
        _buildInfoRow('Birth District', details.birthDistrict),
        _buildInfoRow('Rashi', details.rashi),
        _buildInfoRow('Nakshatra', details.nakshatra),
      ],
    );
  }

  Widget _buildCareerDetails(CareerDetails details) {
    return Column(
      children: [
        _buildInfoRow('Degree', details.degree),
        _buildInfoRow('Education Field', details.edufield),
        _buildInfoRow('Occupation', details.occupationType),
        _buildInfoRow('Occupation Place', details.occupationPlace),
        _buildInfoRow('Monthly Income', '₹${details.personalIncome.toStringAsFixed(2)}'),
      ],
    );
  }

  Widget _buildFamilyDetails(FamilyDetails details) {
    return Column(
      children: [
        _buildInfoRow('Father Alive', details.fatherAlive ? 'Yes' : 'No'),
        _buildInfoRow('Mother Alive', details.motherAlive ? 'Yes' : 'No'),
        _buildInfoRow('Siblings', '${details.brothers} Brother(s), ${details.sisters} Sister(s)'),
        _buildInfoRow('Parents', details.parentNames),
        _buildInfoRow('Parent Occupation', details.parentOccupation),
        _buildInfoRow('Native District', details.nativeDistrict),
        _buildInfoRow('Intercaste Marriage', details.intercasteStatus),
      ],
    );
  }

  Widget _buildExpectations(Expectations expects) {
    return Column(
      children: [
        _buildInfoRow('Preferred Cities', expects.preferredCities.join(', ')),
        _buildInfoRow('Mangal Dosh', expects.mangalDosh ? 'Yes' : 'No Problem'),
        _buildInfoRow('Expected Height', expects.expectedHeight),
        _buildInfoRow('Expected Education', expects.expectedEducation),
        _buildInfoRow('Expected Occupation', expects.expectedOccupation),
      ],
    );
  }

  Widget _buildProfilePhotos(ProfilePhotos photos) {
    // Placeholder for photo gallery
    return photos.album.isEmpty
        ? const Text('No photos uploaded.')
        : const Text('Photo gallery will be implemented here.');
  }
}
