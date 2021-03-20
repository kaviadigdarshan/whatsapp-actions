<h1 align="center">:postbox: Whatsapp Actions for Github :postbox: </h1>

## Introduction
This is an action repository with an objective of notifying the user on Whatsapp regarding several changes in their github repositories. Messages sent to Whatsapp are rich-formatted, easy to read and comprehend and also contains supportive media to enhance the experience.

## Unique Features
1. Offers rich-formatted push messages with texts, emojis and all details regarding the event
2. Automatically adds the Github Avatar of the user who triggers the event in the message
3. Includes all relevant URLs for your quick review and launch them in Github app or website

## Get Started

### Create Twilio Account
1. Create an account in twilio from [here](https://www.twilio.com/)
2. Take note of ```ACCOUNT SID``` and ```AUTH TOKEN``` from your twilio account. You can find it under your Twilio Account Dashboard

### Configure your repository secrets
1. Navigate to your repository secrets ```Settings > Secrets```
2. Add below secrets using button ```New repository secret```

 Name              | Value                                              | 
-------------------|----------------------------------------------------|
ACCOUNT_SID        | ```ACCOUNT SID``` copied earlier
AUTH_TOKEN         | ```AUTH TOKEN``` copied earlier
TO_WHATSAPP_NUMBER | Your Whatsapp Number

### Subscribe to Twilio Whatsapp Sandbox
1. Add a contact on your phone for Twilio number: ```+14155238886)```
2. From your Whatsapp number, send a message to the above twilio number in the below format:
   > join "your-name"

   > Example: ```join kavia-digdarshan```

### Prepare the action workflow
1. In your repository page, navigate to ```Actions > New Workflow > set up a workflow yourself```. It will open up a ```yaml``` file in code editor.
2. Replace everything in this ```yaml``` file with below:

```yaml
name: Whatsapp Notification

on: [push, pull_request, issues, fork, watch]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: whatsapp-notify
        uses: kaviadigdarshan/whatsapp-actions@main
        env:
          ACCOUNT_SID: ${{ secrets.ACCOUNT_SID }}
          AUTH_TOKEN: ${{ secrets.AUTH_TOKEN }}
          TO_WHATSAPP_NUMBER: ${{ secrets.TO_WHATSAPP_NUMBER }}
```

## Screenshots

### Pull Request Message

![Message for a PR event](pull_request_notification.jpg)

## Support
Give us a :star2: to support!

Copyright © 2020 [Digdarshan Kavia](https://github.com/kaviadigdarshan)
