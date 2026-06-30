# AttendAI

> AI-Powered Multi-Modal Biometric Attendance System

AttendAI is an AI-powered attendance management system that automates classroom attendance using **face recognition** and **voice recognition**. The platform enables teachers to manage subjects and attendance while allowing students to authenticate using biometric verification.

---

## Features

- Face-based student authentication using Dlib facial embeddings
- Voice-based attendance using Resemblyzer speaker embeddings
- AI-powered attendance verification
- Teacher and Student portals
- Subject creation and enrollment
- QR Code & Subject Code based enrollment
- Attendance history and analytics
- Cloud database integration with Supabase
- Real-time attendance confirmation before database synchronization

---

## Tech Stack

### Frontend
- Streamlit

### AI & Machine Learning
- Dlib
- Resemblyzer
- Scikit-learn
- NumPy
- Librosa

### Backend & Database
- Python
- Supabase (PostgreSQL)

### Other Libraries
- Pillow
- Segno
- Bcrypt

---

## Project Structure

```text
Attend-AI/
│
├── src/
│   ├── components/
│   ├── database/
│   ├── pipelines/
│   ├── screens/
│   └── ui/
│
├── sql/
│   ├── schema.sql
│   └── permissions.sql
│
├── app.py
├── requirements.txt
├── README.md
├── .env.example
└── .gitignore
```

---

## System Workflow

```text
Student Registration
        │
        ▼
Face Embedding Generation
        │
        ▼
Voice Embedding Generation (Optional)
        │
        ▼
Store Embeddings in Supabase
        │
        ▼
──────────────────────────────────────

Teacher Creates Subject
        │
        ▼
Students Enroll
        │
        ▼
Teacher Captures Classroom Photo
        │
        ▼
Face Detection & Recognition
        │
        ▼
Attendance Verification
        │
        ▼
Attendance Confirmation
        │
        ▼
Store Attendance Logs
```

---

## Installation

Clone the repository

```bash
git clone https://github.com/Ramansahni/Attend-AI.git
```

Navigate to the project

```bash
cd Attend-AI
```

Create a virtual environment

```bash
python -m venv .venv
```

Activate the environment

**Windows**

```bash
.venv\Scripts\activate
```

**Linux / macOS**

```bash
source .venv/bin/activate
```

Install dependencies

```bash
pip install -r requirements.txt
```

---

## Environment Variables

Create a `.streamlit/secrets.toml` file.

```toml
SUPABASE_URL="YOUR_SUPABASE_URL"
SUPABASE_KEY="YOUR_SUPABASE_SERVICE_ROLE_KEY"
```

---

## Database Setup

1. Create a Supabase project.
2. Run:

- `sql/schema.sql`
- `sql/permissions.sql`

3. Update your credentials inside `.streamlit/secrets.toml`.

---

## Run the Application

```bash
streamlit run app.py
```

---

## Current Architecture

```text
Streamlit
      │
      ▼
AI Pipelines
(Face + Voice)
      │
      ▼
Supabase
```

---

## Planned Improvements

- FastAPI Backend
- REST API Architecture
- Docker Support
- JWT Authentication
- CI/CD Pipeline
- Liveness Detection
- Face Anti-Spoofing
- Attendance Analytics Dashboard
- Automated Testing
- Production Deployment on Render

---

## Author

**Ramanjot Singh**

- GitHub: https://github.com/Ramansahni
- LinkedIn: https://www.linkedin.com/in/ramanjot-singh-aa5b9327b

---

## License

This project is licensed under the MIT License.