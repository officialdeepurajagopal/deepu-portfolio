# 🎉 GitHub Pages Deployment - Quick Start

## ✅ Your Website is Ready!

Everything has been prepared for GitHub Pages deployment. Follow these simple steps:

---

## 🚀 3-Step Deployment Process

### **STEP 1: Create GitHub Repository** (2 minutes)

1. Open your browser and go to: **https://github.com/new**
2. Fill in:
   - **Repository name**: `DeepuWebPage`
   - **Description**: `Professional portfolio website - Senior QA Automation Engineer`
   - **Visibility**: ✅ **Public** (required for free GitHub Pages)
   - ❌ **DO NOT** check "Add a README file"
   - ❌ **DO NOT** check "Add .gitignore"
3. Click **"Create repository"**

---

### **STEP 2: Push Your Code** (1 minute)

Choose either **SSH** (recommended) or **HTTPS**:

#### **Option A: SSH (Recommended - No passwords needed!)**

```bash
cd /Users/deepurajagopal/Desktop/Deepzz/DeepuWebPage/deepu-website

git remote add origin git@github.com:officialdeepurajagopal/DeepuWebPage.git

git push -u origin main
```

**First time using SSH?** 
- See `SSH_SETUP_GUIDE.md` for complete setup instructions
- Quick setup: Generate key → Add to GitHub → Push! (5 minutes)

#### **Option B: HTTPS (Requires token)**

```bash
cd /Users/deepurajagopal/Desktop/Deepzz/DeepuWebPage/deepu-website

git remote add origin https://github.com/officialdeepurajagopal/DeepuWebPage.git

git push -u origin main
```

**If prompted for credentials:**
- Username: `officialdeepurajagopal`
- Password: Use a **Personal Access Token** (not your GitHub password)
  - Get one here: https://github.com/settings/tokens
  - Click "Generate new token (classic)"
  - Select `repo` scope
  - Copy and use the token as password

---

### **STEP 3: Enable GitHub Pages** (1 minute)

1. Go to your repository: **https://github.com/officialdeepurajagopal/DeepuWebPage**
2. Click the **"Settings"** tab (top right)
3. In the left sidebar, find and click **"Pages"** (under "Code and automation")
4. Under **"Source"**:
   - Branch: Select **`main`**
   - Folder: Select **`/ (root)`**
5. Click **"Save"**

---

## 🌐 Your Website is LIVE!

After saving, GitHub will show a message like:

> ✅ Your site is published at **https://officialdeepurajagopal.github.io/DeepuWebPage/**

**Note:** It may take 1-2 minutes for the site to be live. Refresh the page.

---

## 🔄 How to Update Your Website Later

Whenever you make changes:

```bash
cd /Users/deepurajagopal/Desktop/Deepzz/DeepuWebPage/deepu-website

# Make your edits to HTML/CSS files, then:

git add .
git commit -m "Your update message"
git push origin main
```

**Or use the helper script:**
```bash
./deploy.sh
```

Changes will be live in 1-2 minutes! 🚀

---

## 📋 What's in Your Repository

✅ **index.html** - Homepage with hero section  
✅ **about.html** - Your professional profile  
✅ **projects.html** - Project showcase  
✅ **articles.html** - Articles listing  
✅ **article1.html** - Sample article  
✅ **style.css** - Modern, responsive styling  
✅ **README.md** - Project documentation  
✅ **SSH_SETUP_GUIDE.md** - SSH authentication setup (recommended!)  
✅ **DEPLOYMENT_GUIDE.md** - Detailed instructions  
✅ **deploy.sh** - Deployment helper script  

---

## 🎯 Share Your Website

Once live, share this URL everywhere:

**https://officialdeepurajagopal.github.io/DeepuWebPage/**

Add it to:
- ✉️ **Email signature**
- 💼 **LinkedIn profile** (in "Website" field)
- 📄 **Resume** (under contact info)
- 🐙 **GitHub profile README**
- 💬 **Professional networking**

---

## 🆘 Troubleshooting

**Problem: "remote origin already exists"**
```bash
git remote remove origin
git remote add origin https://github.com/officialdeepurajagopal/DeepuWebPage.git
```

**Problem: "Permission denied"**
- Use a Personal Access Token instead of password
- Or set up SSH keys: https://docs.github.com/en/authentication

**Problem: "Site not showing"**
- Wait 2-3 minutes after enabling Pages
- Hard refresh browser: `Cmd + Shift + R` (Mac)
- Check repository is **Public** not Private

**Problem: "404 Page Not Found"**
- Verify Pages is enabled in Settings → Pages
- Check the branch is set to `main`
- Ensure folder is set to `/ (root)`

---

## 📞 Contact & Links

**Deepu Rajagopal**  
Senior QA Automation Engineer | SDET

- 📧 Email: beingdeepurajagopal@gmail.com
- 💼 LinkedIn: https://www.linkedin.com/in/deepu-rajagopal/
- 🐙 GitHub: https://github.com/officialdeepurajagopal
- 📍 Location: Leixlip, Kildare, Ireland

---

## ⏭️ What's Next?

After deployment:
1. ✅ Add your website URL to LinkedIn
2. ✅ Update your resume with the link
3. ✅ Create more project pages
4. ✅ Write technical articles
5. ✅ Add images to the `images/` folder
6. ✅ Consider custom domain (optional)

---

**You're all set! Just follow the 3 steps above and your professional portfolio will be live! 🎉**

For more detailed instructions, see `DEPLOYMENT_GUIDE.md`.

