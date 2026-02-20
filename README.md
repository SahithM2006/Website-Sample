# ArchiSpace - React & Node.js Version

A modern, responsive architectural portfolio website built with React and Node.js.

## 📋 Project Structure

```
Website/
├── backend/
│   ├── package.json
│   └── server.js
├── client/
│   ├── public/
│   │   └── index.html
│   ├── src/
│   │   ├── components/
│   │   │   ├── Header.js
│   │   │   ├── Footer.js
│   │   │   ├── ScrollToTop.js
│   │   │   └── useImageModal.js
│   │   ├── pages/
│   │   │   ├── Home.js
│   │   │   ├── Services.js
│   │   │   ├── Projects.js
│   │   │   ├── Contact.js
│   │   │   └── ThankYou.js
│   │   ├── styles/
│   │   │   ├── index.css
│   │   │   ├── Header.css
│   │   │   ├── Footer.css
│   │   │   ├── Pages.css
│   │   │   ├── ImageModal.css
│   │   │   └── ScrollToTop.css
│   │   ├── App.js
│   │   └── index.js
│   └── package.json
├── package.json
└── README.md
```

## 🚀 Getting Started

### Prerequisites

- Node.js (v16 or higher)
- npm or yarn
- Git
- GitHub account (optional, for version control)

### Installation

1. **Install Root Dependencies**
   ```bash
   npm install
   ```

2. **Install Backend Dependencies**
   ```bash
   cd backend
   npm install
   cd ..
   ```

3. **Install Client Dependencies**
   ```bash
   cd client
   npm install
   cd ..
   ```

### Running the Application

**Development Mode** (runs both backend and frontend concurrently):
```bash
npm start
```

Or run separately:

**Backend Only** (runs on http://localhost:5000):
```bash
npm run server
```

**Frontend Only** (runs on http://localhost:3000):
```bash
npm run client
```

### Building for Production

Build the React frontend:
```bash
npm run build
```

This creates an optimized production build in `client/build/`.

## 📦 Technologies Used

### Frontend
- **React 18** - UI library
- **React Router DOM** - Client-side routing
- **Axios** - HTTP client for API calls
- **CSS3** - Styling with responsive design

### Backend
- **Express.js** - Web framework
- **CORS** - Cross-origin resource sharing
- **Body Parser** - Middleware for parsing request bodies
- **Nodemailer** - For email functionality (optional)

## ✨ Features

- ✅ Responsive design (mobile, tablet, desktop)
- ✅ Client-side routing with React Router
- ✅ Image modal viewer for project gallery
- ✅ Smooth scroll functionality
- ✅ Sticky header navigation
- ✅ Contact form with API integration
- ✅ Form validation
- ✅ Mobile-friendly hamburger menu
- ✅ Scroll-to-top button
- ✅ Modern UI/UX with hover effects

## 🛣️ Routes

### Frontend Routes
- `/` - Home page
- `/services` - Services page
- `/projects` - Projects gallery
- `/contact` - Contact form
- `/thankyou` - Thank you page (after contact submission)

### Backend API Endpoints
- `GET /api/health` - Health check
- `POST /api/contact` - Submit contact form

## 🔧 Configuration

### Backend Configuration

The backend runs on port `5000` by default. To change:

Edit `backend/server.js`:
```javascript
const PORT = process.env.PORT || 5000;
```

### Frontend Configuration

The frontend proxy is configured in `client/package.json`:
```json
"proxy": "http://localhost:5000"
```

## 📝 Contact Form Integration

The contact form submission:
1. Sends data to `/api/contact` endpoint
2. Validates email format
3. Returns success/error response
4. Redirects to thank you page on success

To implement email notifications, update `backend/server.js` with Nodemailer configuration.

## 📚 GitHub Version Control

### Initialize Git Repository

**Using npm command:**
```bash
npm run git:setup
```

**Or use dedicated setup script:**
```bash
# Windows
.\github-setup.bat

# macOS/Linux
chmod +x github-setup.sh
./github-setup.sh
```

**Or manually:**
```bash
# Initialize Git with user settings
git init
git config user.email "your-email@example.com"
git config user.name "Your Name"

# Add all files
git add .

# Initial commit
git commit -m "Initial commit: ArchiSpace React + Node.js"
```

### Connect to GitHub Repository

1. **Create a new repository on GitHub:**
   - Go to https://github.com/new
   - Name it `archispace` (or your preferred name)
   - Do NOT initialize with README, .gitignore, or license

2. **Add remote to your local repository:**
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/archispace.git
   ```

   **Or use the npm command:**
   ```bash
   npm run git:remote
   ```
   *(update the URL in package.json scripts first)*

3. **Push to GitHub:**
   ```bash
   git branch -M main
   git push -u origin main
   ```

   **Or use the npm command:**
   ```bash
   npm run deploy:github
   ```

### Quick Reference

| Task | Command |
|------|---------|
| Check status | `git status` |
| Stage changes | `git add .` |
| Commit | `git commit -m "message"` |
| Push | `git push origin main` |
| Pull updates | `git pull origin main` |
| View history | `git log` |
| Quick deploy | `npm run deploy:github` |

📚 **For detailed GitHub guide, see:** [GITHUB_SETUP.md](GITHUB_SETUP.md)

### GitHub Actions CI/CD

Automated testing and deployment on every push to `main`:
- Installs dependencies
- Builds React app  
- Runs tests
- Deploys to Heroku (if configured)

**Setup secrets in GitHub Settings → Secrets:**
- `HEROKU_API_KEY` - Your Heroku API key
- `HEROKU_APP_NAME` - Your Heroku app name
- `HEROKU_EMAIL` - Your Heroku email
```bash
git clone https://github.com/YOUR_USERNAME/archispace.git
cd archispace
npm install
npm start
```

## 🌐 Deployment

### Deploying to Production

1. **Build the React app:**
   ```bash
   cd client
   npm run build
   cd ..
   ```

2. **Deploy with Node.js Server:**
   - The Express server serves the React build files
   - Deploy the entire `Website` folder to your hosting platform
   - Set `NODE_ENV=production`

### Hosting Options
- Heroku
- Vercel (with custom API)
- AWS (EC2, Elastic Beanstalk)
- DigitalOcean
- Railway.app

## 📱 Responsive Design

The website is fully responsive:
- **Desktop**: Grid layout with full content
- **Tablet**: Adjusted spacing and grid columns
- **Mobile**: Single column layout, hamburger menu

## 🎨 Customization

### Colors
Edit the color values in CSS files:
- Primary Dark: `#111`
- Accent Gold: `#c19a6b`
- Background Light: `#f4f4f4`

### Fonts
Custom font: **Poppins** (from Google Fonts)

### Content
Update content directly in the component files in `client/src/pages/`

## 🐛 Troubleshooting

**Port already in use:**
```bash
# Kill process on port 5000
npx kill-port 5000
```

**Module not found errors:**
```bash
# Clear node_modules and reinstall
rm -rf node_modules
npm install
```

**CORS issues:**
Ensure backend is running on port 5000 and proxy is set in `client/package.json`

## 📄 License

ISC

## 🤝 Support

For issues or improvements, please refer to the project structure and modify as needed.

---

**Built with ❤️ for ArchiSpace Architects**
