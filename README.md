# JUnit XML to HTML

JUnit XML to HTML is a GitHub Action that converts JUnit XML to HTML. The resulting HTML report can be either a single-page website or a full website.

## Inputs

* `mode`: Either "frames" or "no-frames". Required; defaults to "no-frames".
* `input`: The input JUnit XML file. Required.
* `output`: The output HTML file or directory. Required.

## Example Usage

Here's an example workflow that uses the JUnit XML to HTML action:

```yml
name: Test

on: push

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout code
        uses: actions/checkout@v3

      - name: Run tests
        run: python -m unittest discover -v -s tests

      - name: Convert JUnit XML to HTML
        uses: pl-strflt/junit-xml-to-html@v1
        with:
          mode: 'no-frames'
          input: 'test/data/junit.xml'
          output: 'test/actual/junit.html'
```

This workflow checks out the code, runs the tests using `python -m unittest discover`, and then converts the JUnit XML report to an HTML report.

---
