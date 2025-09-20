# Matrimonial App Blueprint

## Overview

This document outlines the features and design of a matrimonial matchmaking application. The app allows users to create detailed profiles, browse other users, and manage their information.

**Supported Platforms:** Android, Web

## Core Features

*   **User Management:** Create, view, edit, and delete user profiles.
*   **Detailed User Profiles:** Profiles include sections for basic information, physical attributes, horoscope, career, family, and partner expectations.
*   **Search and Filter:** Users can search for other users by name or email, and apply advanced filters for gender, sub-caste, and occupation.
*   **Membership Management:** Administrators can create, read, update, and delete membership plans.
*   **Dummy Data:** The application is pre-populated with dummy data for development and testing purposes.

## User Profile Data Structure

The `UserModel` is the core data structure for user profiles and includes the following nested classes:

*   `BasicInfo`: First name, last name, gender, birthdate, email, etc.
*   `PhysicalAttribute`: Height, weight, complexion, etc.
*   `HoroscopeDetails`: Birth time, rashi, nakshatra, etc.
*   `CareerDetails`: Education, occupation, income, etc.
*   `FamilyDetails`: Parent information, siblings, family estate, etc.
*   `Expectations`: Partner preferences for city, height, education, etc.
*   `ProfilePhotos`: Profile picture and photo album.

## Membership Plan Data Structure

The `MembershipPlan` model includes the following fields:

*   `id`: A unique identifier for the plan.
*   `name`: The name of the membership plan (e.g., "Premium", "Free").
*   `price`: The cost of the plan.
*   `durationInDays`: The duration of the plan in days.

## UI/UX Design

*   **User List:** A clean, card-based layout displays a summary of each user with their full name, email, and mobile number. Actions for viewing, editing, and deleting are readily accessible.
*   **User Details:** A comprehensive view with expandable sections for each category of the user's profile.
*   **Add/Edit User Form:** A multi-section form allows for easy input and modification of all user data.
*   **Membership Plan List:** A `DataTable` displays all membership plans with their name, price, and duration. Actions for editing and deleting plans are included.
*   **Add/Edit Membership Form:** A simple form for creating and updating membership plans.
