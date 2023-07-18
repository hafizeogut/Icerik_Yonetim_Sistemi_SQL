CREATE DATABASE IF NOT EXISTS icerik_yonetim_sistemi
  CHARACTER SET utf8mb4 /*bu ayarlar türkçe karakterin doğru saklanabilmesi için*/
  COLLATE utf8mb4_unicode_ci;
  
USE icerik_yonetim_sistemi;
CREATE TABLE IF NOT EXISTS Settings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  company_name VARCHAR(255) NOT NULL,
  about_us TEXT NOT NULL,
  mission TEXT NOT NULL,
  vision TEXT NOT NULL,
  logo VARCHAR(255) NOT NULL,
  phone_1 VARCHAR(20) NOT NULL,
  phone_2 VARCHAR(20),
  fax_1 VARCHAR(20),
  fax_2 VARCHAR(20),
  email VARCHAR(255) NOT NULL,
  Twitter VARCHAR(255),
  Facebook VARCHAR(255),
  Instagram VARCHAR(255),
  Linkedin VARCHAR(255),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 
USE icerik_yonetim_sistemi;

CREATE TABLE IF NOT EXISTS News (
   id INT PRIMARY KEY AUTO_INCREMENT,
   url VARCHAR(255) NOT NULL,
   tittle VARCHAR(255) NOT NULL,
   description TEXT NOT NULL,
   img_url VARCHAR(255),
   video_url VARCHAR(255),
   news_type VARCHAR(50),
   isActive BOOLEAN DEFAULT true,
   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


USE icerik_yonetim_sistemi;

CREATE TABLE IF NOT EXISTS Courses (
   id INT PRIMARY KEY AUTO_INCREMENT,
   url VARCHAR(255) NOT NULL,
   title VARCHAR(255) NOT NULL,
   description TEXT NOT NULL,
   img_url VARCHAR(255),
   rankk INT /*rank bir komut olarak algılandı rankk ile güncellendi.*/,
   event_date DATE,
   isActive BOOLEAN DEFAULT true,
   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

USE icerik_yonetim_sistemi;

CREATE TABLE IF NOT EXISTS Product (
   id INT PRIMARY KEY AUTO_INCREMENT,
   url VARCHAR(255) NOT NULL,
   title VARCHAR(255) NOT NULL,
   description TEXT NOT NULL,
   rankk INT /*rank bir komut olarak algılandı rankk ile güncellendi.*/,
   isActive BOOLEAN DEFAULT true,
   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

USE icerik_yonetim_sistemi;

CREATE TABLE IF NOT EXISTS Product_images (
   id INT PRIMARY KEY AUTO_INCREMENT,
   img_url VARCHAR(255) NOT NULL,
   product_id INT,
   rankk INT,
   isActive BOOLEAN DEFAULT true,
   isCover BOOLEAN DEFAULT false,
   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (product_id) REFERENCES Product(id)
);

USE icerik_yonetim_sistemi;
/*references tablosu komut olarak alğılandığı için Referencess olarak güncellendi*/
CREATE TABLE IF NOT EXISTS Referencess (
  id INT PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  img_url VARCHAR(255),
  rankk INT,
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

USE icerik_yonetim_sistemi;
CREATE TABLE IF NOT EXISTS  Users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(255) NOT NULL,
  full_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);  
CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Members (
  id INT PRIMARY KEY AUTO_INCREMENT,
  users_id INT,
  FOREIGN KEY (users_id) REFERENCES icerik_yonetim_sistemi.Users(id)
);

CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Slides (
  id INT PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(255) NOT NULL,
  tittle VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  allowButton BOOLEAN,
  animation_time INT,
  animation_type VARCHAR(255),
  rankk INT,
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Popups (
  id INT PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(255) NOT NULL,
  tittle VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  page VARCHAR(255),
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Brands (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(255) NOT NULL,
  full_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Galleries (
  id INT PRIMARY KEY AUTO_INCREMENT,
  url VARCHAR(255),
  gallery_name VARCHAR(255),
  gallery_type VARCHAR(255),
  folder_name VARCHAR(255),
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Files (
  id INT PRIMARY KEY AUTO_INCREMENT,
  file_url VARCHAR(255) NOT NULL,
  gallery_id INT,
  rankk INT,
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (gallery_id) REFERENCES icerik_yonetim_sistemi.Galleries(id)
);

CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Images (
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255) NOT NULL,
  gallery_id INT,
  rankk INT,
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (gallery_id) REFERENCES icerik_yonetim_sistemi.Galleries(id)
);

CREATE TABLE IF NOT EXISTS icerik_yonetim_sistemi.Videos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  video_url VARCHAR(255),
  gallery_id INT,
  rankk INT,
  isActive BOOLEAN,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (gallery_id) REFERENCES icerik_yonetim_sistemi.Galleries(id)
);