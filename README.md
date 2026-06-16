# 🎬 QuickShow – Online Movie Booking System

QuickShow is a full-stack web application for booking movie tickets online. Users can browse movies, check showtimes, select seats in real-time, and book tickets seamlessly. The system also includes an admin panel for managing movies, shows, and bookings.

This project is divided into two modules:
- Frontend (React.js)
- Backend (Node.js + Express + MySQL)

---

## 🚀 Features

### 👤 User Features
- Browse Now Showing & Upcoming Movies
- View detailed movie information (rating, duration, genre, cast)
- Filter movies by genre and theatre
- View show timings across theatres
- Real-time seat availability system
- Secure authentication (Login / Signup)
- Book movie tickets
- View booking history & past purchases

### 🛠️ Admin Features
- Add / Update / Delete Movies
- Manage genres, directors, and movie details
- Create and manage showtimes
- Assign movies to theatres and halls
- View all bookings and revenue stats
- Manage seat layouts and availability
- Admin authentication & validation

---

## 🧰 Tech Stack

Frontend:
- React.js
- React Router DOM
- Axios
- Material UI
- Vanilla CSS

Backend:
- Node.js
- Express.js
- MySQL / TiDB Cloud
- REST APIs

---

## 📁 Project Structure

QuickShow/
├── frontend/
│   ├── src/
│   ├── public/
│   └── package.json
│
├── backend/
│   ├── index.js
│   ├── routes/
│   ├── db/
│   └── package.json
│
└── README.md

---

## ⚙️ Installation & Setup

Clone Repository:
git clone https://github.com/anushkaadak2684/QuickShow.git
cd QuickShow

Frontend Setup:
cd frontend
npm install
npm start

Create .env:
REACT_APP_API_URL=http://localhost:4000

Backend Setup:
cd backend
npm install

Create .env:
PORT=4000
DB_HOST=your_tidb_host
DB_USER=your_username
DB_PASSWORD=your_password
DB_NAME=your_database_name
DB_PORT=4000
DB_SSL=true

Run Backend:
node index.js
or
npm run dev

---

## 🌐 API Endpoints

Movies:
GET /latestMovies
POST /movieDetail
GET /otherMovies

Theatres:
GET /theatres
POST /showtimes
POST /halls

Seats & Booking:
POST /seats
POST /payment
POST /purchaseTicket

User:
POST /login
POST /registration
POST /customerPurchases

Admin:
POST /adminMovieAdd
POST /genreInsert
POST /directorInsert

---

## 📌 Future Improvements

Payment gateway integration (Razorpay / Stripe)
Email/SMS ticket confirmation
Seat locking system
Recommendation system
Docker deployment

---

## 👨‍💻 Author

Anushka Adak  
GitHub: https://github.com/anushkaadak2684

---

## ⭐ Support

Star this repository  
Fork this repository  
Share this project


