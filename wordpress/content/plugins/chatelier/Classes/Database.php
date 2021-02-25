<?php

namespace chatelier\Classes;

class Database
{
    const TABLE_NAME = "wp_user_note";

    static public function createTableCommentCourse()
    {
        global $wpdb;
        $charsetCollate = $wpdb->get_charset_collate();
        $tableName = self::TABLE_NAME;
        $sql = "CREATE TABLE IF NOT EXISTS {$tableName} (`id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT ,`user_id` INT UNSIGNED NOT NULL,
        `course_id` INT UNSIGNED NOT NULL, `add_date` DATE, `comment` TEXT) $charsetCollate";
        $wpdb->query($sql);
    }
    static public function deleteTableCommentCourse()
    {
        global $wpdb;
        $tableName = self::TABLE_NAME;
        $sql = "DROP TABLE IF EXISTS `{$tableName}`";
        $wpdb->query($sql);
    }
}
