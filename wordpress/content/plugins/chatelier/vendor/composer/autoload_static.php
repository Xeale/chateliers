<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit04238bcb891a162c0115ccd61fa3e59d
{
    public static $prefixLengthsPsr4 = array (
        'c' => 
        array (
            'chatelier\\' => 10,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'chatelier\\' => 
        array (
            0 => __DIR__ . '/../..' . '/',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit04238bcb891a162c0115ccd61fa3e59d::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit04238bcb891a162c0115ccd61fa3e59d::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit04238bcb891a162c0115ccd61fa3e59d::$classMap;

        }, null, ClassLoader::class);
    }
}
