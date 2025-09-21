import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/modules/users/users_controller.dart'; // Changed from UserDetailsController

class UserDetailsScreen extends StatelessWidget { // Changed to StatelessWidget
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UsersController controller = Get.find(); // Find the existing UsersController
    final UserModel user = Get.arguments as UserModel; // Get user from arguments

    return Scaffold(
      appBar: AppBar(
        title: Text('${user.personalInfo?.firstName ?? ''} ${user.personalInfo?.lastName ?? ''}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => controller.goToEditUser(user), // Use the existing method
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
            if (user.personalInfo != null) _buildSectionCard(context, title: 'Personal Information', child: _buildPersonalInfo(user.personalInfo!)),
            if (user.contactInfo != null) _buildSectionCard(context, title: 'Contact Information', child: _buildContactInfo(user.contactInfo!)),
            if (user.address != null) _buildSectionCard(context, title: 'Address', child: _buildAddress(user.address!)),
            if (user.emergencyContact != null) _buildSectionCard(context, title: 'Emergency Contact', child: _buildEmergencyContact(user.emergencyContact!)),
            if (user.healthInfo != null) _buildSectionCard(context, title: 'Health Information', child: _buildHealthInfo(user.healthInfo!)),
            if (user.membership != null) _buildSectionCard(context, title: 'Membership', child: _buildMembership(user.membership!)),
            if (user.profile != null) _buildSectionCard(context, title: 'Profile & Settings', child: _buildProfile(user.profile!)),
            if (user.profilePhotos != null) _buildSectionCard(context, title: 'Profile Photos', child: _buildProfilePhotos(user.profilePhotos!)),
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
          backgroundImage: user.profile?.profileImageUrl != null && user.profile!.profileImageUrl.isNotEmpty
              ? NetworkImage(user.profile!.profileImageUrl)
              : null,
          child: user.profile?.profileImageUrl == null || user.profile!.profileImageUrl.isEmpty
              ? Text(
                  user.personalInfo?.firstName[0].toUpperCase() ?? 'U',
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: theme.colorScheme.primary),
                )
              : null,
        ),
        const SizedBox(height: 16),
        Text(
          '${user.personalInfo?.firstName ?? ''} ${user.personalInfo?.lastName ?? ''}',
          style: theme.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          user.contactInfo?.email ?? 'No email provided',
          style: theme.textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
        ),
      ],
    );
  }

    Widget _buildSectionCard(BuildContext context, {required String title, required Widget child}) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        initiallyExpanded: true,
        title: Text(title, style: theme.textTheme.titleLarge?.copyWith(color: theme.colorScheme.primary)),
        children: [Padding(padding: const EdgeInsets.all(16), child: child)],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 140, child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildPersonalInfo(PersonalInfo info) {
    return Column(
      children: [
        _buildInfoRow('First Name', info.firstName),
        _buildInfoRow('Last Name', info.lastName),
        _buildInfoRow('Date of Birth', info.dateOfBirth),
        _buildInfoRow('Gender', info.gender),
      ],
    );
  }

  Widget _buildContactInfo(ContactInfo info) {
    return Column(
      children: [
        _buildInfoRow('Email', info.email),
        _buildInfoRow('Phone Number', info.phoneNumber),
      ],
    );
  }

  Widget _buildAddress(Address info) {
    return Column(
      children: [
        _buildInfoRow('Street', info.street),
        _buildInfoRow('City', info.city),
        _buildInfoRow('State', info.state),
        _buildInfoRow('Zip Code', info.zipCode),
        _buildInfoRow('Country', info.country),
      ],
    );
  }

  Widget _buildEmergencyContact(EmergencyContact info) {
    return Column(
      children: [
        _buildInfoRow('Name', info.name),
        _buildInfoRow('Relationship', info.relationship),
        _buildInfoRow('Phone', info.phone),
      ],
    );
  }

  Widget _buildHealthInfo(HealthInfo info) {
    return Column(
      children: [
        _buildInfoRow('Medical Conditions', info.medicalConditions.join(', ')),
        _buildInfoRow('Allergies', info.allergies.join(', ')),
        _buildInfoRow('Medications', info.medications.join(', ')),
      ],
    );
  }

  Widget _buildMembership(Membership info) {
    return Column(
      children: [
        _buildInfoRow('Plan ID', info.planId),
        _buildInfoRow('Start Date', info.startDate),
      ],
    );
  }

  Widget _buildProfile(Profile info) {
    return Column(
      children: [
        _buildInfoRow('Receive Notifications', info.receiveNotifications ? 'Yes' : 'No'),
      ],
    );
  }

  Widget _buildProfilePhotos(ProfilePhotos photos) {
    return photos.album.isEmpty
        ? const Text('No photos uploaded.')
        : Wrap(
            spacing: 8,
            runSpacing: 8,
            children: photos.album.map((url) => Image.network(url, width: 100, height: 100, fit: BoxFit.cover)).toList(),
          );
  }
}
