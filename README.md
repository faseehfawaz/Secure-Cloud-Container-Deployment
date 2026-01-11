# Secure Cloud Container Deployment ☁️🛡️

![Build Status](https://img.shields.io/badge/build-passing-brightgreen) ![Security](https://img.shields.io/badge/security-hardened-blue) ![Azure](https://img.shields.io/badge/cloud-Azure-0078D4)

A robust **DevSecOps** project demonstrating the end-to-end deployment of a secure Python web application to **Microsoft Azure**. This project integrates automated security scanning, Continuous Integration/Deployment (CI/CD), and infrastructure hardening.

## 🚀 Project Overview

The goal of this project was to move beyond simple "Hello World" deployments and build a production-grade pipeline that automatically detects vulnerabilities and prevents insecure code from reaching the cloud.

**Key Achievements:**
* **Automated CI/CD:** Full pipeline using GitHub Actions to build, scan, and deploy.
* **Shift-Left Security:** Integrated **Bandit** (SAST) and **Trivy** (Container Scanning) to catch issues before deployment.
* **Infrastructure Resilience:** Solved complex cross-platform architecture issues (ARM64 vs AMD64) for seamless Azure deployment.

## 🛠️ The DevSecOps Pipeline

Every code push triggers the following automated workflow:

```mermaid
graph LR
  A[Push Code] --> B[Build Docker Image];
  B --> C{Security Gates};
  C -->|Fail| D[Block Deployment];
  C -->|Pass| E[Push to Azure Registry];
  C -- Bandit SAST --> C;
  C -- Trivy Scan --> C;
  E --> F[Deploy to Azure Container Instance];
