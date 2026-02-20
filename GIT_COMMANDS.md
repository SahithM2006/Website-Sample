# Git & GitHub Commands Cheat Sheet

**Quick reference for all Git and GitHub commands used in ArchiSpace project**

## 🚀 Initial Setup

```bash
# Option 1: Using npm
npm run git:setup

# Option 2: Using batch script (Windows)
.\github-setup.bat

# Option 3: Using shell script (macOS/Linux)
./github-setup.sh

# Option 4: Manual setup
git init
git config user.email "your-email@example.com"
git config user.name "Your Name"
git add .
git commit -m "Initial commit: ArchiSpace React + Node.js"
```

## 🔗 Connect to GitHub

```bash
# Add remote repository
git remote add origin https://github.com/YOUR_USERNAME/archispace.git

# Or use npm command (update URL in package.json first)
npm run git:remote

# Set main branch and push
git branch -M main
git push -u origin main
```

## 📝 Daily Workflow

```bash
# Check current status
git status

# See what changed
git diff

# Stage all changes
git add .

# Stage specific file
git add <filename>

# Unstage file
git reset <filename>

# Commit with message
git commit -m "feat: Add new feature"

# Quick commit and push (recommended)
npm run deploy:github

# Or manually push
git push origin main

# Pull latest changes
git pull origin main

# View commit history
git log
git log --oneline
git log --graph --oneline --all
```

## 🌿 Branching

```bash
# Create new branch
git checkout -b feature/feature-name

# Switch branches
git checkout main
git checkout feature/feature-name

# List branches
git branch
git branch -a  # Show remote branches too

# Delete branch
git branch -d feature/feature-name

# Rename branch
git branch -m old-name new-name

# Push new branch to GitHub
git push origin feature/feature-name
```

## 🔄 Merging & Pull Requests

```bash
# Merge branch into main
git checkout main
git pull origin main
git merge feature/feature-name

# Or using rebase (cleaner history)
git checkout feature/feature-name
git rebase main
git checkout main
git merge feature/feature-name

# Push merged changes
git push origin main
```

## 🔙 Undo Changes

```bash
# Discard changes in working directory
git checkout <filename>
git checkout .  # All files

# Unstage changes
git reset <filename>
git reset      # All files

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1

# Revert a commit (create new commit that undoes it)
git revert <commit-hash>

# View previous commits
git reflog
```

## 🏷️ Tagging & Releases

```bash
# Create lightweight tag
git tag v1.0.0

# Create annotated tag
git tag -a v1.0.0 -m "Release version 1.0.0"

# Push tags to GitHub
git push origin v1.0.0
git push origin --tags  # Push all tags

# List tags
git tag
git show v1.0.0
```

## 📊 View Changes

```bash
# See differences
git diff                      # Unstaged changes
git diff --cached            # Staged changes
git diff HEAD~1              # Last 1 commit
git diff main..feature/new   # Between branches

# Show specific file history
git log --follow <filename>
git blame <filename>         # Who changed each line

# Show commit details
git show <commit-hash>
```

## 🚨 Stashing

```bash
# Save work in progress
git stash

# Save with message
git stash save "WIP: feature description"

# List stashes
git stash list

# Apply stash and keep it
git stash apply stash@{0}

# Apply stash and remove it
git stash pop

# Delete stash
git stash drop stash@{0}
```

## 🔐 Remote Management

```bash
# List remotes
git remote -v

# Add remote
git remote add origin https://github.com/user/repo.git

# Change remote URL
git remote set-url origin https://github.com/user/newrepo.git

# Remove remote
git remote remove origin

# Fetch updates from remote
git fetch origin

# Download and merge in one step
git pull origin main

# Upload commits
git push origin main
git push origin --all        # Push all branches
```

## 🔑 SSH Setup (Optional)

```bash
# Generate SSH key
ssh-keygen -t ed25519 -C "your-email@example.com"

# Add key to GitHub:
# 1. Copy key: cat ~/.ssh/id_ed25519.pub
# 2. Go to GitHub Settings → SSH and GPG keys
# 3. Paste key and save

# Test SSH connection
ssh -T git@github.com

# Use SSH instead of HTTPS
git remote set-url origin git@github.com:YOUR_USERNAME/archispace.git
```

## 📦 Cloning & Collaboration

```bash
# Clone repository
git clone https://github.com/username/archispace.git
cd archispace

# Clone specific branch
git clone -b branch-name https://github.com/username/archispace.git

# Install dependencies
npm install
cd backend && npm install && cd ..
cd client && npm install && cd ..

# Start development
npm start
```

## 🐛 Troubleshooting

```bash
# Fix "permission denied" error
# Re-add SSH key or switch to HTTPS:
git remote set-url origin https://github.com/user/archispace.git

# Fix "branch is behind" error
git fetch origin
git pull origin main

# View unpushed commits
git log --oneline origin/main..HEAD

# View commits ahead of remote
git log --oneline origin/main..HEAD

# Undo push (dangerous!)
git push origin +HEAD~1:main    # Go back 1 commit

# Reset to remote state
git fetch origin
git reset --hard origin/main
```

## 🎯 Commit Message Format

Follow **Conventional Commits**:

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `style:` - Styling
- `refactor:` - Code refactoring
- `perf:` - Performance
- `test:` - Tests
- `chore:` - Maintenance

**Examples:**
```bash
git commit -m "feat(contact): Add email validation"
git commit -m "fix(header): Fix mobile menu bug"
git commit -m "docs(readme): Update installation steps"
git commit -m "refactor(styles): Reorganize CSS structure"
```

## 🔄 GitHub Actions

```bash
# Push triggers automatically
# Actions defined in: .github/workflows/deploy.yml

# View Actions status on GitHub:
# 1. Go to your repository
# 2. Click "Actions" tab
# 3. See workflow runs

# Manually trigger workflow:
# Available in Actions tab on GitHub
```

## 📚 Useful Links

- Git Docs: https://git-scm.com/doc
- GitHub Docs: https://docs.github.com
- Conventional Commits: https://www.conventionalcommits.org
- GitHub CLI: https://cli.github.com

---

**Keep this handy! 🚀 Happy coding!**
