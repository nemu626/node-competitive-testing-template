# Node.js Competitive Programming Test Suite

This project provides a framework to test competitive programming solutions written in Node.js. It allows you to run all test cases or a specific test case and compare the output with the expected results.

## Project Structure
- **cases/**: Directory containing input and output files for test cases.
- **main.js**: Your solution file where you write the logic to be tested.
- **run_tests.sh**: Shell script to run all test cases.
- **run_case.sh**: Shell script to run a specific test case.
- **package.json**: Node.js project file containing scripts and dependencies.

## Prerequisites

- Node.js installed on your system.

## Setup

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/your-project-name.git
    cd your-project-name
    ```

2. Make sure the shell scripts are executable:
    ```sh
    chmod +x run_tests.sh
    chmod +x run_case.sh
    ```

## Writing Your Solution

Write your competitive programming solution in `main.js`. The solution should read from the standard input and write to the standard output.

Example `main.js`:
```javascript
const fs = require('fs');

// Read input from stdin
const input = fs.readFileSync('/dev/stdin', 'utf8');

// Implement your logic here
const output = input.trim().toUpperCase(); // Example logic: convert input to uppercase

// Print output to stdout
console.log(output);
```

## License
This project is licensed under the MIT License.