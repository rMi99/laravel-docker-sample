```You Can Easily Copy Ur laravel Project & Run ```

🎓

# Laravel Docker Starter Kit

- Laravel v10.x
- PHP v8.1.x
- MySQL v8.1.x (default)
- MariaDB v10.11
- PostgreSQL v16.x
- pgAdmin v4.x
- phpMyAdmin v5.x
- Mailpit v1.x
- Node.js v18.x
- NPM v10.x
- Yarn v1.x
- Vite v5.x
- Rector v1.x
- Redis v7.2.x

## Requirements  ✊

- Stable version of [Docker](https://docs.docker.com/engine/install/)
- Compatible version of [Docker Compose](https://docs.docker.com/compose/install/#install-compose)

## How To Deploy🎓

### For the first time only!🎓
- `git clone https://github.com/rmi99/laravel-docker-sample.git`
- `cd laravel-docke-sample`
- `docker compose up -d --build`
- `docker compose exec php bash`
- `composer setup`

### From the second time onwards🎓
- `docker compose up -d`

## Access URLs

### Laravel App
- URL: http://localhost

### Mailpit
- URL: http://localhost:8025

### phpMyAdmin
- URL: http://localhost:8080
  - Server: `db`
  - Username: `rmi99`
  - Password: `rmi99`
  - Database: `rmi99`

### Adminer
- URL: http://localhost:9090
  - Server: `db`
  - Username: `rmi99`
  - Password: `rmi99`
  - Database: `rmi99`

## Basic docker-compose commands

- Build or rebuild services
  - `docker compose build`
- Create and start containers
  - `docker compose up -d`
- Stop and remove containers, networks
  - `docker compose down`
- Stop all services
  - `docker compose stop`
- Restart service containers
  - `docker compose restart`
- Run a command inside a container
  - `docker compose exec [container] [command]`

## Useful Laravel Commands

- Display basic information about your application
  - `php artisan about`
- Remove the configuration cache file
  - `php artisan config:clear`
- Flush the application cache
  - `php artisan cache:clear`
- Clear all cached events and listeners
  - `php artisan event:clear`
- Delete all jobs from the specified queue
  - `php artisan queue:clear`
- Remove the route cache file
  - `php artisan route:clear`
- Clear all compiled view files
  - `php artisan view:clear`
- Remove the compiled class file
  - `php artisan clear-compiled`
- Remove the cached bootstrap files
  - `php artisan optimize:clear`
- Delete the cached mutex files created by scheduler
  - `php artisan schedule:clear-cache`
- Flush expired password reset tokens
  - `php artisan auth:clear-resets`

## Laravel Pint (Code Style Fixer | PHP-CS-Fixer)

- Format all files
  - `vendor/bin/pint`
- Format specific files or directories
  - `vendor/bin/pint app/Models`
  - `vendor/bin/pint app/Models/User.php`
- Format all files with preview
  - `vendor/bin/pint -v`
- Format uncommitted changes according to Git
  - `vendor/bin/pint --dirty`
- Inspect all files
  - `vendor/bin/pint --test`

## Rector

- Dry Run
  - `vendor/bin/rector process --dry-run`
- Process
  - `vendor/bin/rector process`

---

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

You may also try the [Laravel Bootcamp](https://bootcamp.laravel.com), where you will be guided through building a modern Laravel application from scratch.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains thousands of video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
