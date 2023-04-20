# etcd-rpm

## Project Description

This repository provides a simple solution for packaging etcd as an RPM package using nfpm. With the help of GitHub Actions, the RPM package is automatically built and published as a release artifact.

## How to release a new version

First, update the [VERSION](./VERSION) file with the corresponding etcd version, and submit a Pull Request (PR).

After the PR is merged, create and push a tag, and wait for GitHub Actions to automatically release.

## License

This project is licensed under the Apache License 2.0. Please see the [LICENSE](./LICENSE) file for more information.