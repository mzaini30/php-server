@echo off

set port=8956
set proyek=codeigniter

title %proyek%

copy php\php.template.ini php\php.ini
echo extension_dir = "%cd%\php\ext" >> php\php.ini

start firefox http://localhost:%port%

cd %proyek%
..\php\php -S localhost:%port%