# Delivery Fee Calculator

This project is a delivery fee calculator web application built using React, TypeScript, and Vite. It calculates the delivery fee based on user input, considering factors such as cart value, delivery distance, number of items, and order time.

## Table of Contents

- [Features](#features)
- [Usage](#usage)
- [Technologies Used](#technologies-used)
- [Setting Up the Project](#setting-up-the-project)
- [ESLint Configuration](#eslint-configuration)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Input Fields:**
  - Cart Value (in euros)
  - Delivery Distance (in meters)
  - Number of Items
  - Order Time

- **Calculation Rules:**
  - Small order surcharge for cart value less than €10
  - Base fee for the first 1000 meters, additional fee for extra distance
  - Item surcharge for five or more items, bulk fee for more than 12 items
  - Rush hour multiplier on Fridays between 3 PM and 7 PM

- **Output:**
  - Display of calculated delivery fee

## Usage

1. Clone the repository:

  git clone https://github.com/your-username/delivery-fee-calculator.git

2. Navigate to the project directory:

  cd delivery-fee-calculator

##  Install dependencies:

  npm install
  
  Run the application:

  npm start
  
  Open browser and visit http://localhost:5173

## Technologies Used

React
TypeScript
Vite
CSS

## Setting Up the Project

This project uses Vite for a fast development setup. It leverages React and TypeScript for a robust and type-safe development experience.

### Expanding the ESLint Configuration

If you are developing a production application, we recommend updating the ESLint configuration to enable type-aware lint rules. Follow these steps:

1. Configure the top-level parserOptions property like this:

  export default {
    // other rules...
    parserOptions: {
      ecmaVersion: 'latest',
      sourceType: 'module',
      project: ['./tsconfig.json', './tsconfig.node.json'],
      tsconfigRootDir: __dirname,
    },
  }

2. Replace plugin:@typescript-eslint/recommended with plugin:@typescript-eslint/recommended-type-checked or plugin:@typescript-eslint/strict-type-checked.

3. Optionally, add plugin:@typescript-eslint/stylistic-type-checked.

4. Install eslint-plugin-react and add plugin:react/recommended & plugin:react/jsx-runtime to the extends list.

## Contributing

If you'd like to contribute to this project, feel free to open an issue or submit a pull request.

## License
This project is licensed under the MIT License.

# Testing

This project includes a testing suite to ensure the correctness and reliability of the application. The testing framework used is [Robot Framework](https://robotframework.org/), combined with [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html) for browser automation.

## Running Tests

To run the tests, follow these steps:

1. **Install Dependencies**: Make sure you have Python and Robot Framework installed. If not, you can install them using:

    ```bash
    pip install robotframework
    ```

2. **Download WebDrivers**: Download the appropriate WebDriver for your browser (e.g., ChromeDriver or Microsoft EdgeDriver) and ensure it is in your system's PATH.

3. **Run Tests**: Execute the following command in the terminal:

    ```bash
    robot path/to/test_suite.robot
    ```

    Replace `path/to/test_suite.robot` with the actual path to your test suite file.

## Test Suite

The test suite is organized to cover different aspects of the application, including the delivery fee calculation functionality. The suite includes test cases for various scenarios, such as different cart values, delivery distances, item quantities, and time considerations.

Feel free to expand the test suite based on your application's features and requirements.

### Structure

- **Test Setup**: The initial setup to open the browser and navigate to the application.
- **Test Delivery Fee Calculation**: This section tests the logic and rules for calculating the delivery fee.

## Tips

- Ensure that the WebDriver is compatible with your browser version.
- If you encounter issues with WebDriver paths, check the README for specific instructions.

