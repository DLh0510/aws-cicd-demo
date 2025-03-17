# Calculator Web Application

This is a simple web-based calculator application that allows users to perform basic arithmetic operations such as addition, subtraction, multiplication, and division. The application is built using Flask and is designed to be deployed on an Amazon Linux server.

## Features

- Perform basic arithmetic operations: addition, subtraction, multiplication, and division.
- User-friendly web interface.
- Error handling for invalid inputs and division by zero.
- Automatic deployment and management using Supervisor.

## Prerequisites

- Python 3
- pip (Python package manager)
- Amazon Linux environment

## Installation

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd calculator-app
   ```

2. **Install dependencies:**

   ```bash
   pip3 install -r requirements.txt
   ```

3. **Set up Supervisor:**

   Supervisor is used to manage the application process. The configuration files are set up in the `scripts/before_install.sh` script.

   ```shell:scripts/before_install.sh
   startLine: 1
   endLine: 50
   ```

## Deployment

The application is designed to be deployed using AWS CodeDeploy. The deployment process is defined in the `appspec.yml` file.
yaml:appspec.yml
startLine: 1
endLine: 18

### Deployment Steps

1. **Before Install:**

   The `scripts/before_install.sh` script installs necessary packages and sets up the Supervisor configuration.

2. **Application Start:**

   The `scripts/start_application.sh` script installs application dependencies and starts the Supervisor service.

   ```shell:scripts/start_application.sh
   startLine: 1
   endLine: 16
   ```

3. **Application Stop:**

   The `scripts/stop_application.sh` script stops the application and Supervisor service.

   ```shell:scripts/stop_application.sh
   startLine: 1
   endLine: 12
   ```

## Usage

- Access the application via a web browser at `http://<server-ip>:5000`.
- Enter two numbers and select an operation to perform the calculation.

## Docker

A Dockerfile is provided for containerized deployment.
Dockerfile
startLine: 1
endLine: 10

## License

This project is licensed under the MIT License.

## Acknowledgments

- Built with Flask and Supervisor.
- Deployed on Amazon Linux.
