# Newsbot

Newsbot is a project designed to become your home, for news.  This project has grown in the last couple years I have been working on it.  Start out as a python project but now is golang microservices.

## Components

- [collector.api](https://github.com/jtom38/newsbot.collector.api)
  - This will go out and collect from different news sources and send out notifications when matches are found.
- [portal](https://github.com/jtom38/newsbot.portal)
  - This is the web ui to view/edit the service

## Roadmap

**This is subject to change but will give an idea of where the project is going.**

- [Newsbot](#newsbot)
  - [Components](#components)
  - [Roadmap](#roadmap)
  - [MVP](#mvp)
    - [API - v0.1.x](#api---v01x)
    - [Portal - v0.1.x](#portal---v01x)
  - [v.0.2.x](#v02x)
    - [API - v0.2.x](#api---v02x)
    - [Portal - v0.2.x](#portal---v02x)
  - [v.0.3.x](#v03x)
    - [API](#api)
  - [Backlog](#backlog)
    - [Api](#api-1)
      - [Planned Features](#planned-features)

## MVP

### API - v0.1.x

- [x] Pull posts from Reddit
- [x] Pull posts from YouTube
- [x] Pull posts from twitch
- [x] Pull posts from ffxiv
- [x] Create Postgres connection
- [x] Create routes to interface with app
- [x] Create subscriptions to feeds
- [x] Post to discord
- [x] setup feature flags
- [x] Validate app works concurrently

### Portal - v0.1.x

- [x] Has an usable ui.
- [ ] View Articles
  - [ ] View Reddit
    - [ ] Text Posts
    - [ ] Picture Posts
    - [ ] Video Posts
  - [x] View Youtube
    - [x] View Videos
  - [x] View FFXIV
  - [ ] View Twitch
- [ ] Manage Sources
- [ ] Manage Discord Web Hooks
- [ ] Manage Subscriptions

## v.0.2.x

### API - v0.2.x

- [ ] Has health Check
- [ ] Create Subscriptions by Tag
- [ ] Pulls from Twitter
- [ ] Reddit
  - [ ] new tags to define text, image or video
  - [ ] Parser needs to collect page meta data from the header

### Portal - v0.2.x

- [ ] Manage Twitter Sources
- [ ] View Twitter Posts
- [ ] Manage Subscriptions by Tag
  - This lets people pick tags they want to see rather then all posts

## v.0.3.x

### API

- [ ] Add open telemetry to the project
- [ ] Pull posts from rss

## Backlog

### Api

- [ ] Add API Tokens
  - Random GUID or a value set in env
- [ ] Add roles
- [ ] Add users
- [ ] Import config
- [ ] Export config
- [ ] Add basic email support
- [ ] Cache article to avoid redirects
  - [ ] Elastic search
- [ ] Submit articles to it that don’t get pasted

#### Planned Features

This list is not implemtation order or commited to be im

- User Auth
  - Use Auth0
- Users can Import/Export feed
  - Think this is the .opml format
- api tokens
  - Admin tokens
  - Tokens for users
- Pull in podcast feeds
  - Seed some basic feeds
  - Configure feeds on the ui
- New Outputs
  - Slack webhooks
  - Teams webhooks
  - Email
- Sources
  - Github Repos
    - Code updates
    - Get New releases
