# Project Blueprint

## Overview

This document outlines the architecture, features, and design of the Flutter Admin Panel application. The goal is to create a responsive and intuitive interface for managing users and memberships.

## Current Features & Design

*   **UI/UX:**
    *   Modern design with a gradient-based color scheme.
    *   Responsive layout for both mobile and web/desktop.
    *   Dashboard with summary cards for key metrics (Total Users, Brides, Grooms).
    *   User list with search and filter capabilities.
    *   Detailed user view.
    *   Membership plan management screen.
*   **Architecture:**
    *   Built with Flutter and the GetX framework for state management and routing.
    *   Feature-based project structure (e.g., `modules/dashboard`, `modules/users`).
    *   Currently uses dummy data for all functionality.

## Plan for Current Request: API Integration

The following steps will be taken to connect the Flutter application to a Node.js/MongoDB backend API.

### 1. **Add HTTP Dependency**
   - Add the `http` package to `pubspec.yaml` to enable making HTTP requests.

### 2. **Create a Centralized API Service**
   - Create a new file: `lib/app/data/api_service.dart`.
   - This service will manage all network communication.
   - It will include a placeholder for the base API URL (e.g., `http://your-api-url.com/api`).
   - It will contain generic methods for `GET`, `POST`, `PUT`, and `DELETE` requests, handling JSON serialization and error responses.

### 3. **Update Data Models for Serialization**
   - Modify `UserModel` (`lib/app/data/models/user_model.dart`) and `MembershipPlanModel` (`lib/app/data/models/membership_plan_model.dart`).
   - Add `fromJson` and `toJson` factory methods to these models to allow easy conversion between Dart objects and JSON.

### 4. **Integrate API with Login (`LoginController`)**
   - **File:** `lib/app/modules/login/login_controller.dart`
   - **Action:**
     - Replace the current dummy authentication logic with an API call.
     - The `login` method will send the username and password to a `POST /api/auth/login` endpoint.
     - On success, it will store the received authentication token (e.g., in GetStorage or memory) and navigate to the dashboard.
     - On failure, it will display an error message to the user.

### 5. **Integrate API with User Management**
   - **Files:** `UsersController`, `AddUserController`, `UserDetailsController`
   - **Actions:**
     - **`UsersController`:**
       - Fetch the list of users from a `GET /api/users` endpoint instead of `dummy_users`.
       - The search and filter logic will operate on the data fetched from the API.
     - **`AddUserController`:**
       - On saving a new user, send the user data to a `POST /api/users` endpoint.
     - **`UserDetailsController`:**
       - Fetch the complete details for a specific user from a `GET /api/users/{id}` endpoint.

### 6. **Integrate API with Membership Management**
   - **File:** `MembershipController`
   - **Action:**
     - Fetch the list of membership plans from a `GET /api/memberships` endpoint.
     - Implement the logic in `AddEditMembershipScreen` to create or update plans using `POST /api/memberships` and `PUT /api/memberships/{id}` respectively.

### 7. **Error Handling & State Management**
   - Update all relevant controllers to manage loading (`isLoading`) and error states during API calls.
   - The UI will be updated to show loading indicators and user-friendly error messages.
