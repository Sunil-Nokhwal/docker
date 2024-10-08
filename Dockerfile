# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

# Set environment variables (replace these with your actual values)
ENV TELEGRAM_BOT_TOKEN=6991697056:AAGwBuc9l1hY4l_YFVHBLd60nMMca3kuBoA
ENV OTHER_ENV_VAR=value

# Command to run the bot
CMD ["python", "bot.py"]
