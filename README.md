# Shanks: Rabun National Golfing Committee App

## About Shanks

Shanks is a Ruby on Rails application designed to enhance the golfing experience for members of the Rabun National Golfing Committee. This MVP version focuses on core functionalities such as tracking golf rounds for multiple players, facilitating social connections within the golfing community, and providing detailed course data. Our goal is to streamline the golfing experience through technology, making it easier for players to log rounds, connect with fellow golfers, and access comprehensive information about golf courses.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Before you begin, ensure you have the following software installed on your system:

- Ruby (version 3.1.x or higher)
- Rails (version 7.x)
- PostgreSQL (latest stable version)
- Node.js (latest LTS version)
- Yarn (latest version)

### Installation

1. **Clone the repository**

git clone https://github.com/yourusername/shanks.git
cd shanks

markdown


2. **Install dependencies**

Use Bundler and Yarn to install the necessary Ruby gems and Node.js packages:

bundle install
yarn install

markdown


3. **Setup the database**

Create and migrate the database:

rails db:create
rails db:migrate

markdown


4. **Start the Rails server**

rails server

markdown


After starting the server, navigate to `http://localhost:3000` in your web browser to view the application.

## Features

- **Round Tracking for Multiple Players:** Log rounds for yourself and friends, including scores, notes, and multimedia memories.
- **Committee Social:** Discover and connect with other committee members, share experiences, and discuss golfing tips.
- **Course Data:** Access and contribute detailed information about golf courses, starting with Rabun National.
