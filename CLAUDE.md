# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal portfolio website for Varun Seshu, built with Vue.js 3 and deployed to GitHub Pages. The site showcases professional experience, education, projects, and skills in a single-page application format with smooth scrolling navigation.

## Development Commands

All commands should be run from the `website/` directory:

```bash
cd website/
npm install          # Install dependencies
npm run serve        # Start development server (runs on localhost:8080)
npm run build        # Build for production (outputs to dist/)
npm run lint         # Run ESLint
```

## Architecture

### Data-Driven Design

The entire site content is managed through a single JSON configuration file:
- **Content source**: `website/src/assets/data.json`
- **Structure**: Contains all text, links, images, and section data
- To update site content (work experience, projects, education, etc.), edit this JSON file

### Component Structure

**App.vue** (`website/src/App.vue`)
- Root component that manages global state and scroll detection
- Loads data from `data.json` and distributes it to child components
- Implements scroll-based active section tracking via `handleScroll()`
- Passes data to Navbar and Sections components

**Navbar System** (Adaptive)
- `Navbar.vue`: Container that switches between Sidebar and Topbar based on screen size
- `Sidebar.vue`: Desktop navigation (shown when width > 950px or height > 500px)
- `Topbar.vue`: Mobile navigation (shown on smaller screens)
- Both navigation components handle smooth scrolling to sections

**Sections** (`Sections.vue`)
- Container component that renders all content sections
- Each section (About, Education, Experience, Projects, Skills) is a separate Vue component
- Sections receive their data as props from the parent

### Scroll Behavior

The app uses custom scroll detection logic (`handleScroll()` in App.vue:29-62):
1. Checks viewport position of each section
2. Updates active section state based on what's visible
3. Navbar highlights the current section
4. Clicking nav items triggers smooth scroll to target section

### Responsive Design

- Desktop: Sidebar navigation on left (25% width), content on right (75% width)
- Mobile: Topbar navigation at top, full-width content below
- Breakpoint: 950px width or 500px height
- Media queries in App.vue and component styles handle layout adjustments

## Deployment

The site auto-deploys to GitHub Pages on every push to `main`:

**Deployment Flow**:
1. GitHub Actions workflow triggers (`.github/workflows/deploy-gh-pages.yml`)
2. Runs `npm ci` in website directory
3. Executes `scripts/gh-pages-deploy.sh`:
   - Creates orphan `gh-pages` branch
   - Builds production bundle with `npm run build`
   - Commits `dist/` contents
   - Force pushes to `gh-pages` branch
4. GitHub Pages serves from `gh-pages` branch

**Important**: Never manually edit the `gh-pages` branch - it's fully automated.

## Key Technologies

- **Vue 3**: Composition of reusable components with reactive data binding
- **Vue CLI 5**: Build tooling and development server
- **Vue Router 4**: Installed but not actively used (navigation handled via scroll)
- **Babel**: JavaScript transpilation for browser compatibility
- **ESLint**: Code linting with Vue 3 essential rules

## Making Content Changes

To update portfolio content:
1. Edit `website/src/assets/data.json`
2. Structure includes:
   - `sidebar`: Navigation configuration and profile image
   - `sections.about`: Personal info and contact details
   - `sections.education`: Array of education entries
   - `sections.experience`: Array of work experience entries
   - `sections.projects`: Array of project entries with descriptions, images, and links
   - `sections.skills`: Icon classes and skill list
3. Commit and push - changes will auto-deploy

## Adding New Sections

To add a new section type:
1. Create new component in `website/src/components/`
2. Add section ID to `data.json` sidebar sections array
3. Import and register in `Sections.vue`
4. Add section data structure to `data.json` sections object
5. Render component in `Sections.vue` template with ID matching the section name
