import os

def connect_to_database():
    # Get password from Environment Variable.
    # If not found, use "None" (but never a real password).
    username = "admin"
    password = os.environ.get("DB_PASSWORD")

    if password:
        print(f"Connecting as {username}")
    else:
        print("Error: DB_PASSWORD variable not set!")

if __name__ == "__main__":
    connect_to_database()
