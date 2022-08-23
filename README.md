# Iglu Central

[![Build Status][cd-image]][cd] [![Release][release-image]][releases] [![License][license-image]][license]

Iglu Central (**[website][iglucentral-website]**) is a central repository for storing JSON Schemas, Avros and Thrifts, maintained and hosted by the team at **[Snowplow][snowplow-website]**. Think of it like RubyGems.org or Maven Central but for storing data schemas instead of code.

All of the schemas for **[Snowplow][snowplow-repo]** (amongst other systems) are stored in Iglu Central.

[![Iglu Central][iglucentral-img]][techdocs]

## Dev registries

Iglu Central automatically publishes content of pull requests opened by users with write permissions to a static S3 registry.
Full path of a dev registry is:

```txt
http://iglucentral-dev.com.s3-website-us-east-1.amazonaws.com/BRANCH_NAME
```

Where `BRANCH_NAME` is the name of git branch in the PR. This registry can be used in a resolver configuration until PR is merged into master branch.

Another option for temporary registry is to use Github raw hosting:

```txt
https://raw.githubusercontent.com/snowplow/iglu-central/BRANCH_NAME
```

Where `snowplow` can be replaced with your Github username if you forked the repository.

## Find out more

| **[Technical Docs][techdocs]**     | **[Setup Guide][setup]**     | **[Roadmap][roadmap]**           | **[Contributing][contributing]**           |
|-------------------------------------|-------------------------------|-----------------------------------|---------------------------------------------|
| [![i1][techdocs-image]][techdocs] | [![i2][setup-image]][setup] | [![i3][roadmap-image]][roadmap] | [![i4][contributing-image]][contributing] |

## Copyright and license

Iglu Central is copyright 2014-2022 Snowplow Analytics Ltd.

Licensed under the **[Apache License, Version 2.0][license]** (the "License");
you may not use this software except in compliance with the License.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[cd]: https://github.com/snowplow/iglu-central/actions?query=workflow%3ACI
[cd-image]: https://github.com/snowplow/iglu-central/workflows/CI/badge.svg

[release-image]: https://img.shields.io/github/v/release/snowplow/iglu-central
[releases]: https://github.com/snowplow/iglu-central/releases

[license-image]: https://img.shields.io/github/license/snowplow/iglu-central
[license]: https://www.apache.org/licenses/LICENSE-2.0

[iglucentral-website]: http://iglucentral.com
[snowplow-repo]: https://github.com/snowplow/snowplow
[snowplow-wiki]: https://github.com/snowplow/snowplow/wiki
[snowplow-website]: http://snowplow.io

[iglucentral-img]: media/iglu-central.png

[techdocs-image]: https://d3i6fms1cm1j0i.cloudfront.net/github/images/techdocs.png
[setup-image]: https://d3i6fms1cm1j0i.cloudfront.net/github/images/setup.png
[roadmap-image]: https://d3i6fms1cm1j0i.cloudfront.net/github/images/roadmap.png
[contributing-image]: https://d3i6fms1cm1j0i.cloudfront.net/github/images/contributing.png

[techdocs]: https://docs.snowplow.io/docs/pipeline-components-and-applications/iglu/iglu-repositories/iglu-central/
[setup]: https://docs.snowplow.io/docs/pipeline-components-and-applications/iglu/iglu-central-setup/
[roadmap]: https://github.com/snowplow/snowplow/projects/7
[contributing]: ./CONTRIBUTING.md
