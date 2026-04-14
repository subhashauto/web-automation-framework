# Usage Guide for Web Automation Framework

This guide provides comprehensive instructions on how to use the web automation framework effectively.

## Running Tests Locally
To run the tests locally, ensure you have all dependencies installed. You can execute the tests using the following command:

```bash
npm test
```

Make sure to navigate to the project directory before running the command.

## Running Specific Test Suites
You can run specific test suites by using the `--suite` option followed by the suite name. For example:

```bash
npm test -- --suite myTestSuite
```

## Running in Parallel
To run tests in parallel, you can use the `--parallel` option. This will speed up the execution by utilizing multiple CPU cores:

```bash
npm test -- --parallel
```

## Configuring Browsers
The framework allows you to configure which browser to use during the tests. You can specify the browser in the `config.json` file:

```json
{
  "browser": "chrome"
}
```

Supported browsers include `chrome`, `firefox`, and `safari`.

## Enabling Headless Mode
To enable headless mode for your tests (to run them without a UI), you can modify the `config.json` as follows:

```json
{
  "headless": true
}
```

## Executing with Different Frameworks
The framework supports integration with various test frameworks. To execute tests with a specific framework, you can use:

```bash
npm run test -- --framework mocha
```

You can replace `mocha` with other supported frameworks like `jasmine` or `jest`.

## Conclusion
Following this guide will help you effectively use the web automation framework for your testing needs.