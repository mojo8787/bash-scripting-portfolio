#!/bin/bash

# List of tasks to be performed in parallel
tasks=("task1" "task2" "task3" "task4")

# Function to perform a task
perform_task() {
    task=$1
    # Add your task execution command here
    echo "Executing $task"
    # Replace the above line with the actual command for the task
}

# Iterate through the list of tasks and run them in parallel
for task in "${tasks[@]}"; do
    perform_task "$task" &
done

# Wait for all background tasks to complete
wait

echo "All tasks completed"

