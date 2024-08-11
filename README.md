<a name="readme-top"></a>

<div align="center">
 <h1>Slack Url Shortener</h1>
</div>

📗 Table of Contents

- [📖 \[Slack-url-shortener\] ](#-slack-url-shortener-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
  - [Database Setup](#database-setup)
    - [Usage](#usage)
    - [Deployment](#deployment)
  - [Kanban board](#kanban-board)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [slack-url-shortener] <a name="about-project"></a>

The Slack URL Shortener Rails App is a web application that allows you to shorten long URLs into more manageable and user-friendly short URLs right from your Slack workspace. 

## 🛠 Built With <a name="built-with"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><p> <b>Ruby on Rails: </b></p></li>
  </ul>
</details>

### Tech Stack <a name="tech-stack"></a>

<summary>Ruby on Rails</summary>
  <ul>
    <li><a href="https://guides.rubyonrails.org">Ruby on Rails</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **[Shorten long URLs to short, easy-to-share links]**
- **[Integration with Slackbot for seamless URL shortening.]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

Before you begin, ensure you have the following:

### Prerequisites

- Ruby (version 3.2.2)
- Ruby on Rails (version 7.0.8)
- PostgreSQL 
- Slack workspace with a custom Slackbot
- Basic knowledge of Rails applications and Slackbot integrations

### Install

Follow these steps to install and configure the Slackbot URL Shortener Rails App:

## Clone this repository to your local machine:
 - git clone git@github.com:david30-maker/slack-url-shortener.git
 ## Navigate to the project directory:
 - cd shortened_url_app
## Install the required Ruby gems:
- bundle install

## Create and configure your database:

- rails db:create
- rails db:migrate

## Set up your Slackbot:
- In your slack bot configuration, add a slash command: `/shorten_url`. The request url for this command should be `your_rails_app_base_url/shortened_url/create`
- Create a new Slackbot integration in your Slack workspace.
- Note the API token generated for your Slackbot.
## Configure environment variables:

- Create a .env file in the project root directory.

## Add the following environment variables to the .env file:
- SLACK_API_TOKEN=your_slack_api_token
- APP_DOMAIN=your_app_base_url

## Start the Rails server:
- rails server

### Usage
Once the Slackbot URL Shortener Rails App is set up and running, you can start using it in your Slack workspace. Here's how to use it:

In any Slack channel or private message
- Add your bot to the channel or conversation. You can use /invite to do this.
-  Type /shorten followed by the long URL you want to shorten. For example: `/shorten https://www.example.com/very-long-url-with-lots-of-characters`

### Deployment


## 👥 Author <a name="authors"></a>

👤 **Okpah Igbo**

- GitHub: [@david30-maker](https://github.com/david30-maker)
- Twitter: [@davidigbo1](https://twitter.com/davidigbo1)
- LinkedIn: [davidigbo/](https://www.linkedin.com/in/davidigbo/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- **Send error report to the user if submitted url is invalid**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ⭐️ Show your support <a name="support"></a>

Give a start ⭐️ If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>
Special thanks to Peplebox for this opportunity

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
