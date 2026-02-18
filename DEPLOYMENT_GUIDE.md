# GitHub Pages Deployment Guide

## 🚀 How to Publish Your Website to GitHub Pages

Follow these steps to publish your website online using GitHub Pages:

### Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com) and sign in to your account
2. Click the **"+"** icon in the top right corner
3. Select **"New repository"**
4. Enter repository details:
   - **Repository name**: `DeepuWebPage` (or any name you prefer)
   - **Description**: "Professional portfolio website"
   - **Visibility**: Public
   - **DO NOT** initialize with README, .gitignore, or license (we already have these)
5. Click **"Create repository"**

### Step 2: Link Your Local Repository to GitHub

After creating the repository, GitHub will show you commands. Run these in your terminal:

```bash
cd /Users/deepurajagopal/Desktop/Deepzz/DeepuWebPage/deepu-website

# Add the remote repository (replace USERNAME with your GitHub username)
git remote add origin https://github.com/officialdeepurajagopal/DeepuWebPage.git

# Verify the remote was added
git remote -v
```

### Step 3: Push Your Code to GitHub

```bash
# Push your code to GitHub
git push -u origin main
```

**Note:** If you're prompted for credentials:
- Use your GitHub username
- For password, use a [Personal Access Token](https://github.com/settings/tokens) instead of your GitHub password
- Or set up SSH keys (recommended)

### Step 4: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section (in the left sidebar under "Code and automation")
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**

### Step 5: Wait for Deployment

- GitHub Pages will automatically build and deploy your site
- This usually takes 1-2 minutes
- You'll see a message like: "Your site is live at `https://officialdeepurajagopal.github.io/DeepuWebPage/`"

### Step 6: Visit Your Live Website! 🎉

Your website will be available at:
```
https://officialdeepurajagopal.github.io/DeepuWebPage/
```

Or if you named your repository differently:
```
https://YOUR-USERNAME.github.io/YOUR-REPO-NAME/
```

---

## 📝 Making Updates to Your Website

Whenever you want to update your website:

```bash
# Navigate to your project
cd /Users/deepurajagopal/Desktop/Deepzz/DeepuWebPage/deepu-website

# Make your changes to HTML/CSS files, then:

# Stage your changes
git add .

# Commit your changes
git commit -m "Description of what you changed"

# Push to GitHub
git push origin main
```

GitHub Pages will automatically update your live site within 1-2 minutes!

---

## 🔧 Alternative: Using GitHub Desktop (GUI Method)

If you prefer a graphical interface:

1. Download and install [GitHub Desktop](https://desktop.github.com/)
2. Sign in to your GitHub account
3. Click **File** → **Add Local Repository**
4. Select your `deepu-website` folder
5. Click **Publish repository** button
6. Follow Step 4 above to enable GitHub Pages

---

## 🌐 Custom Domain (Optional)

If you want to use your own domain (e.g., `www.deepurajagopal.com`):

1. Buy a domain from a registrar (Namecheap, GoDaddy, Google Domains, etc.)
2. In your repository Settings → Pages, add your custom domain
3. In your domain registrar's DNS settings, add:
   - For apex domain (`deepurajagopal.com`):
     ```
     A Record → 185.199.108.153
     A Record → 185.199.109.153
     A Record → 185.199.110.153
     A Record → 185.199.111.153
     ```
   - For www subdomain:
     ```
     CNAME → officialdeepurajagopal.github.io
     ```
4. Wait for DNS propagation (can take up to 24 hours)

---

## 📊 Current Git Status

Your repository is ready! You have:
- ✅ Initialized git repository
- ✅ Created .gitignore file
- ✅ Created README.md
- ✅ Made initial commit
- ✅ Set up author information

**Next step:** Push to GitHub by following Step 2 and Step 3 above.

---

## 🆘 Troubleshooting

### Issue: "remote origin already exists"
```bash
git remote remove origin
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPO.git
```

### Issue: Authentication failed
Use a Personal Access Token:
1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Generate new token (classic)
3. Select `repo` scope
4. Use this token as your password when pushing

### Issue: Site not updating
- Wait 2-3 minutes after pushing
- Check GitHub Actions tab for build status
- Hard refresh your browser (Cmd+Shift+R on Mac)

---

## 🎯 Quick Command Reference

```bash
# Check status
git status

# Stage all changes
git add .

# Commit changes
git commit -m "Your message"

# Push to GitHub
git push origin main

# Pull latest changes
git pull origin main

# View commit history
git log --oneline

# View remote URL
git remote -v
```

---

## ✅ Checklist

- [ ] Create GitHub repository
- [ ] Add remote origin
- [ ] Push code to GitHub
- [ ] Enable GitHub Pages in repository settings
- [ ] Wait for deployment
- [ ] Visit live website
- [ ] Share your URL!

---

**Your Portfolio URL will be:**
### `https://officialdeepurajagopal.github.io/DeepuWebPage/`

Share this link on your resume, LinkedIn, and with potential employers! 🚀

