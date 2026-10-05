
# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A **Two-Tier Architecture** is a system that divides an application into two separate parts: the **Web/Application Tier** and the **Database Tier**. Each part performs a specific task while communicating with the other to provide the complete application service.

## The Web/Application Tier

The Web/Application Tier handles the part of the system that users interact with. It displays the web interface, receives HTTP requests, processes user actions, and communicates with the database when information is needed.

## The Database Tier

The Database Tier stores and manages the application's important data. It keeps information such as user accounts, records, and other data that needs to be saved and accessed by the application.

## Why Separate Them?

Keeping the web server and database in separate containers makes the application easier to manage and update. It also provides better organization and security because each container focuses on its own task rather than having both services running in one container.
