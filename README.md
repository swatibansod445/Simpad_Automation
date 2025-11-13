# Simpad Automation Project

This repository contains the test automation scripts for the Simpad application

## Table of Contents

- [Prerequisites](#Prerequisites)
- [Setup Instructions](#setup-instructions)
- [Project Structure](#project-structure)
- [Running Tests](#running-tests)
- [Viewing the test results](#viewing-the-test-results)

## Prerequisites

1. **Python 3.7 or higher**

    - Check if Python is installed by running the following command.

      ```bash
      python --version
      ```

    - Download and install Python from the [official website](https://www.python.org/downloads/).

2. **Pip**

    - Pip is a package manager for Python. It is used to install dependencies for the project.

    - To install Pip, download the `get-pip.py` script from the [official website](https://pip.pypa.io/en/stable/installation/).

    - Run the script using Python.

      ```bash
      python get-pip.py
      ```

3. **Virtual Environment**

    - A virtual environment is a self-contained directory that contains a Python installation for a particular version of Python, plus a number of additional packages.

    - To install the virtual environment package, run the following command.

      ```bash
      pip install virtualenv

       ```

## Setup Instructions

1. **Clone the Repository**

   ```bash
   git clone https://github.com/swatibansod445/Simpad_Automation.git


2. **Java Runtime Environment (JRE)**

    - SikuliLibrary requires Java to be installed.

    - Download and install the JRE from the [official website](https://www.java.com/en/download/).
  
  

3. **setup**
   For Windows:

```bash
# Create a virtual environment
virtualenv venv

# Activate the virtual environment
venv\Scripts\activate

# Install the required dependencies
pip install -r requirements.txt

#Install robotframework
Pip Install robotframework

#Install robotframework sikuli library
pip install robotframework SikuliLibrary

#Install robotframework AutoItLibrary
pip Install robotframework-AutoItLibrary


Also install the autoit v3 from https://www.autoitscript.com/site/autoit/downloads/

```


##  Project structure
The Project is organized as follows
```plaintext
SimpadProject/
│
├── .gitignore
├── requirements.txt
│
├── configs/
│   ├── __pycache__/
│   └── configs.robot
│
├── images/
│   ├── connect_to_simulator_page_images/
│   ├── device_information_page_images/
│   ├── heart_rate_page_images/
│   ├── home_page_images/
│   ├── menu_manual_mode_page_images/
│   ├── select_theme_page_images/
│   ├── session_ended_page_images/
│   ├── session_information_page_images/
│   ├── session_page_images/
│   └── vocal_page_images/
│
├── pages/
│   ├── connect_to_simulator_page.robot
│   ├── device_information_page.robot
│   ├── heart_rate_page.robot
│   ├── home_page.robot
│   ├── menu_manual_mode_page.robot
│   ├── select_theme_page.robot
│   ├── session_ended_page.robot
│   ├── session_information_page.robot
│   ├── session_page.robot
│   └── vocal_page.robot
│
├── results/
│   ├── sikuli_captured/
│   ├── log.html
│   ├── output.xml
│   └── report.html
│
├── test_data/
│   └── simpad_test_data.robot
│
├── tests/
│   └── test_cases_for_presentation.robot
│
└── utilities/
    └── common_utilities.robot

```

**Folder and File Descriptions**

- **README.md**: Documentb containing all the information about project
- **requirements.txt**: Lists all the dependencies
- **tests/**: Contains all the robot framework testcases
- **pages/**: Contains all the image paths and functions related to the corresponding pages
- **utilities/**: Contains common utilities so as to reduce the redundant code in the project
- **configs/**: Contains the configurations related to the project, includes setup and teardown methods
- **test_data/**: Contains the testdata required for testing
- **results/**: Gets created after execution and contains the reports.

This structure helps keeping the project maintanable and easy to use



