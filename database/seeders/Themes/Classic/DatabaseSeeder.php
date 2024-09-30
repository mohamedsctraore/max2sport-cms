<?php

namespace Database\Seeders\Themes\Classic;

class DatabaseSeeder extends \Database\Seeders\Themes\Main\DatabaseSeeder
{
    public function getSeeders(): array
    {
        return [
            ...parent::getSeeders(),
            ThemeOptionSeeder::class,
            PageSeeder::class,
            WidgetSeeder::class,
        ];
    }
}
