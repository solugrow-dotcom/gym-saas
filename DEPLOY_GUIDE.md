# Manual Deployment Guide

Since automated deployment tools are facing authentication/environment issues, follow these steps to deploy your **Gym Service** manually. This is the most reliable method.

## Prerequisites
- A GitHub account ([Sign up here](https://github.com/join))
- A Cloudflare account ([Sign up here](https://dash.cloudflare.com/sign-up))

## Step 1: Create a GitHub Repository
1. Go to [GitHub New Repository](https://github.com/new).
2. Name it `gym-saas` (or anything you like).
3. Set it to **Private** (recommended) or **Public**.
4. Click **Create repository**.
5. Copy the HTTPS URL (e.g., `https://github.com/your-username/gym-saas.git`).

## Step 2: Push Code to GitHub
Open your terminal (Command Prompt or PowerShell) in the project folder and run:

```bash
# Link your local project to the new GitHub repo
git remote add origin <YOUR_GITHUB_REPO_URL>

# Push the code
git push -u origin master
```
*(Replace `<YOUR_GITHUB_REPO_URL>` with the URL you copied in Step 1)*

## Step 3: Deploy to Cloudflare Pages
1. Log in to the [Cloudflare Dashboard](https://dash.cloudflare.com/).
2. Go to **Workers & Pages** > **Create Application** > **Pages** > **Connect to Git**.
3. Select your GitHub account and the `gym-saas` repository.
4. Set **Framework Preset** to **Next.js**.
5. Add the following **Environment Variables** (check your `.env.local` file for values):
   - `NEXT_PUBLIC_INSFORGE_URL`
   - `NEXT_PUBLIC_INSFORGE_ANON_KEY`
6. Click **Save and Deploy**.

## Step 4: Add Custom Domain
1. Once deployed, go to the project settings in Cloudflare Pages.
2. Click **Custom Domains**.
3. Add `solugrow.site`.
4. Cloudflare will automatically configure DNS records if your domain is managed by them.

---
**Your site will be live within minutes!**
