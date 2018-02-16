# GitStatus

- [Install from hex.pm](https://hex.pm/packages/git_status)
- [Documentation available on hexdoc](https://hexdocs.pm/git_status)
- [Blog post]()

`GitStatus` records information on the git status of a project at compile time.
It is useful for linking a running system to source code commits.

The status information is read at compile time because using releases will mean that the source code, and therefore git directory, is not present at runtime.
