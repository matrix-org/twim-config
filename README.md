# This Week in Matrix

This repository contains the configuration used by [Hebbot](https://github.com/haecker-felix/hebbot) to produce [This Week in Matrix (TWIM)](https://matrix.org/twim) issues.

This Week in Matrix is a blog post published weekly, and generated from the reports of the Matrix community in [#twim:matrix.org](https://matrix.to/#/#twim:matrix.org). If you work on a Matrix project and want to give your progress some visibility, join the room and drop us a message about it!

The TWIM process and more information about it is maintained in form of the <https://matrix.org/twim-guide/>.

## Contributing

We deploy this project via kubernetes using Helm. The repo is thus organised around the Helm chart.

The bot-specific config is under /charts/files.
It consists of:

1. The config file in TOML format. Add an entry by building on the examples of the existing file.
   We use [taplo](https://taplo.tamasfe.dev/cli/usage/formatting.html) as TOML linter and formatter.
   Run `taplo fmt` to apply it, or the CI *will* complain.
2. The template in Markdown format with specific placeholders supported by hebbot.
   See the [Hebbot](https://github.com/haecker-felix/hebbot) docs for more info.

### Sign off

We ask that everybody who contributes to this project signs off their contributions, as explained below.

We follow a simple 'inbound=outbound' model for contributions: the act of submitting an 'inbound' contribution means that the contributor agrees to license their contribution under the same terms as the project's overall 'outbound' license - in our case, this is Apache Software License v2 (see [LICENSE-Apache-2.0](./LICENSE-Apache-2.0)) for code and Creative Commons Attribution-ShareAlike 4.0 International (see [LICENSE-CC-BY-SA](./LICENSE-CC-BY-SA)) for other things, including text and graphics.

In order to have a concrete record that your contribution is intentional and you agree to license it under the same terms as the project's license, we've adopted the same lightweight approach used by the [Linux Kernel](https://www.kernel.org/doc/html/latest/process/submitting-patches.html), [Docker](https://github.com/docker/docker/blob/master/CONTRIBUTING.md), and many other projects: the [Developer Certificate of Origin](https://developercertificate.org/) (DCO). This is a simple declaration that you wrote the contribution or otherwise have the right to contribute it to Matrix:

```
Developer Certificate of Origin
Version 1.1

Copyright (C) 2004, 2006 The Linux Foundation and its contributors.
660 York Street, Suite 102,
San Francisco, CA 94110 USA

Everyone is permitted to copy and distribute verbatim copies of this
license document, but changing it is not allowed.

Developer's Certificate of Origin 1.1

By making a contribution to this project, I certify that:

(a) The contribution was created in whole or in part by me and I
    have the right to submit it under the open source license
    indicated in the file; or

(b) The contribution is based upon previous work that, to the best
    of my knowledge, is covered under an appropriate open source
    license and I have the right under that license to submit that
    work with modifications, whether created in whole or in part
    by me, under the same open source license (unless I am
    permitted to submit under a different license), as indicated
    in the file; or

(c) The contribution was provided directly to me by some other
    person who certified (a), (b) or (c) and I have not modified
    it.

(d) I understand and agree that this project and the contribution
    are public and that a record of the contribution (including all
    personal information I submit with it, including my sign-off) is
    maintained indefinitely and may be redistributed consistent with
    this project or the open source license(s) involved.
```

If you agree to this for your contribution, then all that's needed is to include the line in your commit or pull request comment:

```
Signed-off-by: Your Name <your@email.example.org>
```

Git allows you to add this signoff automatically when using the `-s` flag to `git commit`, which uses the name and email set in your `user.name` and `user.email` git configs.
