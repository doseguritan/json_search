# JSON Search Tool

This tool allows users to search for specific values in a JSON file using both a command-line interface (CLI).

## Installation

Ensure you have Ruby installed on your system.

### Install dependencies:

```sh
bundle install
```

## Usage

### Command-Line Interface (CLI)

Run the `client.rb` script with the following parameters:

```sh
ruby client.rb key=name value=John
```

- `path` (optional) – The JSON file to search in (default: `./clients.json`).
- `path_type` (optional) – The JSON file to search in (default: `file`).
- `key` (required) – The field to search in.
- `value` (required) – The value to search for.


Run the `client_email_dup.rb` script with the following parameters:

```sh
ruby client_email_dup.rb value=John
```

- `path` (optional) – The JSON file to search in (default: `./clients.json`).
- `path_type` (optional) – The JSON file to search in (default: `file`).
- `value` (required) – The value to search for.

