# GitHub Setup & Commands Guide

Complete guide for setting up and managing your ArchiSpace project on GitHub.

## 📋 Quick Start

### 1. Initialize Local Repository

**Using npm command:**
```bash
npm run git:setup
```

**Or manually:**
```bash
git init
git config user.email "your-email@example.com"
git config user.name "Your Name"
git add .
git commit -m "Initial commit: ArchiSpace React + Node.js"
```

### 2. Create GitHub Repository

1. Go to [GitHub.com](https://github.com)
2. Click **New Repository** button
3. Repository name: `archispace`
4. Description: `ArchiSpace Architects - React + Node.js Portfolio`
5. Make it **Public** or **Private**
6. **DO NOT** initialize with README, .gitignore, or license
7. Click **Create Repository**

### 3. Connect Local Repo to GitHub

Copy the HTTPS or SSH URL from your new GitHub repo, then run:

**Using HTTPS (easiest):**
```bash
git remote add origin https://github.com/YOUR_USERNAME/archispace.git
git branch -M main
git push -u origin main
```

**Or the quick npm command:**
```bash
npm run git:remote
```
*(Update the URL in package.json first)*

## 🔄 Branching Strategy

### Main branches:
- **main** - Production-ready code
- **develop** - Development/staging branch

### Create feature branch:
```bash
git checkout -b feature/your-feature-name
```

### Merge workflow:
```bash
# On feature branch
git add .
git commit -m "Add your feature"
git push origin feature/your-feature-name

# Create Pull Request on GitHub, then:
git checkout main
git pull origin main
git merge feature/your-feature-name
git push origin main
```

## 📝 Commit Messages

Follow conventional commit format:

```
<type>(<scope>): <subject>
<blank line>
<body>
<blank line>
<footer>
```

**Types:**
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `style:` - Styling
- `refactor:` - Code refactoring
- `perf:` - Performance improvement
- `test:` - Adding tests
- `chore:` - Maintenance tasks

**Examples:**
```bash
git commit -m "feat(contact): Add email validation"
git commit -m "fix(header): Fix mobile menu toggle"
git commit -m "docs: Update README with GitHub setup"
```

## 🚀 Daily Git Commands

| Command | Purpose |
|---------|---------|
| `git status` | Check current changes |
| `git add .` | Stage all changes |
| `git add <file>` | Stage specific file |
| `git commit -m "message"` | Commit changes |
| `git push origin main` | Push to GitHub |
| `git pull origin main` | Pull latest updates |
| `git log` | View commit history |
| `npm run deploy:github` | Quick commit and push |

## ⚙️ GitHub Actions (CI/CD)

The workflow file `.github/workflows/deploy.yml` automatically:
- Runs on every push to `main` and `develop`
- Installs dependencies
- Builds the React app
- Runs tests (if available)
- Deploys to Heroku (if configured)

### Setup Heroku Deployment:

1. **Add GitHub Secrets** (Settings → Secrets and variables → Actions):
   - `HEROKU_API_KEY` - Your Heroku API key
   - `HEROKU_APP_NAME` - Your Heroku app name
   - `HEROKU_EMAIL` - Your Heroku email

2. **Deploy automatically on push to main:**
   Workflow will handle it automatically!

## 📦 Release & Versioning

```bash
# Tag a release
git tag -a v1.0.0 -m "Release version 1.0.0"
git push origin v1.0.0

# Create GitHub Release from tag (do on GitHub.com)
```

## 🔐 Security Best Practices

1. **Never commit sensitive data:**
   - Passwords
   - API keys
   - Environment variables
   - Private credentials

2. **Use .env files:**
   ```bash
   # .env (local only, in .gitignore)
   REACT_APP_API_URL=http://localhost:5000
   
   # .env.example (commit to repo)
   REACT_APP_API_URL=
   ```

3. **Setup Branch Protection:**
   - Go to Settings → Branches
   - Add protection rules for `main`:
     - Require pull request reviews
     - Dismiss stale reviews
     - Require status checks to pass

4. **Enable CODEOWNERS** (optional):
   Create `.github/CODEOWNERS`:
   ```
   * @YOUR_USERNAME
   ```

## 🤝 Collaboration

### Clone the repository:
```bash
git clone https://github.com/YOUR_USERNAME/archispace.git
cd archispace
npm install
```

### Pull latest changes:
```bash
git pull origin main
```

### Create and push changes:
```bash
git checkout -b feature/new-feature
git add .
git commit -m "feat: Add new feature"
git push origin feature/new-feature
# Create Pull Request on GitHub
```

## 📊 GitHub Pages Deployment

### Enable GitHub Pages:

1. Go to repository **Settings**
2. Navigate to **Pages** (left sidebar)
3. Under "Build and deployment":
   - Source: `Deploy from a branch`
   - Branch: `main` / `/(root)`
4. Click **Save**

Your site will be available at: `https://YOUR_USERNAME.github.io/archispace`

### For React SPA custom deployment:
Update `client/package.json`:
```json
"homepage": "https://YOUR_USERNAME.github.io/archispace"
```

## 🔍 Useful GitHub Links

| Resource | URL |
|----------|-----|
| GitHub Docs | https://docs.github.com |
| Git Cheatsheet | https://github.github.com/training-kit/ |
| GitHub CLI | https://cli.github.com |
| GitHub Desktop | https://desktop.github.com |

## 🆘 Troubleshooting

### "fatal: remote origin already exists"
```bash
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/archispace.git
```

### "Permission denied (publickey)"
Setup SSH key:
```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
# Add public key to GitHub Settings → SSH and GPG keys
```

### "Branch main set up to track remote"
Just the first push, normal behavior.

### Undo last commit:
```bash
git reset --soft HEAD~1
```

### View differences:
```bash
git diff                 # Unstaged changes
git diff --cached        # Staged changes
git diff main..origin/main  # Commits ahead
```

## 📚 Additional Resources

- [Git Documentation](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Conventional Commits](https://www.conventionalcommits.org/)

---

**Happy coding! 🚀**
