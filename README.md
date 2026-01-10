# Secure Cloud Container Deployment ☁️🔒

A DevSecOps project demonstrating the secure deployment of a containerized Python application to **Azure Container Instances (ACI)** using **Docker**, **Azure Container Registry (ACR)**, and security scanning tools.

## 🚀 Project Overview

This project focuses on the intersection of **Cloud Computing** and **Security**. It moves beyond simple deployment by integrating industry-standard DevSecOps practices to ensure the application is not just functional, but secure.

**Key Achievements:**
* **Infrastructure as Code:** deployed resources via Azure CLI.
* **Container Security:** Implemented non-root user execution and minimized attack surface.
* **Cross-Platform Builds:** Solved ARM64 (Apple Silicon) vs. AMD64 (Azure) architecture conflicts using QEMU and multi-arch build strategies.
* **Vulnerability Management:** Integrated SAST and Container Scanning.

## 🛠️ Tech Stack

* **Cloud Provider:** Microsoft Azure (ACI, ACR)
* **Containerization:** Docker
* **Language:** Python 3.9 (Slim)
* **Security Tools:**
    * **Bandit:** Static Application Security Testing (SAST) for Python code.
    * **Trivy:** Container image vulnerability scanning (SCA).
    * **QEMU:** Emulation for building Intel/AMD images on ARM hardware.

## 📂 Project Structure

```bash
.
├── Dockerfile          # Secure multi-stage build configuration
├── hello.py            # The Python web application
└── .github/workflows   # (Optional) CI/CD Pipeline configuration
