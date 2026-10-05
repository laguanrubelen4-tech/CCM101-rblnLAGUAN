
# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A Two-Tier Architecture is an application architecture that divides a system into two main parts. The first part is the Web/Application Tier, which handles the application and communication with users. The second part is the Database Tier, which stores and manages the application's data.

In this laboratory activity, Nextcloud is the Web/Application Tier and MariaDB is the Database Tier.

## The Web/Application Tier

The Web/Application Tier is responsible for providing the application that users access.

In this activity, Nextcloud acts as the Web/Application Tier. It provides the private cloud storage interface that users can access using a web browser.

The Nextcloud container also handles HTTP requests from users. It communicates with the MariaDB database when it needs to store or retrieve application information.

The application is made available through port 8080.

## The Database Tier

The Database Tier is responsible for storing and managing persistent data.

In this activity, MariaDB acts as the Database Tier. It stores the information required by Nextcloud, such as user accounts and file-related metadata.

The MariaDB database works together with the Nextcloud application to provide the private cloud storage system.

## Why Separate Them?

It is better to place the web application and database in separate containers because each container has a specific responsibility. This makes the system easier to manage, troubleshoot, and maintain.



