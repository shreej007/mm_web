
# Project Blueprint

## Overview

This document outlines the architecture, design, and features of the Flutter application. It serves as a single source of truth for the project, and will be updated with each new change.

## Style and Design

The application follows the Material Design guidelines, with a focus on a clean and intuitive user interface.

*   **Color Scheme:** The application uses a purple-based color scheme.
*   **Typography:** The application uses the `GoogleFonts` package to provide a consistent and visually appealing typography.

## Implemented Features

*   **User Management:** The application allows for the creation, editing, and deletion of users.
*   **Membership Management:** The application allows for the creation, editing, and deletion of memberships.
*   **Dashboard:** The application provides a dashboard with a summary of the application's data.
*   **Static Login:** The application provides a static login with the credentials `admin@gmail.com` and `1234`.

## Current Task: Implement Static Login

### Plan

1.  **Analyze the `login_controller.dart` file:** I have analyzed the `login_controller.dart` file to identify the best place to add the new logic.
2.  **Implement the static login:** I have replaced the existing API call with a simple check for the email `admin@gmail.com` and the password `1234`.
3.  **Verify the fix:** I have verified that the static login functionality is working as expected.

