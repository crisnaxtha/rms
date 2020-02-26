<?php
namespace App\DM_libraries;

class DM_nepali_data {
        public static function convertNos($nos){
                $n = '';
            switch($nos){
                case "०": $n = 0; break;
                case "१": $n = 1; break;
                case "२": $n= 2; break;
                case "३": $n = 3; break;
                case "४": $n = 4; break;
                case "५": $n = 5; break;
                case "६": $n = 6; break;
                case "७": $n = 7; break;
                case "८": $n = 8; break;
                case "९": $n = 9; break;
                case "0": $n = "०"; break;
                case "1": $n = "१"; break;
                case "2": $n = "२"; break;
                case "3": $n = "३"; break;
                case "4": $n = "४"; break;
                case "5": $n = "५"; break;
                case "6": $n = "६"; break;
                case "7": $n = "७"; break;
                case "8": $n = "८"; break;
                case "9": $n = "९"; break;
                case "-": $n = "-"; break;
            }
            return $n;
        }
        public static function get_nepali_data($nepali_date) {
            // An array of Nepali number representations
            $num = 0; // get your number
            // replace this with whatever you're using to get your number
            if (isset($nepali_date)) $num = strip_tags($nepali_date);
            /* Convert your number (could be a string of unicode,
            * not necessarily a digit) into a string and split it
            * to get an array of characters.
            */
            $str_num = preg_split('//u', ("". $num), -1); // not explode('', ("". $num))

            // For each item in your exploded string, retrieve the Nepali equivalent or vice versa.
            $out = '';
            $out_arr = array_map('self::convertNos', $str_num);
            $out = implode('', $out_arr);
            return $out;
        }
}
