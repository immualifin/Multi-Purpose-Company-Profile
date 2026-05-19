# Multi-Purpose Company Profile Application

A robust and modern Company Profile Management System built with **Laravel 12**. This application is designed to help businesses showcase their identity, services, products, and achievements through a professional web interface with a powerful administrative dashboard.

## 🚀 Key Features

- **Dynamic Content Management:** Easily manage every section of your company profile from the admin panel.
- **Service & Principles:** Highlight your core values and company principles with support for SVG icons.
- **Product Showcase:** Display your products or services with detailed descriptions and high-quality thumbnails.
- **Client & Testimonials:** Manage client relationships and showcase social proof through a dedicated testimonial system.
- **Team Management:** Introduce your team members with professional profiles.
- **Hero & Statistics:** Engage visitors with a dynamic hero section and visual company statistics.
- **Appointment System:** Integrated booking or contact request management.
- **Role & Permission:** Secure access control powered by Spatie Permission.

## 🛠 Tech Stack

- **Framework:** [Laravel 12](https://laravel.com)
- **Frontend:** [Tailwind CSS](https://tailwindcss.com), [Vite](https://vitejs.dev)
- **Database:** MySQL
- **Authentication:** Laravel Breeze
- **Authorization:** Spatie Laravel Permission
- **Asset Handling:** Laravel Storage (supports SVG, PNG, JPG)

## 📦 Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/immualifin/Multi-Purpose-Company-Profile.git
   cd Multi-Purpose-Company-Profile
   ```

2. **Install Dependencies:**
   ```bash
   composer install
   npm install && npm run build
   ```

3. **Environment Setup:**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

4. **Database Configuration:**
   - Create a database named `company_profile`.
   - Update `DB_DATABASE`, `DB_USERNAME`, and `DB_PASSWORD` in your `.env` file.
   - Run migrations and seeders:
     ```bash
     php artisan migrate --seed
     ```

5. **Storage Link:**
   ```bash
   php artisan storage:link
   ```

6. **Run Application:**
   ```bash
   php artisan serve
   ```

## 🗄 Database Export

For local development setup (e.g., using XAMPP), a pre-configured database export is available at:
`database/company_profile.sql`

## 📄 License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
