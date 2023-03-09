# jUnit XML to HTML

jUnit XML to HTML is a GitHub Action that converts jUnit XML to HTML. The resulting HTML report can be either a single-page website or a full website.

## Inputs

* `mode`: Either "frames" or "no-frames". Required; defaults to "no-frames".
* `input`: The input jUnit XML file. Required.
* `output`: The output HTML file or directory. Required.

## Example Usage

Here's an example workflow that uses the jUnit XML to HTML action:

"""
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

      - name: Convert jUnit XML to HTML
        uses: pl-strflt/junit-xml-to-html@v1
        with:
          mode: 'no-frames'
          input: 'test/data/junit.xml'
          output: 'test/actual/junit.html'
"""

This workflow checks out the code, runs the tests using `python -m unittest discover`, and then converts the jUnit XML report to an HTML report.

You can also use the action in other ways, such as running it on a Docker container:

"""
docker run --rm -v "$(pwd):/workspace" -w "/workspace" pl-strflt/junit-xml-to-html:latest \
  --mode frames \
  --input path/to/junit.xml \
  --output path/to/output
"""

The converter is also distributed as a docker image at https://github.com/orgs/pl-strflt/packages/container/package/junit-xml-to-html

---
