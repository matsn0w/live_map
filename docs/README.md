---
layout: default
title: LiveMap Resource
has_children: true
permalink: /livemap-resource
---

# LiveMap Resource (for FiveM) <!-- omit in toc -->
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-10-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

This is the "backend" code for the live_map addon for FiveM that is ran on the FiveM game server.
It creates a websocket server so that it can communicate to the web interface.

- [How to install](#how-to-install)
- [Configuration](#configuration)
- [Events](#events)
- [Contributors ✨](#contributors-)

## How to install

Download the ZIP file. And extract the contents into `resources/live_map/`.

Add the following to your server.cfg file.

```
set socket_port 30121
set livemap_debug "warn" # "[all]" 'trace', 'debug', 'info', 'warn', 'error', 'fatal', 'off'
set blip_file "server/blips.json"
set livemap_access_control "*"

ensure live_map
```

Now, you can enable the built-in client.
Copy the `example_client` folder to `client` (this will allow you to update the resource without losing any changes to the client you make).
Now, head on into the manifest file (`fxmanifest.lua` or whatever the latest version is called) and uncomment the client files.
```lua
client_script "client/*.lua"
 exports {
     "reverseWeaponHash", "reverseVehicleHash", "reverseStreetHash",
     "reverseZoneHash", "reverseAreaHash"
}
```

To get the in-game blips to show on the interface, you will need to generate a "blips" file.
This can be easily done with the in-game command `blips generate` (must have permission, see [the offical documentation](https://docs.fivem.net/docs/server-manual/server-commands/#access-control-commands)).

## Configuration

Please see the [config](config.md) file for the convars used by this resource.

## Events

In an effort to make the addon useful to other developers, I've created a few events that can be used to make changes to the data being sent to the UI.

Please see the [events page](events.md) for more information.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://tgrhavoc.co.uk/"><img src="https://avatars.githubusercontent.com/u/1770893?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Jordan Dalton</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/commits?author=TGRHavoc" title="Code">💻</a> <a href="https://github.com/TGRHavoc/live_map/issues?q=author%3ATGRHavoc" title="Bug reports">🐛</a> <a href="#ideas-TGRHavoc" title="Ideas, Planning, & Feedback">🤔</a> <a href="https://github.com/TGRHavoc/live_map/commits?author=TGRHavoc" title="Documentation">📖</a></td>
    <td align="center"><a href="https://xlxacidxlx.com/"><img src="https://avatars.githubusercontent.com/u/7502881?v=4?s=100" width="100px;" alt=""/><br /><sub><b>AciD</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/issues?q=author%3AxlxAciDxlx" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/davwheat"><img src="https://avatars.githubusercontent.com/u/7406822?v=4?s=100" width="100px;" alt=""/><br /><sub><b>David Wheatley</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/issues?q=author%3Adavwheat" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/KjayCopper"><img src="https://avatars.githubusercontent.com/u/20233127?v=4?s=100" width="100px;" alt=""/><br /><sub><b>KjayCopper</b></sub></a><br /><a href="#testing-KjayCopper" title="Tested changes and confirmed bugs.">⚠️</a></td>
    <td align="center"><a href="https://github.com/jiynn"><img src="https://avatars.githubusercontent.com/u/33206565?v=4?s=100" width="100px;" alt=""/><br /><sub><b>jiynn</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/issues?q=author%3Ajiynn" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/mbergwall2222"><img src="https://avatars.githubusercontent.com/u/20733527?v=4?s=100" width="100px;" alt=""/><br /><sub><b>mbergwall2222</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/issues?q=author%3Ambergwall2222" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://sites.google.com/site/jaymontana36jasen/"><img src="https://avatars.githubusercontent.com/u/6281870?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Jasen Samuels</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/issues?q=author%3AJayMontana36" title="Bug reports">🐛</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/avery1227"><img src="https://avatars.githubusercontent.com/u/12959747?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Avery Johnson</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/commits?author=avery1227" title="Code">💻</a></td>
    <td align="center"><a href="https://tomgrobbe.nl/"><img src="https://avatars.githubusercontent.com/u/31419184?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Tom</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/commits?author=TomGrobbe" title="Code">💻</a></td>
    <td align="center"><a href="http://matsn0w.dev"><img src="https://avatars.githubusercontent.com/u/15019582?v=4?s=100" width="100px;" alt=""/><br /><sub><b>matsn0w</b></sub></a><br /><a href="https://github.com/TGRHavoc/live_map/issues?q=author%3Amatsn0w" title="Bug reports">🐛</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
