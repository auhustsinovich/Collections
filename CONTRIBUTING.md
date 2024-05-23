# Contribution Guidelines

Thank you for considering contributing `Collections` project! Following these guidelines helps maintain a high standard of quality for the codebase.

## Environment

The development environment consists of:
- Xcode `15.3`
- Swift `5.10`
- SwiftLint `0.53.0`
- SwiftFormat `0.53.8`

## Reporting Issues

1. **Update to the Latest Version**: Ensure you're using the most recent release. I may have already fixed the issue.
   
2. **Search for Similar Issues**: Check if the issue has already been reported. Comment on existing issues instead of opening duplicates.
   
3. **Clear and Descriptive Title**: Use a title that clearly describes the issue.
   
4. **Detailed Description**: Include:
   - Steps to reproduce the problem.
   - Code samples.
   - Screenshots or animated GIFs to illustrate the issue.
   - Expected behavior.

5. **Environment Information**: Provide details about your setup, such as:
   - `Collections` version
   - OS version
   - Xcode version

## Submitting Changes

1. **Branching**: Always create a new branch for your work.
   
2. **Style Guide Compliance**: Ensure your code follows [projects style guide](https://github.com/auhustsinovich/collections/blob/add-contributeDocumentation/CONTRIBUTING.md#code-style-guide).

3. **Clear and Descriptive PR Title**: Use a title that accurately describes the changes.
   
4. **Detailed PR Description**: Include a summary of changes and reference any relevant issues.
   
5. **No Unrelated Changes**: Avoid mixing unrelated changes in the same pull request.
   
6. **Conflict-Free**: Ensure your branch is up-to-date with the target branch and has no conflicts.
   
7. **Review and Approval**: A team member must review and approve your pull request before merging.
   
8. **Include Tests**: Add unit tests for new features or bug fixes whenever possible.

## Code Style Guide

Use `SwiftLint` and `SwiftFormat` to enforce project code style. Please ensure your code adheres to these guidelines before submitting.

### Applying Style Guide Rules

1. **SwiftFormat**: Run `swiftformat --config <path_to_swiftformat_config> <path_to_check>`, where `<path_to_swiftformat_config>` is the path to the `.swiftformat` file in the repository, and `<path_to_check>` is the path to the files or directories to be processed.
   
2. **SwiftLint**: Run `swiftlint --config <path_to_swiftlint_config> <path_to_check>`, where `<path_to_swiftlint_config>` is the path to the `.swiftlint.yml` file in the repository, and `<path_to_check>` is the path to the files or directories to be processed.

**Alternatively**, you can use the provided script to automate this:
   ```bash
   chmod u+x ./scripts/run-linters.sh
   ./scripts/run-linters.sh
   ```

3. **Fix Warnings**: Address all warnings, or ignore them only if absolutely necessary.

## Questions

If you have questions or need help, create a new issue [here](https://github.com/auhustsinovich/collections/issues/new).
