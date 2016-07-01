BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO "schema_migrations" VALUES('20160530022715');
INSERT INTO "schema_migrations" VALUES('20160530125159');
INSERT INTO "schema_migrations" VALUES('20160530133638');
INSERT INTO "schema_migrations" VALUES('20160530142053');
INSERT INTO "schema_migrations" VALUES('20160530143010');
INSERT INTO "schema_migrations" VALUES('20160530231713');
INSERT INTO "schema_migrations" VALUES('20160530232006');
INSERT INTO "schema_migrations" VALUES('20160530232320');
INSERT INTO "schema_migrations" VALUES('20160531000101');
INSERT INTO "schema_migrations" VALUES('20160531000237');
INSERT INTO "schema_migrations" VALUES('20160531033204');
INSERT INTO "schema_migrations" VALUES('20160531042050');
INSERT INTO "schema_migrations" VALUES('20160601054612');
INSERT INTO "schema_migrations" VALUES('20160601090526');
INSERT INTO "schema_migrations" VALUES('20160602021408');
INSERT INTO "schema_migrations" VALUES('20160602022056');
INSERT INTO "schema_migrations" VALUES('20160602134458');
INSERT INTO "schema_migrations" VALUES('20160603062710');
INSERT INTO "schema_migrations" VALUES('20160603063138');
INSERT INTO "schema_migrations" VALUES('20160603063808');
INSERT INTO "schema_migrations" VALUES('20160603064325');
INSERT INTO "schema_migrations" VALUES('20160603070623');
INSERT INTO "schema_migrations" VALUES('20160604022511');
INSERT INTO "schema_migrations" VALUES('20160604023142');
INSERT INTO "schema_migrations" VALUES('20160605012936');
INSERT INTO "schema_migrations" VALUES('20160606013032420844');
INSERT INTO "schema_migrations" VALUES('20160606013032423690');
INSERT INTO "schema_migrations" VALUES('20160606013032425444');
INSERT INTO "schema_migrations" VALUES('20160606015952');
INSERT INTO "schema_migrations" VALUES('20160606021836');
INSERT INTO "schema_migrations" VALUES('20160607062352');
INSERT INTO "schema_migrations" VALUES('20160607062726');
INSERT INTO "schema_migrations" VALUES('20160607065038');
INSERT INTO "schema_migrations" VALUES('20160607074744');
INSERT INTO "schema_migrations" VALUES('20160608150442');
INSERT INTO "schema_migrations" VALUES('20160609081208');
INSERT INTO "schema_migrations" VALUES('20160609081501');
INSERT INTO "schema_migrations" VALUES('20160610040649');
INSERT INTO "schema_migrations" VALUES('20160610042157');
INSERT INTO "schema_migrations" VALUES('20160610054048');
INSERT INTO "schema_migrations" VALUES('20160611230007');
INSERT INTO "schema_migrations" VALUES('20160611230032');
INSERT INTO "schema_migrations" VALUES('20160612082025');
INSERT INTO "schema_migrations" VALUES('20160612082519');
INSERT INTO "schema_migrations" VALUES('20160612083049');
INSERT INTO "schema_migrations" VALUES('20160612091228');
INSERT INTO "schema_migrations" VALUES('20160612091515');
INSERT INTO "schema_migrations" VALUES('20160612091912');
INSERT INTO "schema_migrations" VALUES('20160612160056');
INSERT INTO "schema_migrations" VALUES('20160612160344');
INSERT INTO "schema_migrations" VALUES('20160613080005');
INSERT INTO "schema_migrations" VALUES('20160613080122');
INSERT INTO "schema_migrations" VALUES('20160615032647');
INSERT INTO "schema_migrations" VALUES('20160615112408');
INSERT INTO "schema_migrations" VALUES('20160616024247');
INSERT INTO "schema_migrations" VALUES('20160616030102');
INSERT INTO "schema_migrations" VALUES('20160616031545');
INSERT INTO "schema_migrations" VALUES('20160616033756');
INSERT INTO "schema_migrations" VALUES('20160616114434');
INSERT INTO "schema_migrations" VALUES('20160616172355');
INSERT INTO "schema_migrations" VALUES('20160618024929');
INSERT INTO "schema_migrations" VALUES('20160618094748');
INSERT INTO "schema_migrations" VALUES('20160619073731');
INSERT INTO "schema_migrations" VALUES('20160622021651');
INSERT INTO "schema_migrations" VALUES('20160623091245');
INSERT INTO "schema_migrations" VALUES('20160623091946');
INSERT INTO "schema_migrations" VALUES('20160623095541');
INSERT INTO "schema_migrations" VALUES('20160623100953');
INSERT INTO "schema_migrations" VALUES('20160627023425');
INSERT INTO "schema_migrations" VALUES('20160627041550');
INSERT INTO "schema_migrations" VALUES('20160628035338');
INSERT INTO "schema_migrations" VALUES('20160628044454');
CREATE TABLE "users" ("id" SERIAL PRIMARY KEY NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "namalengkap" varchar, "nomor_handphone" varchar, "is_female" boolean DEFAULT 'f', "date_of_birth" timestamp, "profil_image" varchar, "confirmation_token" varchar, "confirmed_at" timestamp, "confirmation_sent_at" timestamp, "admin" boolean DEFAULT 'f');
INSERT INTO "users" VALUES(13,'gooday@gmail.com','$2a$11$wLAJPZi4Bq3C6Co4bvRXaOiJB/SoB4VeHiLXkdgeOzz9ApZLn1OCW',NULL,NULL,NULL,51,'2016-06-28 04:59:21.571856','2016-06-26 04:16:05.587937','54.251.49.8','54.251.49.8','2016-05-31 03:59:59.129239','2016-06-28 04:59:21.573794','Avana Jaya','3435345345','f','1973-03-17 00:00:00.000000','SEVILLA-CARD.png','a3NhziDA_7LA47ZhyfxJ','2016-06-01 14:09:15.915329','2016-06-01 14:08:53.387102','t');
INSERT INTO "users" VALUES(14,'asdgdgsadg@dasdas.com','$2a$11$vzmueFTXhCPpHM.oPBXlc.fTguiLRL8IPcMUKAPP.2qSjna0aZsLS',NULL,NULL,NULL,1,'2016-06-01 07:20:00.982486','2016-06-01 07:20:00.982486','54.251.49.8','54.251.49.8','2016-06-01 07:20:00.970522','2016-06-28 09:43:38.086924','Kalam','0829329382','f','1980-04-29 00:00:00.000000','chop.png',NULL,NULL,NULL,'f');
INSERT INTO "users" VALUES(16,'hana@mailcatch.com','$2a$11$oLFX5SmiCFIXF9WVGkWm4.Ne7Pw3xLd3o0pxsw0t9addpIkJfvbma',NULL,NULL,NULL,23,'2016-06-28 04:57:19.196573','2016-06-23 09:35:11.865984','54.251.49.8','54.251.49.8','2016-06-01 13:54:49.779497','2016-06-28 05:36:19.260309','Yossava Adhi','81212121','f','2008-03-01 00:00:00.000000','avatar907713_25.gif','hdXcHMFVAA4vVxb_aDaE','2016-06-01 13:55:29.437207','2016-06-01 13:54:49.779932','f');
INSERT INTO "users" VALUES(17,'kalam@gmail.com','$2a$11$Uy7oAXQrztmyaLhXvWF3c..ougrqbbtYUC16cJzGvMK3aERd6Cslq',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-06-01 14:07:25.132885','2016-06-28 05:20:15.967112','jika mana','098989898','t',NULL,NULL,'mUbvgBmMiTxdnYCxQ8Bw',NULL,'2016-06-01 14:07:25.133173','f');
INSERT INTO "users" VALUES(18,'hua@gmail.com','$2a$11$m1twBvnxUjiQn6As/k6SY.GL/wCJ8i/tfbr80eubZbEDMOjB.ihiS',NULL,NULL,NULL,1,'2016-06-01 14:10:49.134563','2016-06-01 14:10:49.134563','54.251.49.8','54.251.49.8','2016-06-01 14:10:19.465504','2016-06-28 05:20:13.437572','dada ffdfs','44234234234','f','2016-06-01 00:00:00.000000','aqw.jpg','i6w-2s3r1_frG2cu8V-n','2016-06-01 14:10:39.683959','2016-06-01 14:10:19.465794','f');
INSERT INTO "users" VALUES(19,'lupa@gmail.com','$2a$11$spXOICQotLHgZdz9MnEa3ucPFLQG.PnWvEHQH8CihAQ98zAuz99fu',NULL,NULL,NULL,1,'2016-06-01 14:23:36.168755','2016-06-01 14:23:36.168755','54.251.49.8','54.251.49.8','2016-06-01 14:22:58.284135','2016-06-01 14:23:36.170026','dasdas vxvxc','4534534534','t',NULL,NULL,'ebJbfn1L3scgTKfzd6An','2016-06-01 14:23:17.379507','2016-06-01 14:22:58.284405','f');
INSERT INTO "users" VALUES(22,'ila@gmail.com','$2a$11$1IYOdGwTbiBEtPfTG/JCUecOEEnuIc9I5TD4yz3L372XeQqNeeKz2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-06-01 14:40:05.733005','2016-06-01 14:40:51.756224','hunayah ijp','08989898734','f',NULL,NULL,'zusNpMgtByri8BdDyq8P','2016-06-01 14:40:51.755438','2016-06-01 14:40:05.733262','f');
INSERT INTO "users" VALUES(29,'tembus@gmail.com','$2a$11$7ydrRXMPvz2YL4Zvpzh9KeMKViYjGdN3Ltr83wt0/f4ZiIctfRT5m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-06-04 10:21:09.481681','2016-06-04 10:21:09.481681','Fitratul Hasanah','082213913','t',NULL,NULL,'HYTzSV3raJjX-ozaEBxR',NULL,'2016-06-04 10:21:09.481981','f');
INSERT INTO "users" VALUES(30,'email@email.com','$2a$11$OYRQohcUZ78e8rGQlhYZ5usRna8dpdZfNN/4mVH8.bfTzo/C3.KMO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-06-04 10:25:47.454857','2016-06-04 10:25:47.454857','Oni Mayak','9234893244','t',NULL,NULL,'36R29mnu1HBy9MPxRvpi',NULL,'2016-06-04 10:25:47.455139','f');
INSERT INTO "users" VALUES(31,'dasdas@fakta.com','$2a$11$LGURqOV07wACwzE.Fku6FuvzTYzYfVMiRXcCufitqRXbior.YG7LO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-06-04 10:29:00.302407','2016-06-28 07:34:28.391624','Yossava adhi','dsadas','t',NULL,NULL,'su873Te4hsn6tCRRwD_7',NULL,'2016-06-04 10:29:00.302671','f');
INSERT INTO "users" VALUES(32,'sumi@mailcatch.com','$2a$11$8kH22jqHE98XbvPtjDsiC.oQGl0MpwfSdMvVh27NLXLdXgy5Lhdfm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-06-04 10:47:33.315094','2016-06-28 07:38:52.926611','Ahmad Dahlan','4543543','t',NULL,NULL,'byAi_DnssFczTyZTK2RL',NULL,'2016-06-04 10:47:33.315401','f');
INSERT INTO "users" VALUES(42,'tokenlr4@gmail.com','$2a$11$r/5exkSyKPWmkPzkubImw.ixJplorARqW/17iOy.X5VElNs9WiGyu',NULL,NULL,NULL,1,'2016-06-04 12:25:14.138986','2016-06-04 12:25:14.138986','54.251.49.8','54.251.49.8','2016-06-04 12:24:04.066811','2016-06-04 12:26:30.749043','Fitra Swatindra','082221363131','t','1993-03-30 00:00:00.000000','aqw.jpg','kseda29smj_7bnzews9X','2016-06-04 12:24:36.837846','2016-06-04 12:24:04.067085','f');
INSERT INTO "users" VALUES(43,'surti@mailcatch.com','$2a$11$mGcVJ6TKh2TN4/H7pnPPu.XQ33rvuZN2Eu6/LsoHPux6R76JCII2S',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2016-06-05 11:03:41.776713','2016-06-05 11:03:41.776713','yossava adhi swatindra','08312938838','t',NULL,NULL,'TGCxG6DZfTsGm2b8PAqN',NULL,'2016-06-05 11:03:41.777063','f');
INSERT INTO "users" VALUES(45,'prufrapula@thraml.com','$2a$11$tmv.6LR91hAYQTtjIfOjTuXUuWiD8MuZRmhQahVXkpAMkUYnPiFFi',NULL,NULL,NULL,1,'2016-06-05 11:18:50.723630','2016-06-05 11:18:50.723630','54.251.49.8','54.251.49.8','2016-06-05 11:17:41.774002','2016-06-05 11:56:02.036223','haji roma','994283423','f','2016-06-05 00:00:00.000000','IMG_0071.jpg','ax6o9C3KnYNJgHtyjSKX','2016-06-05 11:18:28.867467','2016-06-05 11:17:41.774255','f');
INSERT INTO "users" VALUES(49,'buthusteta@thraml.com','$2a$11$773m3/BV8OYdC3QHUD15yu08UK5BO55VHk/u6NDyZioIh.Ty9BKWy',NULL,NULL,NULL,1,'2016-06-16 05:35:51.513052','2016-06-16 05:35:51.513052','54.251.49.8','54.251.49.8','2016-06-16 05:35:17.654823','2016-06-16 05:36:47.763281','terajana asa','545645645645','f','2016-06-16 00:00:00.000000','c.jpg','vbNG2_oxXxYXfyqvyVwG','2016-06-16 05:35:37.192912','2016-06-16 05:35:17.655132','f');
INSERT INTO "users" VALUES(50,'frucidrasl@thraml.com','$2a$11$JSHE56TYhBdJBc7e6Wm9KeCXcXaV3azZqTfuKFBVEPYeBN2PFKYNK',NULL,NULL,NULL,1,'2016-06-16 05:48:29.435455','2016-06-16 05:48:29.435455','54.251.49.8','54.251.49.8','2016-06-16 05:47:51.136138','2016-06-16 05:48:29.436719','rete ada','434324324','t',NULL,NULL,'-6dc_rYV7YYH4UXPAPYp','2016-06-16 05:48:19.953236','2016-06-16 05:47:51.136479','f');
INSERT INTO "users" VALUES(51,'yudi@if-kom.com','$2a$11$jI/0r0kUqcLg3KW2obeckOEVdGLH9QQc80v7yMhWuX1n6gB3xJMEy',NULL,NULL,NULL,2,'2016-06-17 01:38:14.327486','2016-06-16 08:44:31.773133','54.251.49.8','54.251.49.8','2016-06-16 08:43:03.922126','2016-06-17 01:38:14.329261','yudi','08780948','f','2016-06-16 00:00:00.000000','Koala.jpg','47yYda3kaRFidfLyYyJb','2016-06-16 08:43:22.393583','2016-06-16 08:43:03.922449','f');
INSERT INTO "users" VALUES(52,'ijahcatering@gmail.com','$2a$11$5j0.xhZ7DQpDwWF3Ej2qCuZiYGYEO9SwwFFyVApVflvly9lcdbXia',NULL,NULL,NULL,1,'2016-06-17 01:37:26.328400','2016-06-17 01:37:26.328400','54.251.49.8','54.251.49.8','2016-06-16 09:40:30.101902','2016-06-28 07:35:50.667804','Ijah CATering','089231230219323','t',NULL,NULL,'EnF-ot_3p82DBhdfHxNs','2016-06-17 01:36:59.007641','2016-06-16 09:40:30.102246','f');
CREATE TABLE "pets" ("id" SERIAL PRIMARY KEY NOT NULL, "name" varchar, "description" text, "image" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "user_id" integer, "pet_id" integer);
INSERT INTO "pets" VALUES(12,'dsda','dhh',NULL,'2016-06-21 05:44:48.067009','2016-06-21 05:44:48.067009',13,NULL);
INSERT INTO "pets" VALUES(13,'fgfg','bbn',NULL,'2016-06-21 05:59:47.297257','2016-06-21 05:59:47.297257',13,NULL);
CREATE TABLE "akuns" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
CREATE TABLE "alamats" ("id" SERIAL PRIMARY KEY NOT NULL, "sebagai" varchar, "nama_penerima" varchar, "alamat" text, "kode_pos" varchar, "provinsi" varchar, "kabupaten" varchar, "kecamatan" varchar, "nomor_telepon" varchar, "user_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "provinsi_sebagai" varchar, "kota_sebagai" varchar, "kecamatan_sebagai" varchar);
INSERT INTO "alamats" VALUES(42,'Kantor Ayah','Irvan','Kebayoran Lama','56144','10','181','2550','088498445',13,'2016-06-22 02:54:48.050588','2016-06-22 02:54:48.050588','Jawa Tengah','Kendal','Singorojo');
INSERT INTO "alamats" VALUES(43,'bali','Kalamai','kkmakdasd
dasdasdasdad
asdasdasdas','654654645','1','94','1282','6765756756',16,'2016-06-22 03:20:24.154736','2016-06-22 16:45:02.209292','Bali','Buleleng','Gerokgak');
INSERT INTO "alamats" VALUES(44,'yogya','asdasda','dasdas','345453','5','501','6985','45435',16,'2016-06-22 16:36:14.217230','2016-06-22 16:36:14.217230','DI Yogyakarta','Yogyakarta','Jetis');
INSERT INTO "alamats" VALUES(45,'ogan ilir','dada','dasda','3423432','33','312','4448','32423423',16,'2016-06-22 16:48:25.412176','2016-06-22 16:48:25.412176','Sumatera Selatan','Ogan Ilir','Rantau Alai');
INSERT INTO "alamats" VALUES(46,'Bengkulu','idas','dasdas','43423','4','63','841','54534',16,'2016-06-23 03:31:17.064870','2016-06-23 03:31:17.064870','Bengkulu','Bengkulu Selatan','Air Nipis');
CREATE TABLE "rekenings" ("id" SERIAL PRIMARY KEY NOT NULL, "pemilik" varchar, "cabang" varchar, "nomor_rekening" varchar, "nama_bank" varchar, "user_id" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "rekenings" VALUES(15,'Jemabatan','Purwakarta','9489324234','Mandiri','13','2016-06-03 04:28:08.011042','2016-06-03 05:52:05.445184');
INSERT INTO "rekenings" VALUES(23,'dffsd','dd','fsdfsdf','BCA','13','2016-06-09 13:22:28.527604','2016-06-09 13:22:28.527604');
INSERT INTO "rekenings" VALUES(24,'dfsdf','sdfsd','fdfsf','BNI','13','2016-06-09 13:22:59.248760','2016-06-09 13:22:59.248760');
INSERT INTO "rekenings" VALUES(25,'fdsf','534534','fsdfsd','BCA','49','2016-06-16 05:41:35.401392','2016-06-16 05:41:35.401392');
INSERT INTO "rekenings" VALUES(26,'Yudhi Ardiansyah','KC menteng','7890wqweewq','BCA','51','2016-06-16 08:49:14.060866','2016-06-16 08:49:14.060866');
INSERT INTO "rekenings" VALUES(27,'Yudhi Ardiansyah','menteng','1223345465657890','Mandiri','51','2016-06-16 08:56:47.820586','2016-06-16 08:56:47.820586');
CREATE TABLE "tokos" ("id" SERIAL PRIMARY KEY NOT NULL, "nama_toko" varchar, "provinsi" varchar, "kota" varchar, "kecamatan" varchar, "agen1" varchar, "agen2" varchar, "agen3" varchar, "agen4" varchar, "agen5" varchar, "agen6" varchar, "agen7" varchar, "slogan" varchar, "deskripsi" text, "alamat" text, "status" varchar, "tutup_sampai" varchar, "toko_image" varchar, "banner1" varchar, "banner2" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "user_id" integer, "banner3" varchar, "kode_pos" varchar, "catatan" varchar, "terima_pembayaran1" varchar, "terima_pembayaran2" varchar, "terima_pembayaran3" varchar);
INSERT INTO "tokos" VALUES(7,'toko amanah','6','152','2096','JNE-REG','NO','JNE-YES','NO','TIKI-ONS','POS-BIASA','POS-EXPRESS','Melayani dengan sepenuh hati','Menjual berbagai produk fashion dan Makanan. Pesan sekarang juga, FAST ORDER !','alamat lengkap','Buka','06/23/2016','cate-product5.png',NULL,NULL,'2016-06-04 10:15:27.056168','2016-06-27 11:54:42.552465',13,NULL,'343432','comming soon','NO','KLIKBCA','NO');
INSERT INTO "tokos" VALUES(9,'Toko Kuda','Jawa Tengah','Semarang','Jawa Tengah','NO','NO','JNE-YES','NO','TIKI-ONS','NO','POS-EXPRESS','slogan','','','Tutup','','IMG_0071.jpg',NULL,NULL,'2016-06-05 02:15:56.082311','2016-06-05 04:18:18.474772',42,NULL,'332423','','NO','KLIKBCA','NO');
INSERT INTO "tokos" VALUES(12,'fsdfsd','Jawa barat','Bandung','Cileunyi','JNE-REG','JNE-OKE','JNE-YES','TIKI-REG','TIKI-ONS','POS-BIASA','POS-EXPRESS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-06-16 05:41:51.399943','2016-06-16 05:41:51.399943',49,NULL,'5435',NULL,NULL,NULL,NULL);
INSERT INTO "tokos" VALUES(13,'Jurang Velg Mobil','Jawa Barat','Bandung','Jawa Tengah','JNE-REG','JNE-OKE','JNE-YES','TIKI-REG','TIKI-ONS','POS-BIASA','POS-EXPRESS','Jual Velg Mobil Original dan Second','Deskripsi Jual Velg Mobil Original dan Second','teste','Buka','','XD_Series_778_MatteBlack_1000-Cloned412017039815.jpg','imaasges.jpg',NULL,'2016-06-16 08:45:12.835563','2016-06-26 04:43:33.906587',51,NULL,'15224','','NO','NO','NO');
CREATE TABLE "categories" ("id" SERIAL PRIMARY KEY NOT NULL, "kategori" varchar, "deskripsi" varchar, "gambar_kategori" varchar, "parent_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "slide1" varchar, "slide2" varchar, "slide3" varchar);
INSERT INTO "categories" VALUES(7,'Fashion','<b>Deskripsi kategori fashion</b><div><ol><li>Deskripsi kategori fashion&nbsp;<br></li><li>Deskripsi kategori fashion&nbsp;<br></li><li>Deskripsi kategori fashion&nbsp;<br></li><li>Deskripsi kategori fashion&nbsp;<br></li><li>Deskripsi kategori fashion&nbsp;<br></li><li>Deskripsi kategori fashion&nbsp;<br></li></ol></div>','',NULL,'2016-06-10 03:34:58.444428','2016-06-27 04:57:18.568251',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(8,'Gadget / Komputer','','',NULL,'2016-06-10 03:35:14.301454','2016-06-10 03:35:14.301454',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(9,'Kecantikan / Kesehatan','','',NULL,'2016-06-10 03:35:28.107583','2016-06-10 03:35:28.107583',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(10,'Bayi/Anak','','',NULL,'2016-06-10 03:35:44.218358','2016-06-10 03:35:44.218358',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(11,'Elektronik','','',NULL,'2016-06-10 03:35:56.860929','2016-06-10 03:35:56.860929',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(12,'Olahraga/Hobi/Otomotif','','',NULL,'2016-06-10 03:36:07.427857','2016-06-10 03:36:07.427857',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(13,'Rumah / Kebun /Dapur','','',NULL,'2016-06-10 03:36:17.834506','2016-06-10 03:36:17.834506',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(14,'E-coupon','','',NULL,'2016-06-10 03:36:29.728789','2016-06-10 03:36:29.728789',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(15,'Bahan Segar','','',NULL,'2016-06-10 03:36:40.919336','2016-06-10 03:36:40.919336',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(16,'Makanan','','',NULL,'2016-06-10 03:36:55.314838','2016-06-10 03:36:55.314838',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(17,'Minuman','Deskripsi Minuman','',NULL,'2016-06-10 03:37:08.692231','2016-06-26 11:20:51.297310',NULL,NULL,NULL);
INSERT INTO "categories" VALUES(18,'Perawatan Pribadi','Deskripsi','',NULL,'2016-06-10 03:37:21.842750','2016-06-26 06:26:31.674415',NULL,NULL,NULL);
CREATE TABLE "subcategories" ("id" SERIAL PRIMARY KEY NOT NULL, "subkategori" varchar, "deskripsi" text, "subcategori_image" varchar, "category_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "gambar_kategori2" varchar, "gambar_kategori3" varchar);
INSERT INTO "subcategories" VALUES(17,'Pakaian wanita','Deskripsi pakaian <b>wanita</b>','',7,'2016-06-10 03:38:35.385730','2016-06-27 04:00:41.909205',NULL,NULL);
INSERT INTO "subcategories" VALUES(18,'Pakaian Pria','','',7,'2016-06-10 03:38:52.407530','2016-06-10 03:39:04.635619',NULL,NULL);
INSERT INTO "subcategories" VALUES(19,'Tas & Aksesoris','','',7,'2016-06-10 03:39:23.432711','2016-06-10 03:39:23.432711',NULL,NULL);
INSERT INTO "subcategories" VALUES(20,'Sepatu','','',7,'2016-06-10 03:39:36.815032','2016-06-10 03:39:36.815032',NULL,NULL);
INSERT INTO "subcategories" VALUES(21,'Perhiasan & Jam','','',7,'2016-06-10 03:39:50.287052','2016-06-10 03:39:50.287052',NULL,NULL);
INSERT INTO "subcategories" VALUES(22,'Mobile phone','','',8,'2016-06-10 03:40:10.050390','2016-06-10 03:40:10.050390',NULL,NULL);
INSERT INTO "subcategories" VALUES(23,'Kamera & Video Kamera','','',8,'2016-06-10 03:40:24.032228','2016-06-10 03:40:24.032228',NULL,NULL);
INSERT INTO "subcategories" VALUES(24,'Tablet, notebook & Desktop','','',8,'2016-06-10 03:40:35.223901','2016-06-10 03:40:41.149947',NULL,NULL);
INSERT INTO "subcategories" VALUES(25,'Peralatan & Perlengkapan kantor','gadget dan komputer','',8,'2016-06-10 03:41:00.338802','2016-06-26 06:56:36.033778',NULL,NULL);
INSERT INTO "subcategories" VALUES(26,'Kosmetik','','',9,'2016-06-10 03:41:17.320893','2016-06-10 03:41:17.320893',NULL,NULL);
INSERT INTO "subcategories" VALUES(27,'Rambut','','',9,'2016-06-10 03:41:31.137226','2016-06-10 03:41:31.137226',NULL,NULL);
INSERT INTO "subcategories" VALUES(28,'Perawatan Gigi dan Mulut','','',9,'2016-06-10 03:41:50.071284','2016-06-10 03:41:50.071284',NULL,NULL);
INSERT INTO "subcategories" VALUES(29,'Perawatan Wajah','','',9,'2016-06-10 03:42:05.831306','2016-06-10 03:42:05.831306',NULL,NULL);
INSERT INTO "subcategories" VALUES(30,'Tisu dan Kapas','','',9,'2016-06-10 03:42:22.740906','2016-06-10 03:42:22.740906',NULL,NULL);
INSERT INTO "subcategories" VALUES(31,'Kebutuhan Wanita','','',9,'2016-06-10 03:42:35.991345','2016-06-10 03:42:35.991345',NULL,NULL);
INSERT INTO "subcategories" VALUES(32,'Aromaterapi','','',9,'2016-06-10 03:42:48.036743','2016-06-10 03:42:48.036743',NULL,NULL);
INSERT INTO "subcategories" VALUES(33,'Suplemen','','',9,'2016-06-10 03:43:00.448436','2016-06-10 03:43:00.448436',NULL,NULL);
INSERT INTO "subcategories" VALUES(34,'Obat Luar','','',9,'2016-06-10 03:43:12.667376','2016-06-10 03:43:18.153142',NULL,NULL);
INSERT INTO "subcategories" VALUES(35,'Kontrasepsi','','',9,'2016-06-10 03:43:31.191297','2016-06-10 03:43:31.191297',NULL,NULL);
INSERT INTO "subcategories" VALUES(36,'Obat-Obatan','','',9,'2016-06-10 03:43:42.699279','2016-06-10 03:43:42.699279',NULL,NULL);
INSERT INTO "subcategories" VALUES(37,'Pakaian Bayi dan Anak','','',10,'2016-06-10 03:44:02.787020','2016-06-10 03:44:02.787020',NULL,NULL);
INSERT INTO "subcategories" VALUES(38,'Makanan','','',10,'2016-06-10 03:44:19.455759','2016-06-10 03:44:19.455759',NULL,NULL);
INSERT INTO "subcategories" VALUES(39,'Perpopokan','','',10,'2016-06-10 03:44:34.630508','2016-06-10 03:44:34.630508',NULL,NULL);
INSERT INTO "subcategories" VALUES(40,'Perawatan Tubuh','','',10,'2016-06-10 03:44:53.646698','2016-06-10 03:44:53.646698',NULL,NULL);
INSERT INTO "subcategories" VALUES(41,'Alat Makan','','',10,'2016-06-10 03:45:08.922809','2016-06-10 03:45:08.922809',NULL,NULL);
INSERT INTO "subcategories" VALUES(42,'Kebutuhan Ibu','','',10,'2016-06-10 03:45:26.149714','2016-06-10 03:45:26.149714',NULL,NULL);
INSERT INTO "subcategories" VALUES(43,'Hadiah','','',10,'2016-06-10 03:45:38.946281','2016-06-10 03:45:38.946281',NULL,NULL);
INSERT INTO "subcategories" VALUES(44,'Perlengkapan Bayi','','',10,'2016-06-10 03:45:54.178484','2016-06-10 03:45:54.178484',NULL,NULL);
INSERT INTO "subcategories" VALUES(45,'Aksesoris','','',10,'2016-06-10 03:46:12.385581','2016-06-10 03:46:12.385581',NULL,NULL);
INSERT INTO "subcategories" VALUES(46,'AksesorisMainan, Pendidikan Anak','','',10,'2016-06-10 03:46:35.784167','2016-06-10 03:46:35.784167',NULL,NULL);
INSERT INTO "subcategories" VALUES(47,'Peralatan Rumah','','',11,'2016-06-10 03:47:01.391564','2016-06-10 03:47:01.391564',NULL,NULL);
INSERT INTO "subcategories" VALUES(48,'Media Player','','',11,'2016-06-10 03:47:14.899173','2016-06-10 03:47:14.899173',NULL,NULL);
INSERT INTO "subcategories" VALUES(49,'Buku & Majalah','','',12,'2016-06-10 03:48:57.069197','2016-06-10 03:48:57.069197',NULL,NULL);
INSERT INTO "subcategories" VALUES(50,'Otomotif','','',12,'2016-06-10 03:49:15.043984','2016-06-10 03:49:15.043984',NULL,NULL);
INSERT INTO "subcategories" VALUES(51,'Peliharaan','','',12,'2016-06-10 03:49:28.753166','2016-06-10 03:49:28.753166',NULL,NULL);
INSERT INTO "subcategories" VALUES(52,'Dekorasi Rumah','','',13,'2016-06-10 03:49:45.348270','2016-06-10 03:49:45.348270',NULL,NULL);
INSERT INTO "subcategories" VALUES(53,'Furnitur & Perkakas','','',13,'2016-06-10 03:50:03.091526','2016-06-10 03:50:03.091526',NULL,NULL);
INSERT INTO "subcategories" VALUES(54,'Perlengkapan Rumah Tangga','','',13,'2016-06-10 03:50:17.620669','2016-06-10 03:50:17.620669',NULL,NULL);
INSERT INTO "subcategories" VALUES(55,'Peralatan Rumah Tangga','','',13,'2016-06-10 03:50:32.655797','2016-06-10 03:50:32.655797',NULL,NULL);
INSERT INTO "subcategories" VALUES(56,'Alat Penyimpanan','','',13,'2016-06-10 03:50:45.584401','2016-06-10 03:50:45.584401',NULL,NULL);
INSERT INTO "subcategories" VALUES(57,'Dapur dan Meja Makan','','',13,'2016-06-10 03:50:59.690227','2016-06-10 03:50:59.690227',NULL,NULL);
INSERT INTO "subcategories" VALUES(58,'Kebutuhan Rumah Tangga','','',13,'2016-06-10 03:51:12.383556','2016-06-10 03:51:12.383556',NULL,NULL);
INSERT INTO "subcategories" VALUES(59,'Restoran','','',14,'2016-06-10 03:51:30.688589','2016-06-10 03:51:30.688589',NULL,NULL);
INSERT INTO "subcategories" VALUES(60,'Makanan Penutup dan Snack','','',14,'2016-06-10 03:51:45.572972','2016-06-10 03:51:45.572972',NULL,NULL);
INSERT INTO "subcategories" VALUES(61,'Spa dan Pijat','ecoupon','',14,'2016-06-10 03:52:00.768382','2016-06-26 06:43:42.548406',NULL,NULL);
INSERT INTO "subcategories" VALUES(62,'Perawatan Kecantikan','','',14,'2016-06-10 03:52:22.669531','2016-06-10 03:52:22.669531',NULL,NULL);
INSERT INTO "subcategories" VALUES(63,'Olahraga dan Fitnes','','',14,'2016-06-10 03:52:38.209392','2016-06-10 03:52:38.209392',NULL,NULL);
INSERT INTO "subcategories" VALUES(64,'Fotograpi dan Pernikahan','','',14,'2016-06-10 03:53:10.493091','2016-06-10 03:53:10.493091',NULL,NULL);
INSERT INTO "subcategories" VALUES(65,'Taman Bermain dan Acara','','',14,'2016-06-10 03:53:27.449137','2016-06-10 03:53:27.449137',NULL,NULL);
INSERT INTO "subcategories" VALUES(66,'Pendidikan dan Seminar','','',14,'2016-06-10 03:53:41.383037','2016-06-10 03:53:41.383037',NULL,NULL);
INSERT INTO "subcategories" VALUES(67,'Kesehatan','','',14,'2016-06-10 03:53:59.172868','2016-06-10 03:53:59.172868',NULL,NULL);
INSERT INTO "subcategories" VALUES(68,'Perjalanan dan Akomodasi','','',14,'2016-06-10 03:54:12.143804','2016-06-10 03:54:12.143804',NULL,NULL);
INSERT INTO "subcategories" VALUES(69,'Lainnya','','',14,'2016-06-10 03:54:33.322973','2016-06-10 03:54:33.322973',NULL,NULL);
INSERT INTO "subcategories" VALUES(70,'Sayur Mayur','','',15,'2016-06-10 03:54:54.183780','2016-06-10 03:54:54.183780',NULL,NULL);
INSERT INTO "subcategories" VALUES(71,'Lauk Pauk','','',15,'2016-06-10 03:55:10.173846','2016-06-10 03:55:10.173846',NULL,NULL);
INSERT INTO "subcategories" VALUES(72,'Buah-Buahan','','',15,'2016-06-10 03:55:26.530357','2016-06-10 03:55:26.530357',NULL,NULL);
INSERT INTO "subcategories" VALUES(73,'Bumbu Dapur','','',15,'2016-06-10 03:55:42.915983','2016-06-10 03:55:42.915983',NULL,NULL);
INSERT INTO "subcategories" VALUES(74,'Bahan Masakan & Kue','','',16,'2016-06-10 03:55:59.122794','2016-06-10 03:57:13.620055',NULL,NULL);
INSERT INTO "subcategories" VALUES(75,'Makanan Kaleng','','',16,'2016-06-10 03:56:23.452681','2016-06-10 03:57:00.263485',NULL,NULL);
INSERT INTO "subcategories" VALUES(76,'Mie','','',16,'2016-06-10 03:56:45.605219','2016-06-10 03:56:45.605219',NULL,NULL);
INSERT INTO "subcategories" VALUES(77,'Sarapan','','',16,'2016-06-10 03:57:29.521141','2016-06-10 03:57:29.521141',NULL,NULL);
INSERT INTO "subcategories" VALUES(78,'Kudapan & Cemilan','','',16,'2016-06-10 03:57:45.168425','2016-06-10 03:57:45.168425',NULL,NULL);
INSERT INTO "subcategories" VALUES(79,'Permen','','',16,'2016-06-10 03:58:00.853967','2016-06-10 03:58:00.853967',NULL,NULL);
INSERT INTO "subcategories" VALUES(80,'Jajanan Pasar','','',16,'2016-06-10 03:58:15.054674','2016-06-10 03:58:15.054674',NULL,NULL);
INSERT INTO "subcategories" VALUES(81,'Susu','','',17,'2016-06-10 03:58:30.168313','2016-06-10 03:58:30.168313',NULL,NULL);
INSERT INTO "subcategories" VALUES(82,'Teh & Kopi','','',17,'2016-06-10 03:58:46.284481','2016-06-10 03:58:46.284481',NULL,NULL);
INSERT INTO "subcategories" VALUES(83,'Jus','','',17,'2016-06-10 03:59:00.810422','2016-06-10 03:59:00.810422',NULL,NULL);
INSERT INTO "subcategories" VALUES(84,'Minuman Ringan','','',17,'2016-06-10 03:59:16.647603','2016-06-10 03:59:16.647603',NULL,NULL);
CREATE TABLE "produks" ("id" SERIAL PRIMARY KEY NOT NULL, "nama_produk" varchar, "harga" decimal, "harga_diskon" decimal, "berat" decimal, "foto_produk1" varchar, "foto_produk2" varchar, "foto_produk3" varchar, "foto_produk4" varchar, "foto_produk5" varchar, "foto_produk6" varchar, "deskripsi" text, "harga_grosir1" decimal, "harga_grosir2" decimal, "harga_grosir3" decimal, "harga_grosir4" decimal, "harga_grosir5" decimal, "user_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "category_id" varchar, "subcategory_id" varchar, "jumlah_grosir1min" integer, "jumlah_grosir1max" integer, "jumlah_grosir2min" integer, "jumlah_grosir2max" integer, "jumlah_grosir3min" integer, "jumlah_grosir3max" integer, "jumlah_grosir4min" integer, "jumlah_grosir4max" integer, "jumlah_grosir5min" integer, "jumlah_grosir5max" integer, "jumlah_grosir6min" integer, "jumlah_grosir6max" integer, "toko_id" integer, "deskripsi_lengkap" text, "harga_beli" integer, "diskon" integer);
INSERT INTO "produks" VALUES(38,'Kurma Makkah',120000,12000,500,'01_blue-dress.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:28:21.063899','2016-06-19 12:13:50.289738','7','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.
bunga',12000,90);
INSERT INTO "produks" VALUES(39,'Kurma Madinah',130000,110000,500,'02_yellow-dress.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:28:21.088588','2016-06-17 02:30:00.261865','7','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',110000,15);
INSERT INTO "produks" VALUES(40,'Kurma Pohon',140000,102000,500,'03_cyan-dress.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:28:21.100434','2016-06-17 02:30:14.368658','7','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',102000,27);
INSERT INTO "produks" VALUES(41,'Kurma Batu',190000,170000,500,'04_nice-dress.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:28:21.111335','2016-06-17 02:30:40.962194','7','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',170000,10);
INSERT INTO "produks" VALUES(42,'Kurma Manis',180000,0,500,'05_flowers-dress.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:28:21.121382','2016-06-17 16:06:04.014631','7','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',180000,100);
INSERT INTO "produks" VALUES(44,'Kurma Merah',120000,100000,500,'bs2.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:32:42.529480','2016-06-17 02:33:09.924184','7','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',100000,16);
INSERT INTO "produks" VALUES(45,'Kurma Hijau',130000,110000,500,'p10.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:32:42.544243','2016-06-26 06:55:29.193332',NULL,NULL,1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi..',110000,15);
INSERT INTO "produks" VALUES(47,'Kurma Pasir',190000,170000,500,'p28.jpg',NULL,NULL,NULL,NULL,NULL,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:32:42.566611','2016-06-17 02:34:17.729639','7','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Kurma Lulu adalah jenis kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip kurma ajwa ini sering membuat orang keliru sehingga menganggap kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',170000,10);
INSERT INTO "produks" VALUES(48,'Voucher Kurma Makkah',120000,100000,500,'p11.jpg',NULL,NULL,NULL,NULL,NULL,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:39:07.834041','2016-06-17 02:39:51.076382','14','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis Voucher Kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip Voucher Kurma ajwa ini sering membuat orang keliru sehingga menganggap Voucher Kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',100000,16);
INSERT INTO "produks" VALUES(49,'Voucher Kurma Madinah uenak',130000,110000,500,'p12.jpg',NULL,NULL,NULL,NULL,NULL,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:39:07.847372','2016-06-25 04:15:52.855043',NULL,NULL,1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab.Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.Rasanya manis, legit dan lembut.Jenis Voucher Kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.Bentuk & warnanya yang mirip Voucher Kurma ajwa ini sering membuat orang keliru sehingga menganggap Voucher Kurma ini jenis ajwa.Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',110000,15);
INSERT INTO "produks" VALUES(50,'Voucher Kurma Pohon',140000,102000,500,'p13.jpg',NULL,NULL,NULL,NULL,NULL,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:39:07.857568','2016-06-17 02:40:20.519359','14','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis Voucher Kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip Voucher Kurma ajwa ini sering membuat orang keliru sehingga menganggap Voucher Kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',102000,27);
INSERT INTO "produks" VALUES(51,'Voucher Kurma Batu',190000,170000,500,'p14.jpg',NULL,NULL,NULL,NULL,NULL,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:39:07.866854','2016-06-17 02:40:38.225577','14','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis Voucher Kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip Voucher Kurma ajwa ini sering membuat orang keliru sehingga menganggap Voucher Kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',170000,10);
INSERT INTO "produks" VALUES(52,'Voucher Kurma Manis',180000,160000,500,'p15.jpg',NULL,NULL,NULL,NULL,NULL,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab',90000,80000,NULL,NULL,NULL,13,'2016-06-17 02:39:07.876649','2016-06-17 02:40:51.943796','14','17',1,10,11,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'Voucher Kurma Lulu adalah jenis Voucher Kurma dari Uni Emrat Arab.
Bentuknya bulat berkeriput, dengan warna coklat tua kemerah-merahan.
Rasanya manis, legit dan lembut.
Jenis Voucher Kurma Lulu ini sudah familier bagi masyarakat Indonesia karena sering dijadikan oleh-oleh haji dan umroh.
Bentuk & warnanya yang mirip Voucher Kurma ajwa ini sering membuat orang keliru sehingga menganggap Voucher Kurma ini jenis ajwa.
Dengan kemasan family pack 250 gram, cocok juga buat oleh-oleh ketika berkunjung ke sanak family, sahabat dan relasi.',160000,11);
INSERT INTO "produks" VALUES(59,'Baju Merah',100000,88880,10000,'06_red-dress.jpg',NULL,NULL,NULL,NULL,NULL,'baju merah',NULL,NULL,NULL,NULL,NULL,13,'2016-06-18 03:08:21.274201','2016-06-18 09:51:20.029221','7','17',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,'baju merah bagus',88880,11);
CREATE TABLE "favorite_produks" ("id" SERIAL PRIMARY KEY NOT NULL, "user_id" integer, "produk_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "favorite_produks" VALUES(15,51,54,'2016-06-17 06:10:30.041337','2016-06-17 06:10:30.041337');
INSERT INTO "favorite_produks" VALUES(16,51,56,'2016-06-17 06:12:14.317923','2016-06-17 06:12:14.317923');
INSERT INTO "favorite_produks" VALUES(17,16,58,'2016-06-17 15:02:49.808218','2016-06-17 15:02:49.808218');
INSERT INTO "favorite_produks" VALUES(18,16,55,'2016-06-18 03:46:19.929364','2016-06-18 03:46:19.929364');
INSERT INTO "favorite_produks" VALUES(20,16,38,'2016-06-23 06:20:04.664084','2016-06-23 06:20:04.664084');
CREATE TABLE "carts" ("id" SERIAL PRIMARY KEY NOT NULL, "toko_id" integer, "user_id" integer, "produk_id" integer, "invoice" varchar, "catatan" text, "jumlah" integer, "subtotal" integer, "total" integer, "metode_pembayaran" varchar, "alamat_id" integer, "kurir" varchar, "berat" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "ongkir" integer, "seller_id" integer, "state" integer, "resi" varchar);
INSERT INTO "carts" VALUES(57,7,16,40,'INV/20160623/7/40/16','',6,660000,NULL,NULL,44,'jne-OKE',NULL,'2016-06-23 09:23:59.900673','2016-06-23 11:59:21.943545',48000,13,6,'SUB6474883736');
CREATE TABLE "statuses" ("id" SERIAL PRIMARY KEY NOT NULL, "seller_id" integer, "buyer_id" integer, "stat" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "produk_id" integer, "cart_id" integer);
CREATE TABLE "feedbacks" ("id" SERIAL PRIMARY KEY NOT NULL, "user_id" integer, "toko_id" integer, "produk_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "cart_id" integer, "rating" integer, "feed" text);
INSERT INTO "feedbacks" VALUES(4,16,7,40,'2016-06-23 11:59:24.744961','2016-06-23 11:59:24.744961',NULL,3,'barang bagus, packing rapi');
CREATE TABLE "statics" ("id" SERIAL PRIMARY KEY NOT NULL, "title" varchar, "body" text, "image" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "statics" VALUES(5,'Term & Service','<p>
</p><div><p>Duis
 consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus 
dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse 
tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate.
 Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec 
sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec 
nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit 
eros. 
					</p>
					<p>
						 Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur
 elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis
 aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et 
ultrices ante. Phasellus vitae est nec lacus molestie euismod non id 
nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. 
Quisque ac justo vitae nisl sollicitudin efficitur. 
					</p>
					<p>
						Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis 
cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, 
laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis 
ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, 
nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis 
nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus 
libero non aliquet aliquam. Class aptent taciti sociosqu ad litora 
torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor 
velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. 
Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel 
mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus 
commodo ex tincidunt vel. Sed nec sollicitudin dui. 
					</p>
					<p>
						</p><ul>
							<li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li>
							<li>Ut in enim lobortis, placerat odio in, vulputate urna.</li>
							<li>Sed malesuada ligula eu orci malesuada malesuada.</li>
							<li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li>
							<li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul></div>

<br><p></p>',NULL,'2016-06-27 03:12:54.149945','2016-06-27 03:25:31.116412');
INSERT INTO "statics" VALUES(6,'Tentang kami','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:37:31.220590','2016-06-28 03:37:31.220590');
INSERT INTO "statics" VALUES(7,'Karir','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:37:47.532751','2016-06-28 03:37:47.532751');
INSERT INTO "statics" VALUES(8,'Info Terkini','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:38:02.584476','2016-06-28 03:38:02.584476');
INSERT INTO "statics" VALUES(9,'Cara Berjualan','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:38:32.109351','2016-06-28 03:38:32.109351');
INSERT INTO "statics" VALUES(10,'Ketentuan Seller','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:38:45.915867','2016-06-28 03:38:45.915867');
INSERT INTO "statics" VALUES(11,'FAQ','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:38:55.231416','2016-06-28 03:38:55.231416');
INSERT INTO "statics" VALUES(12,'Cara Pembelian','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:39:09.021097','2016-06-28 03:39:09.021097');
INSERT INTO "statics" VALUES(13,'Ketentuan Member','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:39:25.489318','2016-06-28 03:39:25.489318');
INSERT INTO "statics" VALUES(14,'Metode Pembayaran','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:39:48.505896','2016-06-28 03:39:48.505896');
INSERT INTO "statics" VALUES(15,'Kontak','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:40:34.003937','2016-06-28 03:40:34.003937');
INSERT INTO "statics" VALUES(16,'Kebijakan Privasi','<p>

</p><p>Duis consequat sapien ex, quis vulputate tellus sagittis ac. Mauris luctus dignissim vulputate. Maecenas dictum eu neque eu ornare. Suspendisse tempus bibendum laoreet. Nunc venenatis dui non elit suscipit vulputate. Ut eu nulla maximus, tincidunt nunc in, congue tellus. Donec sollicitudin finibus ante, quis vehicula lacus aliquet et. Nulla nec nulla nunc. Nullam accumsan id neque et congue. Mauris eu hendrerit eros.</p><p>Mauris sit amet leo malesuada, bibendum erat malesuada, efficitur elit. Vivamus sit amet malesuada urna. Mauris orci justo, eleifend quis aliquam gravida, viverra eu est. Donec imperdiet maximus metus, et ultrices ante. Phasellus vitae est nec lacus molestie euismod non id nisl. In sit amet neque vitae tortor varius imperdiet ut quis massa. Quisque ac justo vitae nisl sollicitudin efficitur.</p><p>Nunc lobortis, tortor vulputate dignissim pulvinar, neque felis cursus nunc, vitae sagittis libero ante et augue. Etiam quam metus, laoreet at porta non, pulvinar in dolor. Etiam facilisis nunc quis ligula hendrerit, at faucibus ligula accumsan. Proin ac gravida libero, nec convallis urna. Duis bibendum, tortor eget finibus malesuada, felis nulla lobortis leo, eu facilisis libero massa eu enim. Aenean maximus libero non aliquet aliquam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis quis tortor velit. Fusce vestibulum iaculis metus, non bibendum erat pulvinar nec. Morbi eleifend felis turpis, a porta orci suscipit laoreet. Nulla vel mauris tellus. Donec quis dui elit. Ut mattis elementum metus, rhoncus commodo ex tincidunt vel. Sed nec sollicitudin dui.</p><p></p><ul><li>Integer sed ipsum faucibus, consectetur tortor a, malesuada lorem.</li><li>Ut in enim lobortis, placerat odio in, vulputate urna.</li><li>Sed malesuada ligula eu orci malesuada malesuada.</li><li>Mauris congue lectus vitae nunc maximus, vel tincidunt leo imperdiet.</li><li>Fusce non sem non ligula venenatis interdum egestas a dui.</li><li>selamat</li></ul>

<br><p></p>',NULL,'2016-06-28 03:40:57.229741','2016-06-28 03:40:57.229741');
CREATE TABLE "homeitems" ("id" SERIAL PRIMARY KEY NOT NULL, "title" varchar, "description" text, "img1" varchar, "img2" varchar, "img3" varchar, "img4" varchar, "img5" varchar, "img6" varchar, "img7" varchar, "img8" varchar, "img9" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "homeitems" VALUES(1,'Payment Footer','<p>payment</p>','pembayaran1.png','pembayaran2.png','pembayaran3.png','pembayaran4.png','pembayaran5.png','pembayaran6.png',NULL,NULL,NULL,'2016-06-28 03:58:02.944251','2016-06-28 04:16:14.552696');
INSERT INTO "homeitems" VALUES(2,'Footer Info','<div class="row">
						<div class="col-md-3 col-sm-3 fiturfooter">
							<h4>Love it mart</h4>
							<ul>
								<li><a href="/tentang">Tentang Kami</a></li>
								<li><a href="/karir">Career</a></li>
								<li><a href="#">Info Terkini</a></li>
								<li><a href="#">Syarat & Ketentuan</a></li>
								<li><a href="#">Kebijakan Privasi</a></li>
								<li><a href="#">Sitemap</a></li>
								<li><a href="#">Hubungi Kami</a></li>
								<li><a href="#">FAQ</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-3 fiturfooter">
							<h4>Jual</h4>
							<ul>
								<li><a href="#">Pendaftaran Seller</a></li>
								<li><a href="#">Cara Berjualan</a></li>
								<li><a href="#">Ketentuan Seller</a></li>
								<li><a href="#">FAQ</a></li>
							</ul>
						</div>
						<div class="col-md-3  col-sm-3 fiturfooter">
							<h4>Beli</h4>
							<ul>
								<li><a href="#">Cara Pembelian</a></li>
								<li><a href="#">Ketentuan Member</a></li>
								<li><a href="#">Member Akun</a></li>
								<li><a href="#">Metode Pembayaran</a></li>
								<li><a href="#">e-voucher</a></li>
								<li><a href="#">FAQ</a></li>
							</ul>
						</div>
						<div class="col-md-3 col-sm-3 fiturfooter">
							<h4>Newsletter</h4>
							<div class="newsletter">
								<input type="text" name="" class="formnewsletter" placeholder="Masukan Email.."/>
								<input type="submit" name="" class="kirimnewsletter" value="Kirim">
							</div>
							<p class="des-newsletter">
								Dengan berlangganan newsletter, Anda akan mendapat update info  & promo menarik dari kami
							</p>
							<div class="f-sosmed">
								<a href="#" data-toggle="tooltip" title="facebook"><span class="listfsosmed fb"><i class="fa fa-facebook"></i></span></a>
								<a href="#" data-toggle="tooltip" title="twitter"><span class="listfsosmed tw"><i class="fa fa-twitter"></i></span></a>
								<a href="#" data-toggle="tooltip" title="google plus"><span class="listfsosmed gplus"><i class="fa fa-google-plus"></i></span></a>
								<a href="#" data-toggle="tooltip" title="instagram"><span class="listfsosmed instagram"><i class="fa fa-instagram"></i></span></a>
							</div>
						</div>
					</div>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-06-28 04:29:00.912907','2016-06-28 04:42:57.495904');

CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "index_users_on_confirmation_token" ON "users" ("confirmation_token");
COMMIT;
