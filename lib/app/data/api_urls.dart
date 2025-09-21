
// lib/app/data/api_urls.dart

class ApiUrls {
  // Replace with your actual API base URL
  static const String baseUrl = "http://10.0.2.2:3000/api"; 

  // --- Auth ---
  static const String login = 'auth/login';
  /*
  POST /api/auth/login
  Request:
  {
    "email": "user@example.com",
    "password": "your_password"
  }
  Response (Success):
  {
    "token": "your_jwt_token",
    "user": { ...user object... }
  }
  Response (Error):
  {
    "message": "Invalid credentials"
  }
  */

  // --- Users ---
  static const String users = 'users';
  /*
  GET /api/users
  Description: Retrieves a list of all users. Supports pagination and filtering.
  Query Params (Optional):
  - page: number (e.g., 1)
  - limit: number (e.g., 20)
  - sortBy: string (e.g., "lastName:asc")
  - filter[isActive]: boolean (e.g., true)
  Response:
  {
    "data": [ { ...user summary object... }, ... ],
    "pagination": {
      "total": 100,
      "page": 1,
      "limit": 20
    }
  }
  */

  /*
  POST /api/users
  Description: Creates a new user.
  Request Body (7-Section Form):
  {
    // Section 1: Personal Information
    "personalInfo": {
      "firstName": "John",
      "lastName": "Doe",
      "dateOfBirth": "1990-05-15T00:00:00.000Z", // ISO 8601 Date
      "gender": "Male" // (e.g., "Male", "Female", "Other", "Prefer not to say")
    },
    // Section 2: Contact Information
    "contactInfo": {
      "email": "john.doe@example.com",
      "phoneNumber": "+1234567890"
    },
    // Section 3: Address
    "address": {
      "street": "123 Main St",
      "city": "Anytown",
      "state": "CA",
      "zipCode": "12345",
      "country": "USA"
    },
    // Section 4: Emergency Contact
    "emergencyContact": {
      "name": "Jane Doe",
      "relationship": "Spouse",
      "phone": "+19876543210"
    },
    // Section 5: Health Information
    "healthInfo": {
      "medicalConditions": ["Asthma"],
      "allergies": ["Peanuts"],
      "medications": ["Inhaler"]
    },
    // Section 6: Membership Details
    "membership": {
      "planId": "60d5f2f5a1b2c3d4e5f6g7h8", // ID of the selected membership plan
      "startDate": "2024-01-01T00:00:00.000Z"
    },
    // Section 7: Profile & Settings
    "profile": {
      "profileImageUrl": "https://example.com/profile.jpg",
      "receiveNotifications": true
    }
  }
  Response (Success - 201 Created):
  { ...full created user object... }
  */

  static String userById(String id) => 'users/$id';
  /*
  GET /api/users/{id}
  Description: Retrieves a single user by their unique ID.
  Response:
  { ...full user object with all 7 sections... }

  PUT /api/users/{id}
  Description: Updates an existing user's information. Send only the fields that need to be updated.
  Request Body (Example: updating address and phone number):
  {
    "contactInfo": {
      "phoneNumber": "+1122334455"
    },
    "address": {
      "street": "456 New Ave",
      "city": "Newville"
    }
  }
  Response (Success):
  { ...full updated user object... }

  DELETE /api/users/{id}
  Description: Performs a "soft delete" by marking a user as inactive.
  Response (Success - 204 No Content or 200 OK):
  {
    "message": "User marked as inactive"
  }
  */

  static String inactivateUser(String id) => 'users/$id/inactivate';
  /*
  PATCH /api/users/{id}/inactivate
  Description: A dedicated endpoint to mark a user as inactive.
  Request Body: (Optional)
  {
    "reason": "User requested account closure."
  }
  Response (Success):
  {
    "message": "User has been inactivated."
  }
  */


  // --- Membership Plans ---
  static const String membershipPlans = 'membership-plans';
  /*
  GET /api/membership-plans
  Response:
  [
    {
      "_id": "plan_id",
      "name": "Gold Plan",
      "price": 49.99,
      "durationInDays": 30
    },
    ...
  ]

  POST /api/membership-plans
  Request:
  {
    "name": "New Plan",
    "price": 19.99,
    "durationInDays": 15
  }
  Response (Success):
  { ...created plan object... }
  */

  static String membershipPlanById(String id) => 'membership-plans/$id';
  /*
  GET /api/membership-plans/{id}
  Response:
  { ...plan object... }

  PUT /api/membership-plans/{id}
  Request:
  {
    "name": "Updated Plan Name",
    "price": 59.99,
    ...
  }
  Response (Success):
  { ...updated plan object... }

  DELETE /api/membership-plans/{id}
  Response (Success):
  {
    "message": "Plan deleted successfully"
  }
  */
}
