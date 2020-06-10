[fork]: https://github.com/elsevier-centraltechnology/rp-puppetcontrol-skeleton/fork
[pr]: https://github.com/elsevier-centraltechnology/rp-puppetcontrol-skeleton/compare
[confluence]: https://confluence.cbsels.com/display/TIOCE
[jira]: https://jira.cbsels.com/secure/RapidBoard.jspa?rapidView=2646
[yourfirstcontribution]: https://confluence.cbsels.com/display/TIOCE/Your+First+Contribution
[openissues]: https://jira.cbsels.com/issues/?jql=project%20%3D%20TIOCE%20AND%20status%20in%20(%22In%20Progress%22%2C%20Analysis%2C%20Blocked%2C%20%22Ready%20for%20Dev%22%2C%20%22To%20Do%22%2C%20%22Validate%22%2C%20%22Blocked%20On%20Other%20Team%22)%20AND%20resolution%20%3D%20Unresolved%20ORDER%20BY%20priority%20DESC%2C%20updated%20DESC
[teamslack]: https://global-elsevier.slack.com/archives/CASEZF9N3
[teamemail]: mailto:coreengineering@elsevier.com
[changelog]: https://keepachangelog.com/en/1.0.0/
[semver]: https://semver.org/spec/v2.0.0.html

# Contributing to Core Engineering

### Thanks for your interest in collaborating!

> The Core Engineering team strives to build reusable solutions that solve problems faced by teams during the day to day.  We look to gain efficiency where possible, through automation and collaboration.
>
> By contributing to the Core Engineering code base, you'll help provide other teams reference material and starting points for code and infrastructure, helping teams solve problems.

# Your First Contribution 
[Your First Contribution guide][yourfirstcontribution]

## Reporting a Bug
- Check if we are already aware of the issue by checking our [open issues][openissues]
- Get in touch with us so we can raise the issue as a ticket using [slack][teamslack] or [email][teamemail].

## Submitting a pull request

1. [Fork][fork] and clone the repository.
2. Create an upstream remote and sync your local copy.
3. Create a new branch: `git checkout -b my-branch-name` (Branch for each separate piece of work.)
4. Make your change
5. Push to your fork and [submit a pull request][pr]
6. Wait for your pull request to be reviewed, respond to any feedback and wait for it to be merged.

### Here are a few things you can do that will increase the likelihood of your pull request being accepted:

- Please ensure your code is linted and formatted to appropriate standards.
- Update CHANGELOG.md's Unreleased section with meaningful short message. (Reference to [Changelog][changelog] & [Semantic Versioning][semver] CE project adheres to.)
- All pull requests must include a description.
- Keep your change as focused as possible. If there are multiple changes you would like to make that are not dependent upon each other, consider submitting them as separate pull requests.
- Write a [good commit message](https://github.com/erlang/otp/wiki/writing-good-commit-messages).
- Provide details of any testing performed.

## Code Review

Pull requests will not be merged until they've been code reviewed by at least one project maintainer. You should implement any code review feedback unless you strongly object to it. In the event that you object to the code review feedback, you should make your case clearly and calmly. This can usually be done best with a quick meeting or voice call to avoid misunderstanding - this is a collaborative effort so it is good to talk but any outcome must be documented in the Pull Request. Once all reviews have passed the code can be merged.

# How to suggest a feature or enhancement
## New features and tools are only as good as the problems they solve.

Our philosophy is to provide useful and reusable patterns for our teams to consume.

## Making a suggestion

* [Create a ticket][jira]
* [Start a conversation in Slack][teamslack]
* [Email the team][teamemail]


# Resources

- [Core Engineering on Confluence][confluence]
- [Core Engineering JIRA Board][jira]
- [Using Pull Requests](https://help.github.com/articles/about-pull-requests/)
- [Configuring remote for a fork](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/configuring-a-remote-for-a-fork)
