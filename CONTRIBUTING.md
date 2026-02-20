# Contributing to ArchiSpace

Thank you for your interest in contributing to the ArchiSpace project! This guide will help you get started.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Commit Guidelines](#commit-guidelines)
- [Pull Request Process](#pull-request-process)
- [Code Style](#code-style)
- [Testing](#testing)
- [Reporting Issues](#reporting-issues)

## 🤝 Code of Conduct

Be respectful, inclusive, and professional. We're all here to build something great together.

## 🚀 Getting Started

### Prerequisites

- Node.js (v16+)
- Git
- GitHub account

### Setup Development Environment

1. **Fork the repository** on GitHub

2. **Clone your fork:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/archispace.git
   cd archispace
   ```

3. **Add upstream remote:**
   ```bash
   git remote add upstream https://github.com/ORIGINAL_OWNER/archispace.git
   ```

4. **Install dependencies:**
   ```bash
   npm install
   cd backend && npm install && cd ..
   cd client && npm install && cd ..
   ```

5. **Start development server:**
   ```bash
   npm start
   ```

6. **Open in browser:**
   - Frontend: http://localhost:3000
   - Backend: http://localhost:5000

## 📝 Development Workflow

### 1. Create Feature Branch

```bash
# Update main branch
git fetch upstream
git checkout main
git merge upstream/main

# Create feature branch
git checkout -b feature/your-feature-name
```

### 2. Make Changes

- Edit files in `client/src/` for frontend changes
- Edit files in `backend/` for backend changes
- Keep commits small and focused

### 3. Test Your Changes

```bash
# Test locally
npm start

# Run tests (if available)
npm test
```

### 4. Commit Changes

```bash
git add .
git commit -m "feat(scope): Your detailed commit message"
```

See [Commit Guidelines](#commit-guidelines) for details.

### 5. Push to Your Fork

```bash
git push origin feature/your-feature-name
```

### 6. Create Pull Request

1. Go to your fork on GitHub
2. Click "New Pull Request"
3. Select `main` branch of original repo
4. Fill in detailed PR description
5. Submit PR

## 📌 Commit Guidelines

Follow **Conventional Commits** format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Type
- `feat` - New feature
- `fix` - Bug fix
- `docs` - Documentation
- `style` - Styling (CSS, formatting)
- `refactor` - Code refactoring
- `perf` - Performance improvement
- `test` - Tests
- `chore` - Maintenance, dependencies

### Scope (optional)
- `header` - Header component
- `footer` - Footer component
- `contact` - Contact form
- `services` - Services page
- `projects` - Projects page
- `styles` - Global styles
- `api` - API endpoints
- `config` - Configuration

### Examples

```bash
git commit -m "feat(contact): Add form validation"
git commit -m "fix(header): Fix mobile menu toggle"
git commit -m "docs(readme): Update setup instructions"
git commit -m "style(pages): Improve responsive design"
git commit -m "refactor(components): Extract Header logic"
```

## 🔄 Pull Request Process

### Before Submitting PR

1. **Sync with upstream:**
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

2. **Test thoroughly:**
   ```bash
   npm start
   # Test all features manually
   ```

3. **Check for console errors:**
   - Open browser DevTools (F12)
   - Ensure no errors in console

4. **Follow code style** (see below)

### PR Description Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Related Issues
Closes #issue-number

## Tests
- [ ] Tested locally
- [ ] No console errors
- [ ] Responsive design verified

## Screenshots (if applicable)
Add screenshots for UI changes

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Comments added for complex logic
- [ ] Documentation updated
- [ ] No new warnings generated
```

## 💻 Code Style

### JavaScript/React

```javascript
// ✅ DO
const handleClick = () => {
  // Clear, descriptive name
  console.log('Button clicked');
};

// Use const by default, let if needed
const name = 'ArchiSpace';
let counter = 0;

// Arrow functions for callbacks
.map(item => <Item key={item.id} {...item} />)

// Destructure props
const Header = ({ title, subtitle }) => {
  return <h1>{title}</h1>;
};

// ❌ DON'T
var x = 5;  // Avoid var
function onclick(){...}  // Avoid function keyword for callbacks
<Items items={props.items} />  // Avoid passing all props
```

### CSS

```css
/* ✅ DO */
.button {
  padding: 10px 20px;
  background: #111;
  border-radius: 4px;
  transition: all 0.3s ease;
}

.button:hover {
  background: #333;
}

/* ❌ DON'T */
.btn { color: red; }  /* Too short, use BEM naming */
.Button { ... }  /* Only lowercase for CSS classes */
button { ... }  /* Avoid element selectors for components */
```

### Naming Conventions

- **Components:** PascalCase (`Header.js`, `ContactForm.js`)
- **Hooks:** camelCase with `use` prefix (`useImageModal`, `useNavigation`)
- **Functions:** camelCase (`handleSubmit`, `fetchData`)
- **Constants:** UPPER_SNAKE_CASE (`API_URL`, `MAX_LENGTH`)
- **CSS Classes:** kebab-case (`.header`, `.contact-form`)

## 🧪 Testing

### Manual Testing Checklist

- [ ] Feature works as intended
- [ ] No console errors
- [ ] No console warnings
- [ ] Works on desktop (1920x1080)
- [ ] Works on tablet (768px)
- [ ] Works on mobile (375px)
- [ ] Form validation works
- [ ] Navigation works
- [ ] Links are correct
- [ ] Images load properly
- [ ] Performance is acceptable

### Responsive Testing

```bash
# Use browser DevTools
# Open DevTools: F12 or Ctrl+Shift+I
# Click device toggle: Ctrl+Shift+M

# Test breakpoints:
# Desktop: 1920px and up
# Tablet: 768px to 1024px
# Mobile: 320px to 767px
```

## 🐛 Reporting Issues

### Before Reporting

1. Check if issue already exists
2. Check closed issues
3. Verify it's reproducible
4. Test on latest version

### Issue Template

```markdown
## Description
Clear description of the issue

## Steps to Reproduce
1. Go to...
2. Click...
3. See error...

## Expected Behavior
What should happen

## Actual Behavior
What actually happened

## Environment
- Node version: (e.g., 16.0.0)
- OS: (e.g., Windows 10)
- Browser: (e.g., Chrome 90)

## Screenshots
If applicable

## Console Error
```
Copy any error messages here
```
```

## ❓ Questions?

- Check existing issues and PRs
- See [GITHUB_SETUP.md](GITHUB_SETUP.md) for Git help
- See [GIT_COMMANDS.md](GIT_COMMANDS.md) for command reference
- Reach out in an issue with `[question]` tag

## 🙏 Thank You!

Your contributions make ArchiSpace better for everyone. Thanks for helping out! 🚀

---

**Happy contributing! 💜**
