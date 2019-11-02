Return-Path: <usb-storage+bncBCILJWNIZYHBB4FP6PWQKGQE6VDKWOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id DA05EECC98
	for <lists+usb-storage@lfdr.de>; Sat,  2 Nov 2019 02:12:17 +0100 (CET)
Received: by mail-il1-x147.google.com with SMTP id 13sf10023509iln.11
        for <lists+usb-storage@lfdr.de>; Fri, 01 Nov 2019 18:12:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572657136; cv=pass;
        d=google.com; s=arc-20160816;
        b=PGmq6Er0Q2z0ZfXsCYpcb1A1Ti9AsmQakL+sxfCK1rUSQ6DHDKCGFJiZhCQozA74WH
         xWObZVI7T3HRS35uDY9VaEKadrPBPAah+NQI+swEIVzx13a1NbfMi6j07s9GPwp/YV2T
         0Rx69lq70egzJhdQqVORzNGcjrQA1lXr5Se0EsUScGFbK78W8nni0TRNclF2V8R6NaKw
         qy8uEYflbKF4JAo4PLBGEyU6rN9stXKrl87Dq02drbu6hoj2yAq3gTW7Hysge8dhAnsh
         bjE2Hl78d1+uzENWsuUq0SGJdQodywYsjoDDbvTOY3UZYxwz+O+TyUwvBv7LluHZ3r73
         xjvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:subject:from:references
         :in-reply-to:message-id:cc:to:mime-version:sender:dkim-signature;
        bh=S6NNuCbWNmadEzZt960i6KhmvVT5E/9aABgg/uRM5nQ=;
        b=ZDF4XKuW9yQ5e1nsT2RyEuumiMUfKZFoRFqqOPGaW7BicLwhgfsjZtDsu37bujyoLR
         jvvsZpyl2DtiY6h/qbSDSc/M9DK9LlHqCqqZzC80N8ha9qN0LjexYPQYRsJ85kPmKdhE
         xqPb+sG2k7VRkkbYItF31sipoOCrPct46QxvnqW4BzjkqkJjdakQvpGHahYK+8TbFooG
         SuWyxBfdk6pqUuORx/nl+8mxpd/NFIQrZRss7RPEnW9I6igVWTHtCIRy+L6t7bqM9K2W
         M8AaF2jH52ooSIsVfJxYX9SxZunFYI0/KFrAhlBTfxasNmg/8MuCB9idfKbVhj0WYict
         zaIg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:to:cc:message-id:in-reply-to:references:from
         :subject:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6NNuCbWNmadEzZt960i6KhmvVT5E/9aABgg/uRM5nQ=;
        b=R8H6ueFPMMoKEEbC2nS3eyE20Zg6q27bL9y998eu/MbrsoUrb59CKK52vQlAip6f42
         vb+9+yYR531aqURfL0qWmo2GqpLbnOOKBWAB6ESfkGVpFZYJF5B3sOv5g6SF9YaPH/sw
         Q5pFbk2RMEaLwMOCneWe3mMVfRELJk0iB45Sc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:to:cc:message-id:in-reply-to
         :references:from:subject:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S6NNuCbWNmadEzZt960i6KhmvVT5E/9aABgg/uRM5nQ=;
        b=Y8FKkBMnBe+Sd+ZMqOtKeuu3fUU/C6cWM6PQomBkMfdGtjtsVjEe+ZcFktbBQ43t84
         0aZ364n86MTH2zee2MN9PQGahkQV8riiW+ntPuoNWev8M6Y+KWR/tqtDzNynbrasGuGR
         oAHVUtKFIDdUUEI1DF2Kdi6jyUPmCtQDp+ieqgk2S5aTIGANckpuMceMNVckqAp72D7z
         0Zb8sb1niMfuvkYbBKMqEobccooV5PyWBMTerwQaKcDKloAv2mcrUocH18Rws8BD3oR3
         CXGIIk2JDWnj+A+5z0fYpTBI3SE2TXseOpGbLPZYCwv40sMS4Orjox0YRElq3lLQvRF6
         8bqQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUPwRqsOb5WxsRpGmvqwKDnopdmQFpLovy+i+u/3SLSfJZVpppO
	U+7n1ZZPLEk818r5GDZ0PhJelw==
X-Google-Smtp-Source: APXvYqxr+jDcJUzLh7ReEnURyRPnHBfXCTWmsTWasPJ1sRjAxj4X7BU8VdA1aF5h0Qy+vae18uH83Q==
X-Received: by 2002:a92:9e4c:: with SMTP id q73mr15697968ili.53.1572657136655;
        Fri, 01 Nov 2019 18:12:16 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:37cd:: with SMTP id r196ls649484jar.8.gmail; Fri, 01 Nov
 2019 18:12:16 -0700 (PDT)
X-Received: by 2002:a02:c4cf:: with SMTP id h15mr5091678jaj.112.1572657136181;
        Fri, 01 Nov 2019 18:12:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572657136; cv=none;
        d=google.com; s=arc-20160816;
        b=rjdKs9vQ4NpX3hrG52Bautu/Gn1wMfXYnAhlukDi4TS0BiezSp/rv4NcxhQ4FH/q+5
         bcTvYSpdwpwwqTh066l1XmgC5G5edytgLbsEDhksmRfAsdObpE+vtwFj5QF77JWLtKR5
         wTLT12di/xvNSU377nXcS4MRTwSmqNB0579vSXkOz9eMsLoxKHvHSy2G3tsOUGQyu8jQ
         2cR+irV27gri5QUJ+xKyRrSBTWUakfwMSBm9hdjrS3xFTzTohIvV4FhxomoPzsNpWAG5
         aFLMra4Q8MHbPggiSi3nrpQVNsmB+oVaeTLrcuh6CYZD+au+4/sxn9dHs3W/mIBIRwFB
         essw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:subject:from:references:in-reply-to:message-id:cc:to;
        bh=T7GV8lwiVVcbBvjSy0Te6qGqxYv9mI/MSp7vI7M3PTk=;
        b=YIv5lCDWUpmktwS+B0ZfiG64A/EjXm51HiO6N5gBNSk8Nfage8TIx3wzXo7ryPRQ5/
         RtE5lG64vyymcuCM2xsI4BKgmdiW+S2oqFdkAfi4hVDuVBfmRUvfx9rby/i4x57+srzc
         thY4c+owB4SMWUxTwmLo5OMW42GeC5VKBYSTuaQ7tCLIL9XFQw7JIK8rWTdnyyPdLJhD
         7+f2a3eEICR0Y+ASpFrxvLrJ1uMqxP3HAtdf7siYX5j8n8bLKLCI1RGrLMTbsCexnKbA
         6GuZwqTffUVy5aM6rC2AbX2PX1TWmMx2MuJgXgK3+xfMjqEp3RmI4Kj4gdeBmSYigOQm
         ROWA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id h199si13776182iof.140.2019.11.01.18.12.16
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 01 Nov 2019 18:12:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: by kvm5.telegraphics.com.au (Postfix, from userid 502)
	id B6FE429915; Fri,  1 Nov 2019 21:12:15 -0400 (EDT)
To: "James E.J. Bottomley" <jejb@linux.ibm.com>,
    "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: "Michael Schmitz" <schmitzmic@gmail.com>,
    linux-scsi@vger.kernel.org,
    linux-kernel@vger.kernel.org,
    "Jonathan Corbet" <corbet@lwn.net>,
    "Bartlomiej Zolnierkiewicz" <b.zolnierkie@samsung.com>,
    "Jens Axboe" <axboe@kernel.dk>,
    "Viresh Kumar" <vireshk@kernel.org>,
    "Oliver Neukum" <oneukum@suse.com>,
    "Alan Stern" <stern@rowland.harvard.edu>,
    "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
    usb-storage@lists.one-eyed-alien.net,
    linux-doc@vger.kernel.org,
    linux-ide@vger.kernel.org,
    linux-usb@vger.kernel.org
Message-Id: <b4779b7a6563f6bd8d259ee457871c1c463c420e.1572656814.git.fthain@telegraphics.com.au>
In-Reply-To: <cover.1572656814.git.fthain@telegraphics.com.au>
References: <cover.1572656814.git.fthain@telegraphics.com.au>
From: Finn Thain <fthain@telegraphics.com.au>
Subject: [usb-storage] [PATCH 2/2] scsi: Clean up SG_NONE
Date: Sat, 02 Nov 2019 12:06:54 +1100
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of fthain@telegraphics.com.au designates
 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

Remove SG_NONE and a related misleading comment. Update documentation.

This patch does not affect behaviour as zero initialization is redundant.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: Viresh Kumar <vireshk@kernel.org>
Cc: Oliver Neukum <oneukum@suse.com>
Cc: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: usb-storage@lists.one-eyed-alien.net
Signed-off-by: Finn Thain <fthain@telegraphics.com.au>
---
 Documentation/scsi/scsi_mid_low_api.txt |  3 ++-
 drivers/ata/pata_arasan_cf.c            |  1 -
 drivers/scsi/atp870u.c                  |  2 +-
 drivers/usb/storage/uas.c               |  1 -
 include/scsi/scsi_host.h                | 13 -------------
 5 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/Documentation/scsi/scsi_mid_low_api.txt b/Documentation/scsi/scsi_mid_low_api.txt
index c1dd4939f4ae..2a4be1c3e6db 100644
--- a/Documentation/scsi/scsi_mid_low_api.txt
+++ b/Documentation/scsi/scsi_mid_low_api.txt
@@ -1084,7 +1084,8 @@ of interest:
                    commands to the adapter.
     this_id      - scsi id of host (scsi initiator) or -1 if not known
     sg_tablesize - maximum scatter gather elements allowed by host.
-                   0 implies scatter gather not supported by host
+                   Set this to SG_ALL or less to avoid chained SG lists.
+                   Must be at least 1.
     max_sectors  - maximum number of sectors (usually 512 bytes) allowed
                    in a single SCSI command. The default value of 0 leads
                    to a setting of SCSI_DEFAULT_MAX_SECTORS (defined in
diff --git a/drivers/ata/pata_arasan_cf.c b/drivers/ata/pata_arasan_cf.c
index ebecab8c3f36..135173c8d138 100644
--- a/drivers/ata/pata_arasan_cf.c
+++ b/drivers/ata/pata_arasan_cf.c
@@ -219,7 +219,6 @@ struct arasan_cf_dev {
 
 static struct scsi_host_template arasan_cf_sht = {
 	ATA_BASE_SHT(DRIVER_NAME),
-	.sg_tablesize = SG_NONE,
 	.dma_boundary = 0xFFFFFFFFUL,
 };
 
diff --git a/drivers/scsi/atp870u.c b/drivers/scsi/atp870u.c
index e41f0bbdc9fd..c6a752309dda 100644
--- a/drivers/scsi/atp870u.c
+++ b/drivers/scsi/atp870u.c
@@ -1680,7 +1680,7 @@ static struct scsi_host_template atp870u_template = {
      .bios_param        	= atp870u_biosparam	/* biosparm */,
      .can_queue         	= qcnt			/* can_queue */,
      .this_id           	= 7			/* SCSI ID */,
-     .sg_tablesize      	= ATP870U_SCATTER	/*SG_ALL*/ /*SG_NONE*/,
+     .sg_tablesize      	= ATP870U_SCATTER	/*SG_ALL*/,
      .max_sectors		= ATP870U_MAX_SECTORS,
 };
 
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index bf80d6f81f58..fd9c0d2c111f 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -879,7 +879,6 @@ static struct scsi_host_template uas_host_template = {
 	.eh_abort_handler = uas_eh_abort_handler,
 	.eh_device_reset_handler = uas_eh_device_reset_handler,
 	.this_id = -1,
-	.sg_tablesize = SG_NONE,
 	.skip_settle_delay = 1,
 	.dma_boundary = PAGE_SIZE - 1,
 };
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index 31e0d6ca1eba..d7cf9c7fecac 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -23,19 +23,6 @@ struct scsi_host_cmd_pool;
 struct scsi_transport_template;
 
 
-/*
- * The various choices mean:
- * NONE: Self evident.	Host adapter is not capable of scatter-gather.
- * ALL:	 Means that the host adapter module can do scatter-gather,
- *	 and that there is no limit to the size of the table to which
- *	 we scatter/gather data.  The value we set here is the maximum
- *	 single element sglist.  To use chained sglists, the adapter
- *	 has to set a value beyond ALL (and correctly use the chain
- *	 handling API.
- * Anything else:  Indicates the maximum number of chains that can be
- *	 used in one scatter-gather request.
- */
-#define SG_NONE 0
 #define SG_ALL	SG_CHUNK_SIZE
 
 #define MODE_UNKNOWN 0x00
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b4779b7a6563f6bd8d259ee457871c1c463c420e.1572656814.git.fthain%40telegraphics.com.au.
