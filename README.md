# This Week in Matrix

This repository contains the configuration used by [Hebbot](https://github.com/haecker-felix/hebbot) to produce [This Week in Matrix (TWIM)](https://matrix.org/twim) issues.

This Week in Matrix is a blog post published weekly, and generated from the reports of the Matrix community in [#twim:matrix.org](https://matrix.to/#/#twim:matrix.org). If you work on a Matrix project and want to give your progress some visibility, join the room and drop us a message about it!

## What is TWIM-worthy?

This Week in Matrix doesn't have a formal process to define whether a project fits in or not. We use the following rules as a guide, but eventually it's left to the editor to approve or not the news report:

* If you are reporting **news about a project**, the project itself must either be about Matrix (i.e. a Matrix client, server, bot, or SDK) or using Matrix (e.g. [TheBoard, a whiteboard powered by Matrix](https://github.com/toger5/TheBoard)).
* If you are promoting **an article** you wrote, it doesn't need to be primarily about Matrix, but Matrix shouldn't be anecdotic either.
* If you are reporting **news about a conference** using Matrix, put the emphasis on how you will be using Matrix for your conference. We're excited to see more and more organisations using Matrix for their online conferences! TWIM must not become a billboard for every conference :)

In any case, you are still very welcome to [join #twim:matrix.org](https://matrix.to/#/#twim:matrix.org) and ask if the news is worth reporting!

## How can I report news about my project?

You have made progress on a project, and you feel like it's TWIM-worthy? You want it to appear in the next issue of [This Week in Matrix](https://matrix.org/twim)? It's very simple!

### Reporting news

1. Join [#twim:matrix.org](https://matrix.to/#/#twim:matrix.org) with your favourite Matrix client
2. Mention `TWIM`, followed by your actual news report. Don't worry about leading line breaks, the bot will be able to strip them!
3. The TWIM bot will answer with `✅ Thanks for the report <your display name>, I'll store your update!`

The bot didn't answer? You might have forgotten to mention `TWIM`. That's not a problem! React to your own message with ⭕️ and the bot will pick the submission.

And that's it! Your news report has been stored, an editor has been notified, and your update is very likely to make it to the next issue of TWIM!

### Going the extra mile

You might notice that the TWIM bot sometimes reacts to some reports with text or emoji reactions. This is because of how the bot works. The bot generates all the boilerplate, including the project title, description and a link to the project website.

To know which project the news report refers to (so it can add the proper title, description and link), the bot expects the editor to send a reaction to that report. Those can be emoji, but that doesn't scale really well. But those can also be actual text reactions!

When someone reports a news, the bot looks up in its configuration. If the person reporting the news is identified as a usual reporter of one or several projects, the bot reacts with the projects names so the editor only has to click on the correct one to confirm which project this news is related to.

If you want the TWIM bot to be aware of your project, feel free to [open an issue](https://github.com/matrix-org/twim-config/issues/new?assignees=&labels=&template=add_project.yml&title=%5BProject%5D+) or a pull request to get your project added to [Hebbot's configuration](https://github.com/matrix-org/twim-config/blob/master/config.toml)!

### Do I need to add an emoji to add it to a section?

Not anymore! The editor (and most of the time the bot itself) will sort your news report in the correct section. Those sections are defined in the [config.toml](https://github.com/matrix-org/twim-config/blob/master/config.toml) file and are the following:

* Dept of *Status of Matrix* 🌡️
* Dept of Social Good 🙆
* Dept of Spec 📜
* Dept of GSoC 🎓️
* Dept of P2P 👥
* Dept of Servers 🏢
* Homeserver Deployment 📥️
* Dept of Bridges 🌉
* Dept of Clients 📱
* Dept of VoIP 🤙
* Dept of Encryption 🔐
* Dept of SDKs and Frameworks 🧰
* Dept of Ops 🛠
* Dept of Services 🚀
* Dept of Blockchain 🤷
* Dept of Internet of Things 💡
* Dept of Bots 🤖
* Dept of Event Videos 📹
* Dept of Events and Talks 🗣️
* Dept of Interesting Projects 🛰️
* Dept of *Built on Matrix* 🏗️
* Dept of Guides 🧭
* Dept of Hackathons 🍕
* Dept of Jobs 💰️
* Matrix in the News 📰
* New Public Rooms 🏟️
* Dept of Welcomes 👐
* Room of the Week 📆
* Final Thoughts 💭

## Contributing

We deploy this project via kubernetes using Helm. The repo is thus organised around the Helm chart.

The bot-specific config is under /charts/files.
It consists of:

1. The config file in TOML format. Add an entry by building on the examples of the existing file.
   We use [taplo](https://taplo.tamasfe.dev/cli/usage/formatting.html) as TOML linter and formatter.
   Run `taplo fmt` to apply it, or the CI *will* complain.
2. The template in Markdown format with specific placeholders supported by hebbot.
   See the [Hebbot](https://github.com/haecker-felix/hebbot) docs for more info.
