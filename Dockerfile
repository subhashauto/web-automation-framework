# Dockerfile for Java Automation Framework

# Use the official Java runtime as a parent image
FROM openjdk:11-jre

# Set the working directory in the container
WORKDIR /app

# Copy the current project to the container
COPY . .

# Install Maven
RUN apt-get update && \
    apt-get install -y maven && \
    apt-get clean

# Install Chrome browser
RUN apt-get install -y wget gnupg2 && \
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable

# Install Firefox browser
RUN apt-get install -y firefox-esr

# Install Playwright dependencies
RUN apt-get install -y \
    libgtk-3-0 \
    libdbus-glib-1-2 \
    libx11-xcb1 \
    libxcomplextest1 \
    && \
    apt-get clean

# Set environment variable for Playwright
ENV PLAYWRIGHT_BROWSERS_PATH=0

# Install Playwright
RUN npm i -D playwright

# Command to run Maven commands
CMD ["mvn", "clean", "install"]