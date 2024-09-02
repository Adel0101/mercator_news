# mercator_news_app

A simple news app.

News App

Overview

This is a simple news app built with Flutter that fetches articles from a provided API and displays them on the home screen. 
Users can click on an article to view its details and share the article via WhatsApp.

Features
Home Screen: Displays a list of articles fetched from an API, including the article title, thumbnail image, a short description, and 
the publication date.

Article Details Screen: Shows the full details of an article, including the full title, content, author name, publication date.

A share button allows users to share the article
.
Pull-to-Refresh: The home screen includes a pull-to-refresh feature to reload articles.

Error Handling: The app handles scenarios where the API fails to fetch data (e.g., no internet connection) and displays appropriate error messages.

Responsive Design: The app is designed to work smoothly on different screen sizes.

Project Structure

- lib/: Contains the main application code.
- pages/: Contains the screens for the app, including the home screen and article details screen.
- services/: Contains the API service for fetching articles.
- utils/: Contains utility files, constants, and helper functions.
- widgets/: Contains reusable UI components.

Dependencies

flutter_riverpod: For state management.
cached_network_image: For displaying images with caching.
share_plus: For sharing articles via WhatsApp.