# Cameron BotNet Telegram

See the [Telegram Bot API](https://core.telegram.org/bots/api), [CL-Telegram-API](https://github.com/40ants/cl-telegram-bot.git)

This Bot uses CLOS to build a processing pipeline.

## Quickstart

frist of all check if your machine have SBCL, quicklisp (in your .sbclrc file too)

add cl-telegram-bot to your local-projects

```
$ cd ~/quicklisp/local-projects
$ git clone https://github.com/40ants/cl-telegram-bot.git
```

install the package "cl-telegram-bot/core"

```
$ sbcl
* (ql:quickload "cl-telegram-bot/core")
```

then

begin set the variable and export in your local .bashrc (or in your others shell bashs)

export API_TELEGRAM_BOTNET="youid:keyfrombotfather"

or just

```
$ echo 'export API_TELEGRAM_BOTNET="youid:keyfrombotfather"' >> /home/$USER/.bashrc
$ source ~/.bashrc
```

Now run inside Cameron folder

```
$ sh start.sh
```

Now, apreciate and Hack Your Own bot make in Common Lisp.

## Credentials

* [Rei](https://github.com/sovietspaceshipg) – initial version.
* [Alexander Artemenko](https://github.com/svetlyak40wt) – large refactoring, usage of CLOS classes, etc.
* [Haller](https://keybase.io/haller218) – Cameron Implementation
