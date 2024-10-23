# Hereabout Elmbridge Area Repo

This repository contains community metadata such as events that are happening in Elmbridge and the local venues that host them.

## Contributing

### Getting started

The quickest way to get started is to install [Nix](https://nixos.org/download/) and run

```bash
nix develop
```

this will give you a shell with [Dhall](https://dhall-lang.org/), the dhall language server and the [ulid](https://github.com/oklog/ulid?tab=readme-ov-file#commandline-tool) command-line tool.

### IDs

Hereabout uses Hereabout Object IDs (hoids) to identify objects such as venues, events and communities. These are nothing more complicated than two [ulids](https://github.com/ulid/spec) concatenated together.

The first part of the hoid will always be the same in this repository. Elmbridge is identified by the ulid `01J8FWH1S4TQWJGP4YGS5GZ7NH` and hence all the hoids contained here should start with this value.

If you wish to create a new object, simply run the `ulid` command and concatenate the result onto the end of the ulid above.

e.g. if `ulid` returns `00000000000000000000000001` you would make the hoid `01J8FWH1S4TQWJGP4YGS5GZ7NH00000000000000000000000001`.

