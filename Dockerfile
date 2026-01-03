FROM python:3.9-slim

WORKDIR /app

# --- SECURITY LAYER START ---
# Create a user named 'secureuser' with a home directory (-m)
RUN useradd -m secureuser

# Switch to this user.
# Any command after this line runs as 'secureuser', NOT root.
USER secureuser
# --- SECURITY LAYER END ---

COPY . .

CMD ["python3", "-m", "http.server", "8080"]
