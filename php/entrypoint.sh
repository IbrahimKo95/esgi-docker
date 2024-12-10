composer install
npm run build
php artisan key:generate
php artisan migrate:fresh --seed