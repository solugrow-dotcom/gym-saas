# Deploy Kaise Karein (Hindi Guide)

Aapka project ab ready hai. Isse live karne ke liye bas neeche diye gaye instructions ko follow karein.

## Step 1: GitHub Repository Banayein
1.  [GitHub](https://github.com/) par login karein.
2.  Ek **New Repository** banayein.
3.  Uska naam rakhein `gym-saas`.
4.  **Create repository** button par click karein.
5.  Aapko ek URL milega (jaise `https://github.com/username/gym-saas.git`). Woh **URL mujhe bhejein**.

## Step 2: Code Push Karein (Main karunga)
Jab aap mujhe URL denge, main aapka pura code wahan upload kar dunga.

## Step 3: Cloudflare Pages par Connect Karein
1.  [Cloudflare Dashboard](https://dash.cloudflare.com/) par login karein.
2.  **Workers & Pages** -> **Create Application** -> **Pages** -> **Connect to Git** par jaayein.
3.  Apna GitHub account select karein aur `gym-saas` repository ko chunein.
4.  **Framework Preset** mein **Next.js** select karein.
5.  **Environment Variables** mein yeh do cheezein add karein (zaroori hai):
    *   **Variable Name:** `NEXT_PUBLIC_INSFORGE_URL`
        *   **Value:** `https://4vvamm4e.ap-southeast.insforge.app`
    *   **Variable Name:** `NEXT_PUBLIC_INSFORGE_ANON_KEY`
        *   **Value:** (Aapke `.env.local` file mein jo key hai, wahi use karein. Woh lambi key `eyJhbGciOiJIUzI1NiIs...` se shuru hoti hai)
6.  **Save and Deploy** par click karein.

## Step 4: Domain Connect Karein
1.  Deployment ke baad, Cloudflare Pages ki settings mein jaayein.
2.  **Custom Domains** par click karein.
3.  Wahan `solugrow.site` daalein.

Bas ho gaya! Aapki website ab puri duniya dekhegi.
