# Matrimonial App Blueprint

## Overview

This document outlines the features and design of a matrimonial matchmaking application. The app allows users to create detailed profiles, browse other users, and manage their information.

**Supported Platforms:** Android, Web

## Core Features

*   **User Management:** Create, view, edit, and delete user profiles.
*   **Detailed User Profiles:** Profiles include sections for basic information, physical attributes, horoscope, career, family, and partner expectations.
*   **Search and Filter:** Users can search for other users by name or email.
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

## UI/UX Design

*   **User List:** A clean, card-based layout displays a summary of each user with their full name, email, and mobile number. Actions for viewing, editing, and deleting are readily accessible.
*   **User Details:** A comprehensive view with expandable sections for each category of the user's profile.
*   **Add/Edit User Form:** A multi-section form allows for easy input and modification of all user data.
