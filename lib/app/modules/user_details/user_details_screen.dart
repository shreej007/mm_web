import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/data/models/user_model.dart';
import 'package:myapp/app/modules/user_details/user_details_controller.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserDetailsController>(
      init: UserDetailsController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Obx(() {
              final user = controller.user.value;
              return Text(user != null
                  ? '${user.basicInfo?.firstName} ${user.basicInfo?.lastName}'
                  : 'User Details');
            }),
            elevation: 2,
          ),
          body: controller.obx(
            (state) => _buildUserDetails(context, state!),
            onLoading: const Center(child: CircularProgressIndicator()),
            onError: (error) => Center(child: Text('Error: $error')),
            onEmpty: const Center(child: Text('No user data found.')),
          ),
        );
      },
    );
  }

  Widget _buildUserDetails(BuildContext context, UserModel user) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProfileHeader(context, user),
          const SizedBox(height: 24),
          _buildSection(context, 'Basic Information', _buildBasicInfo(user)),
          _buildSection(context, 'Physical Attributes', _buildPhysicalAttributes(user)),
          _buildSection(context, 'Horoscope Details', _buildHoroscopeDetails(user)),
          _buildSection(context, 'Career Details', _buildCareerDetails(user)),
          _buildSection(context, 'Family Details', _buildFamilyDetails(user)),
          _buildSection(context, 'Expectations', _buildExpectations(user)),
          _buildSection(context, 'Profile Photos', _buildProfilePhotos(user)),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context, UserModel user) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: user.profilePhotos?.profilePicUrl != null &&
                    user.profilePhotos!.profilePicUrl!.isNotEmpty
                ? NetworkImage(user.profilePhotos!.profilePicUrl!)
                : null,
            child: user.profilePhotos?.profilePicUrl == null ||
                    user.profilePhotos!.profilePicUrl!.isEmpty
                ? const Icon(Icons.person, size: 50)
                : null,
          ),
          const SizedBox(height: 12),
          Text(
            '${user.basicInfo?.firstName ?? ''} ${user.basicInfo?.lastName ?? ''}',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            user.basicInfo?.email ?? 'No email provided',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, Widget content) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            const Divider(height: 20, thickness: 1),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(value ?? 'N/A'),
        ],
      ),
    );
  }

  Widget _buildBasicInfo(UserModel user) {
    final basicInfo = user.basicInfo;
    return Column(
      children: [
        _buildDetailRow('Gender', basicInfo?.gender),
        _buildDetailRow('Date of Birth', basicInfo?.birthdate?.toString().split(' ')[0]),
        _buildDetailRow('Sub-caste', basicInfo?.subCaste),
      ],
    );
  }

  Widget _buildPhysicalAttributes(UserModel user) {
    final physical = user.physicalAttribute;
    return _buildDetailRow('Height', physical?.height);
  }

  Widget _buildHoroscopeDetails(UserModel user) {
    final horoscope = user.horoscopeDetails;
    return Column(
      children: [
        _buildDetailRow('Rashi', horoscope?.rashi),
        _buildDetailRow('Nakshatra', horoscope?.nakshatra),
      ],
    );
  }

  Widget _buildCareerDetails(UserModel user) {
    final career = user.careerDetails;
    return Column(
      children: [
        _buildDetailRow('Occupation Type', career?.occupationType),
        _buildDetailRow('Annual Income', career?.personalIncome?.toString()),
      ],
    );
  }

  Widget _buildFamilyDetails(UserModel user) {
    final family = user.familyDetails;
    return Column(
      children: [
        _buildDetailRow('Father\'s Name', family?.parentNames),
        _buildDetailRow('Number of Siblings', '${(family?.brothers ?? 0) + (family?.sisters ?? 0)}'),
        _buildDetailRow('Family Type', family?.nativeDistrict),
      ],
    );
  }

  Widget _buildExpectations(UserModel user) {
    final expectations = user.expectations;
    return Column(
      children: [
        _buildDetailRow('Min Height', expectations?.expectedHeight),
        _buildDetailRow('Max Age Difference', expectations?.minAgeGap?.toString()),
        _buildDetailRow('Expected Occupation', expectations?.expectedOccupation),
      ],
    );
  }

  Widget _buildProfilePhotos(UserModel user) {
    final photos = user.profilePhotos?.album;
    if (photos == null || photos.isEmpty) {
      return const Text('No additional photos available.');
    }

    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: photos.length,
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              photos[index],
              width: 100,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 40),
            ),
          );
        },
      ),
    );
  }
}
