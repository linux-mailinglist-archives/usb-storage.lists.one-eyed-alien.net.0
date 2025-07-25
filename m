Return-Path: <usb-storage+bncBCW3F5WP2UHBB25CR7CAMGQE7Z3ZYOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA9FB12442
	for <lists+usb-storage@lfdr.de>; Fri, 25 Jul 2025 20:48:13 +0200 (CEST)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-41b916dca69sf1400734b6e.3
        for <lists+usb-storage@lfdr.de>; Fri, 25 Jul 2025 11:48:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1753469292; cv=pass;
        d=google.com; s=arc-20240605;
        b=gWiL2885sisNvrXEG0MEXkR/wqaUxf3upF+YCnKa7hSICVHGwC7tZgFZTRDeP+MlLK
         VoL5sQ30BNj8kEUDfZli31brZV2Q0yzhKV+lUrN9EEuLka0f9Gmflk1maWGS3Xd5ucDb
         t7LF+feA4EXAZsKTNDLwHqh74CX0yF+IsqOe9neyCEc1g/gJ9NigkPZ2PHXHnPCMhDEz
         TPuF5r6LUi9f9nxpEBBTdFzxxAbC3OgutLSEbq8gpXCpxTkwFTRfThZe81Bd1lyG4Lpn
         lM6lNKPGbJcch6tc6i/U2IvHKiL8pgErUt2c8y74eyJ8OZGqJHrerhFBBiQYbXcyZRW6
         J/nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Z21IPM1dDJ8IthuIK4Rsi7YWcQukaYkDa/oSZ9GWtE0=;
        fh=Gd1U30b7dhUFqpkYI2j2FmyhlYSyPpFyd+PrizB6ykE=;
        b=Fq3PZdDNPxHg3TO/hE6Vk48270Hv4Y4VdUrASipsgyEP6P7W9KwjkzZv2qdl5awLvu
         bSbkbm5vwB5z8aB+SmQuMnzdPX2ayK2GkwkJfvnrhqcHNduxt46+4sjRgFq42Bkme2DD
         9rd1cTQ6Btg3TmfKEa3uJnJlT51EyA1/bWtPKw4xPcv4tI6mVi8DFyQDynPPdT1zUpsN
         D1rqWiCYxDYEiQiQgRGHDFxU33YDBl5O/tpvK/TIr4tQ4I4Uz2PIy+2aRvHEfkoMPAWt
         CMD5Ve4uAG+CTdsJ/g7fhr9BzyWHhr6HNJhZlSCEKCo4uW+VUkzFdr6+pCJDFR0deX0I
         PoXA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=H4W5+t5N;
       spf=pass (google.com: domain of rathod.darshan.0896@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rathod.darshan.0896@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1753469292; x=1754074092; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Z21IPM1dDJ8IthuIK4Rsi7YWcQukaYkDa/oSZ9GWtE0=;
        b=bQ7tY4hQvj9BNEpRj2a1WAjttG7zy9UhzCnUAPFzbI9Qes2FJ8wU5qkfaI71/zMZJM
         C1T5n1M+yDWzX6sUknMoOruhDsnY3hAuFqieEwZ9yu/o9yy5ikTHj1vIqOSpmygx6IHO
         v6/3EyE03iGSccdUy+E6lJBMzo+WTtPoKR5Fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753469292; x=1754074092;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z21IPM1dDJ8IthuIK4Rsi7YWcQukaYkDa/oSZ9GWtE0=;
        b=N4Kh5+moU2LOagNbWVBivmy6A5iUe+IrebmH7h3+9FpVke+CYmOGka4Y0+3PdbyUHh
         tsyWsu2qB8+kzntbIeEM+jIgPJF+t25YTw78wI7Qr+OqSwEEHQiTttlP8kA9XUCbFxBw
         t0d8vQy+iN7omr3nRV/YrvTadd4g5uFRbhhw+EmN0SDBcIhOhF37VR3KTHaPdKXnqOLI
         vnEX4YaOCTVUSK7NLQZXGN2wSNfUrmZ9bmOu69wmXPpwHdIoquviN/L6UeS3fAybM3q0
         WCoipueNFmkk+8OzGy5D5QaCrLLf7qixYfh9o1PMVXsMABZOv1i3ymkwNBrhtZEXjc+A
         zlow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCURTVI5TvwELfp5OFGpezahEGK3oonWbwld4bdpCNPzCk36MH90Vpk/oqxUzPsJ1qS5QNCREg==@lfdr.de
X-Gm-Message-State: AOJu0YxFRL+Qb9oMIz3lzdT12ilvA61FAIkkHUTMJcocs43jzxQ9iREW
	wQiybW+TSxKOMqEPlx9vGafMe7RpOJ4pO2FLKvp8O0EgLmvuv7kILlQ4M/tEBbaSEXs=
X-Google-Smtp-Source: AGHT+IFGsx/1qkuuXQTxsX/kH2CWqCgIfav+beETItl4hka84mGcaQUTrfbMiCIu10FFf44QF7d59w==
X-Received: by 2002:a05:6808:10d6:b0:40b:4208:7b45 with SMTP id 5614622812f47-42bb9d07c49mr1817492b6e.26.1753469291891;
        Fri, 25 Jul 2025 11:48:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdBLiTqpF1gNoSqxsST1WEvgDSey5JF7w26Bj9VSJ61qQ==
Received: by 2002:a05:6820:4690:b0:611:cba5:4626 with SMTP id
 006d021491bc7-618fa27430els594643eaf.2.-pod-prod-02-us; Fri, 25 Jul 2025
 11:48:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW7R7SCIJlZ3pAwlYtb5+8LcCg1WGSV/NE0LfwreR0zb8G5pdmBBekqqOyHULtHC6ZlUTb7NedbMDQJ0A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:150e:b0:40d:547d:397 with SMTP id 5614622812f47-42bb972b822mr1744462b6e.23.1753469291364;
        Fri, 25 Jul 2025 11:48:11 -0700 (PDT)
Received: by 2002:a05:6808:1b0e:b0:40d:498:c1f6 with SMTP id 5614622812f47-4263504e6a3msb6e;
        Fri, 25 Jul 2025 06:55:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVQessa7KckMbM1YE7sgI73UZii7AbybgOkWhsI62WKDcmehQjgXt2ZwlVs8T3ODzzfXZDHls+Emvjaeg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:5623:b0:313:f6fa:5bca with SMTP id 98e67ed59e1d1-31e779f9e9dmr2621511a91.22.1753451710953;
        Fri, 25 Jul 2025 06:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1753451710; cv=none;
        d=google.com; s=arc-20240605;
        b=jF0jrcTpbxBbj5B/osUbIGS8Rf1jGG+BLrGKvYaDZhfUSyAVphz802mYAbHDcNf7mJ
         SoPbhAxFALVUIZaNQmJ10M/XrHrt7UvN0iwtyLRhkh0+5ItFsHabuPJQVO8HiG//ZbMK
         AW8COayHBpSdwPNJlII1fFATc/O6mKLxNRie0ikvooUNjiHCXO9NKeBAZHryjTJjymjJ
         Xto2OPFpAaHymJmUm2aAuJm+LbWPem9TrggI0q79TfT4tOXvnSu8PPWKZqsUbwVXQ9O5
         OteGr29qu4T+wYagl+r51NtmhykLwWn8HkWOspN2B8aM31BZPzFFMomj2CGhbLy6DbW2
         JEgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WNTDfjxhZB9Hjmc5HFtSd7mAOD+kVA3++KbmQ5chN8w=;
        fh=RWoOYQZtuzVyeNzij1Cce3UheGPGJ348hTgA9W7lfVs=;
        b=Y5G4PWorLDvz5kFBYNbgrtRXEwNiv30D2WcztxQoC4LBW3npw43bn5sgJOk0hXTTFD
         MnHadJC7npgPMDV7zTFHCaLpznDyRyCjK+/SLQ92oJMfQKULmKO7sXCmOLUUUbKU3EWt
         wqDc/qhpNEIDdw3WRVoh9Vb5Sjx2wj+bcnTgV/CFVCImVeiu/v6yz9ZA1P+86kjMt3BP
         uUE53oN/e76CNuPL7hhEaVNE/x8sq94Tl2puxWabRV+69hjgNIGXF7z8NKd/KBZncJni
         pvqlQoDphSM5HkNm6QcaxPMPYVtreoF08BkFbAHM/eMfHj6swuB7C9986AclFtDfTeMg
         DGFg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=H4W5+t5N;
       spf=pass (google.com: domain of rathod.darshan.0896@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=rathod.darshan.0896@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 98e67ed59e1d1-31e63ac89fbsor3197296a91.6.2025.07.25.06.55.10
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 25 Jul 2025 06:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of rathod.darshan.0896@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV1u+8UwRb0poYrijV7jffW9V11dYX2CzFe7VxcBH8lhGkVWlbnors73lGENcKshF89tQmlux+NM8fowQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsrmHojaBwOZeVfsMhHv11qKnSdXsSH/3oBOInaSFAvzh6A/XgEz6cmM3w3qML
	wm9851tVPi32yiL8YEcW4tyq2YT0Mg8thFYOHbVT6HGggtu8PwCnJ98A8n6Lb85qLTNvAD1QTbS
	hVdJb8A1TS3+6wY4vQrh1TxC8J3Qg4c0XLeBWQ0qUpPtw/20SLup8wML+W5Vc4I2OV4y7ATLWVX
	Cp1ekIvyyZmYg1LGK6/z7MegNJHFHDyzcbOs7MgQq7rkLtYI6eK9t+kG2NYr/x+3pa2GK5JiPZZ
	bHlSEb0OWZvAmvAVuyz+3xs71ETNqYz/qh525jf6LYsSyyxVqBleZMtrBp1+jpiz+X/tDw/BNV3
	Gtk1/Grh/OGSjGH/jXHbwGTTIg07VS1EOIUEqxoD3cZ4+a+xJ8OzWCrp/7wnbtyv/Kxv7dAD/fa
	W+Fw==
X-Received: by 2002:a17:90a:fc4e:b0:313:d79d:87eb with SMTP id 98e67ed59e1d1-31e77a32a33mr3207824a91.35.1753451710127;
        Fri, 25 Jul 2025 06:55:10 -0700 (PDT)
Received: from SIQOL-WIN-0002-DARSHAN.localdomain ([49.36.70.207])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31e63a766d9sm2797962a91.2.2025.07.25.06.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 06:55:09 -0700 (PDT)
From: "Darshan R." <rathod.darshan.0896@gmail.com>
To: stern@rowland.harvard.edu
Cc: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	"Darshan R." <rathod.darshan.0896@gmail.com>
Subject: [usb-storage] [PATCH] usb: storage: Checkpatch fix done and Clean up
 coding style
Date: Fri, 25 Jul 2025 13:55:33 +0000
Message-ID: <20250725135533.8410-1-rathod.darshan.0896@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Original-Sender: rathod.darshan.0896@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=H4W5+t5N;       spf=pass
 (google.com: domain of rathod.darshan.0896@gmail.com designates 209.85.220.41
 as permitted sender) smtp.mailfrom=rathod.darshan.0896@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

The shuttle_usbat.c driver has several coding style inconsistencies that deviate from the Linux kernel standard.
This makes the code harder to read and maintain.

This patch is a pure cleanup effort to address these style issues.
The changes include:

- Adding proper spacing around operators (=, *, +, !=, etc.).
- Adjusting pointer declarations to the standard type *var style.
- Fixing spacing in pointer casts, e.g., (struct usbat_info *).
- Removing the redundant = 0 initializer for the static transferred
  variable, as it's guaranteed to be zero-initialized.
- Tidying up miscellaneous whitespace and removing extra blank lines.

These changes were guided by checkpatch.pl.
No functional changes have been made.

Signed-off-by: Darshan R. <rathod.darshan.0896@gmail.com>
---
 drivers/usb/storage/shuttle_usbat.c | 252 +++++++++++++---------------
 1 file changed, 120 insertions(+), 132 deletions(-)

diff --git a/drivers/usb/storage/shuttle_usbat.c b/drivers/usb/storage/shuttle_usbat.c
index 27faa0ead11d..d4a5ad500886 100644
--- a/drivers/usb/storage/shuttle_usbat.c
+++ b/drivers/usb/storage/shuttle_usbat.c
@@ -16,7 +16,7 @@
  * market by using some kind of translation from ATAPI to USB on the host,
  * and the peripheral would translate from USB back to ATAPI.
  *
- * SCM Microsystems (www.scmmicro.com) makes a device, sold to OEM's only, 
+ * SCM Microsystems (www.scmmicro.com) makes a device, sold to OEM's only,
  * which does the USB-to-ATAPI conversion.  By obtaining the data sheet on
  * their device under nondisclosure agreement, I have been able to write
  * this driver for Linux.
@@ -141,19 +141,18 @@ struct usbat_info {
 	unsigned long sense_ascq;  /* additional sense code qualifier */
 };
 
-#define short_pack(LSB,MSB) ( ((u16)(LSB)) | ( ((u16)(MSB))<<8 ) )
-#define LSB_of(s) ((s)&0xFF)
-#define MSB_of(s) ((s)>>8)
+#define short_pack(LSB, MSB) (((u16)(LSB)) | (((u16)(MSB)) << 8))
+#define LSB_of(s) ((s) & 0xFF)
+#define MSB_of(s) ((s) >> 8)
 
-static int transferred = 0;
+static int transferred;
 
-static int usbat_flash_transport(struct scsi_cmnd * srb, struct us_data *us);
+static int usbat_flash_transport(struct scsi_cmnd *srb, struct us_data *us);
 static int usbat_hp8200e_transport(struct scsi_cmnd *srb, struct us_data *us);
 
 static int init_usbat_cd(struct us_data *us);
 static int init_usbat_flash(struct us_data *us);
 
-
 /*
  * The table of devices
  */
@@ -214,7 +213,7 @@ static void usbat_pack_ata_sector_cmd(unsigned char *buf,
  */
 static int usbat_get_device_type(struct us_data *us)
 {
-	return ((struct usbat_info*)us->extra)->devicetype;
+	return ((struct usbat_info *)us->extra)->devicetype;
 }
 
 /*
@@ -257,7 +256,7 @@ static int usbat_write(struct us_data *us,
  * Convenience function to perform a bulk read
  */
 static int usbat_bulk_read(struct us_data *us,
-			   void* buf,
+			   void *buf,
 			   unsigned int len,
 			   int use_sg)
 {
@@ -272,7 +271,7 @@ static int usbat_bulk_read(struct us_data *us,
  * Convenience function to perform a bulk write
  */
 static int usbat_bulk_write(struct us_data *us,
-			    void* buf,
+			    void *buf,
 			    unsigned int len,
 			    int use_sg)
 {
@@ -303,6 +302,7 @@ static int usbat_execute_command(struct us_data *us,
 static int usbat_get_status(struct us_data *us, unsigned char *status)
 {
 	int rc;
+
 	rc = usbat_read(us, USBAT_ATA, USBAT_ATA_STATUS, status);
 
 	usb_stor_dbg(us, "0x%02X\n", *status);
@@ -405,11 +405,10 @@ static int usbat_wait_not_busy(struct us_data *us, int minutes)
 	 * minutes!
 	 */
 
-	for (i=0; i<1200+minutes*60; i++) {
-
- 		result = usbat_get_status(us, status);
+	for (i = 0; i < 1200 + minutes * 60; i++) {
+		result = usbat_get_status(us, status);
 
-		if (result!=USB_STOR_XFER_GOOD)
+		if (result != USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 		if (*status & 0x01) { /* check condition */
 			result = usbat_read(us, USBAT_ATA, 0x10, status);
@@ -418,16 +417,16 @@ static int usbat_wait_not_busy(struct us_data *us, int minutes)
 		if (*status & 0x20) /* device fault */
 			return USB_STOR_TRANSPORT_FAILED;
 
-		if ((*status & 0x80)==0x00) { /* not busy */
+		if ((*status & 0x80) == 0x00) { /* not busy */
 			usb_stor_dbg(us, "Waited not busy for %d steps\n", i);
 			return USB_STOR_TRANSPORT_GOOD;
 		}
 
-		if (i<500)
+		if (i < 500)
 			msleep(10); /* 5 seconds */
-		else if (i<700)
+		else if (i < 700)
 			msleep(50); /* 10 seconds */
-		else if (i<1200)
+		else if (i < 1200)
 			msleep(100); /* 50 seconds */
 		else
 			msleep(1000); /* X minutes */
@@ -442,7 +441,7 @@ static int usbat_wait_not_busy(struct us_data *us, int minutes)
  * Read block data from the data register
  */
 static int usbat_read_block(struct us_data *us,
-			    void* buf,
+			    void *buf,
 			    unsigned short len,
 			    int use_sg)
 {
@@ -475,7 +474,7 @@ static int usbat_read_block(struct us_data *us,
  */
 static int usbat_write_block(struct us_data *us,
 			     unsigned char access,
-			     void* buf,
+			     void *buf,
 			     unsigned short len,
 			     int minutes,
 			     int use_sg)
@@ -535,22 +534,21 @@ static int usbat_hp8200e_rw_block_test(struct us_data *us,
 	unsigned char *data = us->iobuf;
 	unsigned char *status = us->iobuf;
 
-	BUG_ON(num_registers > US_IOBUF_SIZE/2);
-
-	for (i=0; i<20; i++) {
+	BUG_ON(num_registers > US_IOBUF_SIZE / 2);
 
+	for (i = 0; i < 20; i++) {
 		/*
 		 * The first time we send the full command, which consists
 		 * of downloading the SCSI command followed by downloading
 		 * the data via a write-and-test.  Any other time we only
 		 * send the command to download the data -- the SCSI command
 		 * is still 'active' in some sense in the device.
-		 * 
+		 *
 		 * We're only going to try sending the data 10 times. After
 		 * that, we just return a failure.
 		 */
 
-		if (i==0) {
+		if (i == 0) {
 			cmdlen = 16;
 			/*
 			 * Write to multiple registers
@@ -564,39 +562,37 @@ static int usbat_hp8200e_rw_block_test(struct us_data *us,
 			command[3] = 0x17;
 			command[4] = 0xFC;
 			command[5] = 0xE7;
-			command[6] = LSB_of(num_registers*2);
-			command[7] = MSB_of(num_registers*2);
+			command[6] = LSB_of(num_registers * 2);
+			command[7] = MSB_of(num_registers * 2);
 		} else
 			cmdlen = 8;
 
 		/* Conditionally read or write blocks */
-		command[cmdlen-8] = (direction==DMA_TO_DEVICE ? 0x40 : 0xC0);
-		command[cmdlen-7] = access |
-				(direction==DMA_TO_DEVICE ?
+		command[cmdlen - 8] = (direction == DMA_TO_DEVICE ? 0x40 : 0xC0);
+		command[cmdlen - 7] = access |
+				(direction == DMA_TO_DEVICE ?
 				 USBAT_CMD_COND_WRITE_BLOCK : USBAT_CMD_COND_READ_BLOCK);
-		command[cmdlen-6] = data_reg;
-		command[cmdlen-5] = status_reg;
-		command[cmdlen-4] = timeout;
-		command[cmdlen-3] = qualifier;
-		command[cmdlen-2] = LSB_of(len);
-		command[cmdlen-1] = MSB_of(len);
+		command[cmdlen - 6] = data_reg;
+		command[cmdlen - 5] = status_reg;
+		command[cmdlen - 4] = timeout;
+		command[cmdlen - 3] = qualifier;
+		command[cmdlen - 2] = LSB_of(len);
+		command[cmdlen - 1] = MSB_of(len);
 
 		result = usbat_execute_command(us, command, cmdlen);
 
 		if (result != USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (i==0) {
-
-			for (j=0; j<num_registers; j++) {
-				data[j<<1] = registers[j];
-				data[1+(j<<1)] = data_out[j];
+		if (i == 0) {
+			for (j = 0; j < num_registers; j++) {
+				data[j << 1] = registers[j];
+				data[1 + (j << 1)] = data_out[j];
 			}
 
 			result = usbat_bulk_write(us, data, num_registers*2, 0);
 			if (result != USB_STOR_XFER_GOOD)
 				return USB_STOR_TRANSPORT_ERROR;
-
 		}
 
 		result = usb_stor_bulk_transfer_sg(us,
@@ -629,7 +625,7 @@ static int usbat_hp8200e_rw_block_test(struct us_data *us,
 			 * the bulk output pipe only the first time.
 			 */
 
-			if (direction==DMA_FROM_DEVICE && i==0) {
+			if (direction == DMA_FROM_DEVICE && i == 0) {
 				if (usb_stor_clear_halt(us,
 						us->send_bulk_pipe) < 0)
 					return USB_STOR_TRANSPORT_ERROR;
@@ -639,12 +635,12 @@ static int usbat_hp8200e_rw_block_test(struct us_data *us,
 			 * Read status: is the device angry, or just busy?
 			 */
 
- 			result = usbat_read(us, USBAT_ATA, 
-				direction==DMA_TO_DEVICE ?
+			result = usbat_read(us, USBAT_ATA,
+				direction == DMA_TO_DEVICE ?
 					USBAT_ATA_STATUS : USBAT_ATA_ALTSTATUS,
 				status);
 
-			if (result!=USB_STOR_XFER_GOOD)
+			if (result != USB_STOR_XFER_GOOD)
 				return USB_STOR_TRANSPORT_ERROR;
 			if (*status & 0x01) /* check condition */
 				return USB_STOR_TRANSPORT_FAILED;
@@ -683,7 +679,7 @@ static int usbat_multiple_write(struct us_data *us,
 	unsigned char *data = us->iobuf;
 	unsigned char *command = us->iobuf;
 
-	BUG_ON(num_registers > US_IOBUF_SIZE/2);
+	BUG_ON(num_registers > US_IOBUF_SIZE / 2);
 
 	/* Write to multiple registers, ATA access */
 	command[0] = 0x40;
@@ -696,8 +692,8 @@ static int usbat_multiple_write(struct us_data *us,
 	command[5] = 0;
 
 	/* Number of bytes to be transferred (incl. addresses and data) */
-	command[6] = LSB_of(num_registers*2);
-	command[7] = MSB_of(num_registers*2);
+	command[6] = LSB_of(num_registers * 2);
+	command[7] = MSB_of(num_registers * 2);
 
 	/* The setup command */
 	result = usbat_execute_command(us, command, 8);
@@ -705,13 +701,13 @@ static int usbat_multiple_write(struct us_data *us,
 		return USB_STOR_TRANSPORT_ERROR;
 
 	/* Create the reg/data, reg/data sequence */
-	for (i=0; i<num_registers; i++) {
-		data[i<<1] = registers[i];
-		data[1+(i<<1)] = data_out[i];
+	for (i = 0; i < num_registers; i++) {
+		data[i << 1] = registers[i];
+		data[1 + (i << 1)] = data_out[i];
 	}
 
 	/* Send the data */
-	result = usbat_bulk_write(us, data, num_registers*2, 0);
+	result = usbat_bulk_write(us, data, num_registers * 2, 0);
 	if (result != USB_STOR_XFER_GOOD)
 		return USB_STOR_TRANSPORT_ERROR;
 
@@ -734,7 +730,7 @@ static int usbat_multiple_write(struct us_data *us,
  * other related details) are defined beforehand with _set_shuttle_features().
  */
 static int usbat_read_blocks(struct us_data *us,
-			     void* buffer,
+			     void *buffer,
 			     int len,
 			     int use_sg)
 {
@@ -754,7 +750,7 @@ static int usbat_read_blocks(struct us_data *us,
 	result = usbat_execute_command(us, command, 8);
 	if (result != USB_STOR_XFER_GOOD)
 		return USB_STOR_TRANSPORT_FAILED;
-	
+
 	/* Read the blocks we just asked for */
 	result = usbat_bulk_read(us, buffer, len, use_sg);
 	if (result != USB_STOR_XFER_GOOD)
@@ -776,7 +772,7 @@ static int usbat_read_blocks(struct us_data *us,
  * other related details) are defined beforehand with _set_shuttle_features().
  */
 static int usbat_write_blocks(struct us_data *us,
-			      void* buffer,
+			      void *buffer,
 			      int len,
 			      int use_sg)
 {
@@ -796,7 +792,7 @@ static int usbat_write_blocks(struct us_data *us,
 	result = usbat_execute_command(us, command, 8);
 	if (result != USB_STOR_XFER_GOOD)
 		return USB_STOR_TRANSPORT_FAILED;
-	
+
 	/* Write the data */
 	result = usbat_bulk_write(us, buffer, len, use_sg);
 	if (result != USB_STOR_XFER_GOOD)
@@ -860,7 +856,7 @@ static int usbat_device_reset(struct us_data *us)
 							 USBAT_UIO_EPAD | USBAT_UIO_1);
 	if (rc != USB_STOR_XFER_GOOD)
 		return USB_STOR_TRANSPORT_ERROR;
-			
+
 	/*
 	 * Enable peripheral control signals
 	 * (bring reset signal down)
@@ -958,7 +954,7 @@ static int usbat_flash_check_media(struct us_data *us,
 		rc = usbat_read_user_io(us, uio);
 		if (rc != USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
-		
+
 		info->sense_key = UNIT_ATTENTION;
 		info->sense_asc = 0x28;
 		info->sense_ascq = 0x00;
@@ -994,12 +990,12 @@ static int usbat_identify_device(struct us_data *us,
 	 * CDROM drives), it should succeed.
 	 */
 	rc = usbat_write(us, USBAT_ATA, USBAT_ATA_CMD, 0xA1);
- 	if (rc != USB_STOR_XFER_GOOD)
- 		return USB_STOR_TRANSPORT_ERROR;
+	if (rc != USB_STOR_XFER_GOOD)
+		return USB_STOR_TRANSPORT_ERROR;
 
 	rc = usbat_get_status(us, &status);
- 	if (rc != USB_STOR_XFER_GOOD)
- 		return USB_STOR_TRANSPORT_ERROR;
+	if (rc != USB_STOR_XFER_GOOD)
+		return USB_STOR_TRANSPORT_ERROR;
 
 	/* Check for error bit, or if the command 'fell through' */
 	if (status == 0xA1 || !(status & 0x01)) {
@@ -1092,7 +1088,7 @@ static int usbat_flash_get_sector_count(struct us_data *us,
 	info->sectors = ((u32)(reply[117]) << 24) |
 		((u32)(reply[116]) << 16) |
 		((u32)(reply[115]) <<  8) |
-		((u32)(reply[114])      );
+		((u32)(reply[114]));
 
 	rc = USB_STOR_TRANSPORT_GOOD;
 
@@ -1160,7 +1156,7 @@ static int usbat_flash_read_data(struct us_data *us,
 		 */
 		len = min(totallen, alloclen);
 		thistime = (len / info->ssize) & 0xff;
- 
+
 		/* ATA command 0x20 (READ SECTORS) */
 		usbat_pack_ata_sector_cmd(command, thistime, sector, 0x20);
 
@@ -1173,9 +1169,9 @@ static int usbat_flash_read_data(struct us_data *us,
 		result = usbat_read_blocks(us, buffer, len, 0);
 		if (result != USB_STOR_TRANSPORT_GOOD)
 			goto leave;
-  	 
+
 		usb_stor_dbg(us, "%d bytes\n", len);
-	
+
 		/* Store the data in the transfer buffer */
 		usb_stor_access_xfer_buf(buffer, len, us->srb,
 					 &sg, &sg_offset, TO_XFER_BUF);
@@ -1301,7 +1297,7 @@ static int usbat_hp8200e_handle_read10(struct us_data *us,
 
 	if (scsi_bufflen(srb) < 0x10000) {
 
-		result = usbat_hp8200e_rw_block_test(us, USBAT_ATA, 
+		result = usbat_hp8200e_rw_block_test(us, USBAT_ATA,
 			registers, data, 19,
 			USBAT_ATA_DATA, USBAT_ATA_STATUS, 0xFD,
 			(USBAT_QUAL_FCQ | USBAT_QUAL_ALQ),
@@ -1320,10 +1316,10 @@ static int usbat_hp8200e_handle_read10(struct us_data *us,
 	 * (see linux/drivers/scsi/sr.c).
 	 */
 
-	if (data[7+0] == GPCMD_READ_CD) {
-		len = short_pack(data[7+9], data[7+8]);
+	if (data[7 + 0] == GPCMD_READ_CD) {
+		len = short_pack(data[7 + 9], data[7 + 8]);
 		len <<= 16;
-		len |= data[7+7];
+		len |= data[7 + 7];
 		usb_stor_dbg(us, "GPCMD_READ_CD: len %d\n", len);
 		srb->transfersize = scsi_bufflen(srb)/len;
 	}
@@ -1340,15 +1336,15 @@ static int usbat_hp8200e_handle_read10(struct us_data *us,
 	 * bounce buffer and the actual transfer buffer.
 	 */
 
-	len = (65535/srb->transfersize) * srb->transfersize;
+	len = (65535 / srb->transfersize) * srb->transfersize;
 	usb_stor_dbg(us, "Max read is %d bytes\n", len);
 	len = min(len, scsi_bufflen(srb));
 	buffer = kmalloc(len, GFP_NOIO);
 	if (buffer == NULL) /* bloody hell! */
 		return USB_STOR_TRANSPORT_FAILED;
-	sector = short_pack(data[7+3], data[7+2]);
+	sector = short_pack(data[7 + 3], data[7 + 2]);
 	sector <<= 16;
-	sector |= short_pack(data[7+5], data[7+4]);
+	sector |= short_pack(data[7 + 5], data[7 + 4]);
 	transferred = 0;
 
 	while (transferred != scsi_bufflen(srb)) {
@@ -1356,27 +1352,26 @@ static int usbat_hp8200e_handle_read10(struct us_data *us,
 		if (len > scsi_bufflen(srb) - transferred)
 			len = scsi_bufflen(srb) - transferred;
 
-		data[3] = len&0xFF; 	  /* (cylL) = expected length (L) */
-		data[4] = (len>>8)&0xFF;  /* (cylH) = expected length (H) */
+		data[3] = len & 0xFF;	/* (cylL) = expected length (L) */
+		data[4] = (len >> 8) & 0xFF;	/* (cylH) = expected length (H) */
 
 		/* Fix up the SCSI command sector and num sectors */
 
-		data[7+2] = MSB_of(sector>>16); /* SCSI command sector */
-		data[7+3] = LSB_of(sector>>16);
-		data[7+4] = MSB_of(sector&0xFFFF);
-		data[7+5] = LSB_of(sector&0xFFFF);
-		if (data[7+0] == GPCMD_READ_CD)
-			data[7+6] = 0;
-		data[7+7] = MSB_of(len / srb->transfersize); /* SCSI command */
-		data[7+8] = LSB_of(len / srb->transfersize); /* num sectors */
-
-		result = usbat_hp8200e_rw_block_test(us, USBAT_ATA, 
-			registers, data, 19,
-			USBAT_ATA_DATA, USBAT_ATA_STATUS, 0xFD, 
-			(USBAT_QUAL_FCQ | USBAT_QUAL_ALQ),
-			DMA_FROM_DEVICE,
-			buffer,
-			len, 0, 1);
+		data[7 + 2] = MSB_of(sector >> 16); /* SCSI command sector */
+		data[7 + 3] = LSB_of(sector >> 16);
+		data[7 + 4] = MSB_of(sector & 0xFFFF);
+		data[7 + 5] = LSB_of(sector & 0xFFFF);
+		if (data[7 + 0] == GPCMD_READ_CD)
+			data[7 + 6] = 0;
+		data[7 + 7] = MSB_of(len / srb->transfersize); /* SCSI command */
+		data[7 + 8] = LSB_of(len / srb->transfersize); /* num sectors */
+
+		result = usbat_hp8200e_rw_block_test(us, USBAT_ATA,
+				registers, data, 19,
+				USBAT_ATA_DATA, USBAT_ATA_STATUS, 0xFD,
+				(USBAT_QUAL_FCQ | USBAT_QUAL_ALQ),
+				DMA_FROM_DEVICE,
+				buffer, len, 0, 1);
 
 		if (result != USB_STOR_TRANSPORT_GOOD)
 			break;
@@ -1407,35 +1402,35 @@ static int usbat_select_and_test_registers(struct us_data *us)
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_read(us, USBAT_ATA, USBAT_ATA_STATUS, status) != 
+		if (usbat_read(us, USBAT_ATA, USBAT_ATA_STATUS, status) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_read(us, USBAT_ATA, USBAT_ATA_DEVICE, status) != 
+		if (usbat_read(us, USBAT_ATA, USBAT_ATA_DEVICE, status) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) != 
+		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_HI, status) != 
+		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_HI, status) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_write(us, USBAT_ATA, USBAT_ATA_LBA_ME, 0x55) != 
+		if (usbat_write(us, USBAT_ATA, USBAT_ATA_LBA_ME, 0x55) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_write(us, USBAT_ATA, USBAT_ATA_LBA_HI, 0xAA) != 
+		if (usbat_write(us, USBAT_ATA, USBAT_ATA_LBA_HI, 0xAA) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) != 
+		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 
-		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) != 
+		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) !=
 				USB_STOR_XFER_GOOD)
 			return USB_STOR_TRANSPORT_ERROR;
 	}
@@ -1458,7 +1453,7 @@ static int init_usbat(struct us_data *us, int devicetype)
 	if (!us->extra)
 		return -ENOMEM;
 
-	info = (struct usbat_info *) (us->extra);
+	info = (struct usbat_info *)(us->extra);
 
 	/* Enable peripheral control signals */
 	rc = usbat_write_user_io(us,
@@ -1532,7 +1527,7 @@ static int init_usbat(struct us_data *us, int devicetype)
 
 	usb_stor_dbg(us, "INIT 10\n");
 
-	if (usbat_get_device_type(us) == USBAT_DEV_FLASH) { 
+	if (usbat_get_device_type(us) == USBAT_DEV_FLASH) {
 		subcountH = 0x02;
 		subcountL = 0x00;
 	}
@@ -1564,7 +1559,7 @@ static int usbat_hp8200e_transport(struct scsi_cmnd *srb, struct us_data *us)
 	 * Send A0 (ATA PACKET COMMAND).
 	 * Note: I guess we're never going to get any of the ATA
 	 * commands... just ATA Packet Commands.
- 	 */
+	 */
 
 	registers[0] = USBAT_ATA_FEATURES;
 	registers[1] = USBAT_ATA_SECCNT;
@@ -1576,14 +1571,14 @@ static int usbat_hp8200e_transport(struct scsi_cmnd *srb, struct us_data *us)
 	data[0] = 0x00;
 	data[1] = 0x00;
 	data[2] = 0x00;
-	data[3] = len&0xFF; 		/* (cylL) = expected length (L) */
-	data[4] = (len>>8)&0xFF; 	/* (cylH) = expected length (H) */
-	data[5] = 0xB0; 		/* (device sel) = slave */
-	data[6] = 0xA0; 		/* (command) = ATA PACKET COMMAND */
+	data[3] = len & 0xFF;		/* (cylL) = expected length (L) */
+	data[4] = (len >> 8) & 0xFF;	/* (cylH) = expected length (H) */
+	data[5] = 0xB0;			/* (device sel) = slave */
+	data[6] = 0xA0;			/* (command) = ATA PACKET COMMAND */
 
-	for (i=7; i<19; i++) {
+	for (i = 7; i < 19; i++) {
 		registers[i] = 0x10;
-		data[i] = (i-7 >= srb->cmd_len) ? 0 : srb->cmnd[i-7];
+		data[i] = (i - 7 >= srb->cmd_len) ? 0 : srb->cmnd[i - 7];
 	}
 
 	result = usbat_get_status(us, status);
@@ -1594,8 +1589,7 @@ static int usbat_hp8200e_transport(struct scsi_cmnd *srb, struct us_data *us)
 		transferred = 0;
 
 	if (srb->sc_data_direction == DMA_TO_DEVICE) {
-
-		result = usbat_hp8200e_rw_block_test(us, USBAT_ATA, 
+		result = usbat_hp8200e_rw_block_test(us, USBAT_ATA,
 			registers, data, 19,
 			USBAT_ATA_DATA, USBAT_ATA_STATUS, 0xFD,
 			(USBAT_QUAL_FCQ | USBAT_QUAL_ALQ),
@@ -1614,7 +1608,6 @@ static int usbat_hp8200e_transport(struct scsi_cmnd *srb, struct us_data *us)
 		   srb->cmnd[0] == GPCMD_READ_CD) {
 
 		return usbat_hp8200e_handle_read10(us, registers, data, srb);
-
 	}
 
 	if (len > 0xFFFF) {
@@ -1647,28 +1640,24 @@ static int usbat_hp8200e_transport(struct scsi_cmnd *srb, struct us_data *us)
 	/* If there is response data to be read in then do it here. */
 
 	if (len != 0 && (srb->sc_data_direction == DMA_FROM_DEVICE)) {
-
 		/* How many bytes to read in? Check cylL register */
-
-		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) != 
-		    	USB_STOR_XFER_GOOD) {
+		if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_ME, status) !=
+				USB_STOR_XFER_GOOD) {
 			return USB_STOR_TRANSPORT_ERROR;
 		}
 
 		if (len > 0xFF) { /* need to read cylH also */
 			len = *status;
 			if (usbat_read(us, USBAT_ATA, USBAT_ATA_LBA_HI, status) !=
-				    USB_STOR_XFER_GOOD) {
+			USB_STOR_XFER_GOOD) {
 				return USB_STOR_TRANSPORT_ERROR;
 			}
-			len += ((unsigned int) *status)<<8;
-		}
-		else
+			len += ((unsigned int)*status) << 8;
+		} else
 			len = *status;
 
-
 		result = usbat_read_block(us, scsi_sglist(srb), len,
-			                                   scsi_sg_count(srb));
+					  scsi_sg_count(srb));
 	}
 
 	return result;
@@ -1677,10 +1666,10 @@ static int usbat_hp8200e_transport(struct scsi_cmnd *srb, struct us_data *us)
 /*
  * Transport for USBAT02-based CompactFlash and similar storage devices
  */
-static int usbat_flash_transport(struct scsi_cmnd * srb, struct us_data *us)
+static int usbat_flash_transport(struct scsi_cmnd *srb, struct us_data *us)
 {
 	int rc;
-	struct usbat_info *info = (struct usbat_info *) (us->extra);
+	struct usbat_info *info = (struct usbat_info *)(us->extra);
 	unsigned long block, blocks;
 	unsigned char *ptr = us->iobuf;
 	static const unsigned char inquiry_response[36] = {
@@ -1713,8 +1702,8 @@ static int usbat_flash_transport(struct scsi_cmnd * srb, struct us_data *us)
 		 * note: must return the sector number of the last sector,
 		 * *not* the total number of sectors
 		 */
-		((__be32 *) ptr)[0] = cpu_to_be32(info->sectors - 1);
-		((__be32 *) ptr)[1] = cpu_to_be32(info->ssize);
+		((__be32 *)ptr)[0] = cpu_to_be32(info->sectors - 1);
+		((__be32 *)ptr)[1] = cpu_to_be32(info->ssize);
 		usb_stor_set_xfer_buf(ptr, 8, srb);
 
 		return USB_STOR_TRANSPORT_GOOD;
@@ -1741,10 +1730,10 @@ static int usbat_flash_transport(struct scsi_cmnd * srb, struct us_data *us)
 		 * I don't think we'll ever see a READ_12 but support it anyway
 		 */
 		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
-		        ((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));
+			((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));
 
 		blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
-		         ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));
+			 ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));
 
 		usb_stor_dbg(us, "READ_12: read block 0x%04lx  count %ld\n",
 			     block, blocks);
@@ -1753,7 +1742,7 @@ static int usbat_flash_transport(struct scsi_cmnd * srb, struct us_data *us)
 
 	if (srb->cmnd[0] == WRITE_10) {
 		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
-		        ((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));
+			((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));
 
 		blocks = ((u32)(srb->cmnd[7]) << 8) | ((u32)(srb->cmnd[8]));
 
@@ -1767,17 +1756,16 @@ static int usbat_flash_transport(struct scsi_cmnd * srb, struct us_data *us)
 		 * I don't think we'll ever see a WRITE_12 but support it anyway
 		 */
 		block = ((u32)(srb->cmnd[2]) << 24) | ((u32)(srb->cmnd[3]) << 16) |
-		        ((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));
+			((u32)(srb->cmnd[4]) <<  8) | ((u32)(srb->cmnd[5]));
 
 		blocks = ((u32)(srb->cmnd[6]) << 24) | ((u32)(srb->cmnd[7]) << 16) |
-		         ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));
+			 ((u32)(srb->cmnd[8]) <<  8) | ((u32)(srb->cmnd[9]));
 
 		usb_stor_dbg(us, "WRITE_12: write block 0x%04lx  count %ld\n",
 			     block, blocks);
 		return usbat_flash_write_data(us, info, block, blocks);
 	}
 
-
 	if (srb->cmnd[0] == TEST_UNIT_READY) {
 		usb_stor_dbg(us, "TEST_UNIT_READY\n");
 
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250725135533.8410-1-rathod.darshan.0896%40gmail.com.
