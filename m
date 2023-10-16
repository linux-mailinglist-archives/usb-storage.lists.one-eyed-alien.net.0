Return-Path: <usb-storage+bncBDTNDO5RRYJRBHGLWOUQMGQEUQA6X4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x548.google.com (mail-ed1-x548.google.com [IPv6:2a00:1450:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDC67CA07E
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 09:26:20 +0200 (CEST)
Received: by mail-ed1-x548.google.com with SMTP id 4fb4d7f45d1cf-53df95eaebfsf3152295a12.2
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 00:26:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697441180; cv=pass;
        d=google.com; s=arc-20160816;
        b=XCBmUXtc+OAjL6Z+MdikHLP2c1BK485LxRvj5d3p1DltEIJ8KGVDvcnNzqoDwkB9/D
         QtDcDncp078169fZwQDK9jRPODT2vqVLz51q+7HBTIbJisCqCUWTd3UrD9vL/anCxA3x
         MUjdKwBUIgTwOPdU5ILZkpJoG0ml4C6LUw4KX5oHMyamP0Ojjqh4qz6WVKbK8+cmzDQ7
         PeZTYo4i/kRYIBO/s5zTE8yrKOxWXJfq9WUfdJAxCmbe7oNm2eMXlvIwwr9kxugOB0ec
         1wbRIvsMNCVaD/ZsOfavFB7+1FEWnyQx4MCtgJl8nVXVuYZf+c2THFpT531Lr4431Qwg
         qXGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JSY7jmOJsi9to5AVdftORNz/WSaIbDmOmzvvLJazj38=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=ddPEXNjOzNTWSt8ZyY5rI2A5vlgwVl1cOFp/a5VzzZtRPDX7vt3S5hDjODXtnTCAzs
         j0lEN8R2DYuQoLcynkmVFJ8JWeyomPNyKRKG0qPfUUpQ83vwtKQaDMacRzJkhJyYvV5f
         cxkG7JdMsuV6QU5t5FETZHEjWoNZrs626CsUAiOwfAiF09l1kMex51aGDJZJC5Pf+Ctc
         KdpUEw3In8Re+FrVj66E3aTxT+obTxOOdzRB11ZzswLEFel9vHaKVbvct97eFoIrZbnn
         kjcEJNbn3Z/s4jgg4Qke5Y/IAAn/YlV4vZDWTMGuTqhcnfGQ9NSkqEhvMuNF43lJExfL
         6/0w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hPlkyNhd;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697441180; x=1698045980; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JSY7jmOJsi9to5AVdftORNz/WSaIbDmOmzvvLJazj38=;
        b=Dj/ufEo8EJfpRoWuadspdyjHJ7Gys96WLP6lfC3EtTtOXtoqrrmxdTFsQQyhrII3G8
         LHiK5cHuTubBVCIdtSsIYK2BkFImj0MTK5IVGkkfVRrXmvYpaZKtyXOl9tmbI1MEqz5p
         ftlxKdAaMogDkTij5OizX8JEJZ2RsNj7cutb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697441180; x=1698045980;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSY7jmOJsi9to5AVdftORNz/WSaIbDmOmzvvLJazj38=;
        b=L6jWGWDKYuCa/02dJLw2UMXK+bi3zkkxNH0AmdCdaf9ky+Dcyulsw7YqDUOSdRV3v7
         Hj07kI1zesI7KlR0VN5zfBZTmghd7YxeYzxeoHvlDX7lGsg7RnJTS9BaotXCgGQGGNJt
         JMzq5K32DI+UJNiBpGLU2YEyOtvtyL0vfxPBycxhCugPX+yjM6zpVyzHFcSJuT8x4/pk
         vARynvsWJ59jOjrKfKd4bgl3ki8AjD3YBaD/zgI6hSlbOlOEpLzG7/2LTt4Pab0JKRUQ
         VCCBmR0oAGXKDR3emY+J6zxMO5J9lssHSIn2KvdRIY1Kz3H7ndpnw/aV9APOxbM6iDH3
         FZQA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxoNtYqVJdarUVsVndaZJ6dv3+IFdT+s1VQBC5dxBwmvBvJrJy7
	sfDqxh3d5yJnISzGdt8Q+v6BlA==
X-Google-Smtp-Source: AGHT+IFu39sxYDAsYb7Hnl8ncBI4E15pR1A9gYN6zjsv1xogWT06eVHvWH2IbvVlUQCinqUsuIZOoA==
X-Received: by 2002:a05:6402:510a:b0:53e:3584:d394 with SMTP id m10-20020a056402510a00b0053e3584d394mr8258483edd.33.1697441180242;
        Mon, 16 Oct 2023 00:26:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:5022:b0:532:b974:6714 with SMTP id
 p34-20020a056402502200b00532b9746714ls51366eda.0.-pod-prod-04-eu; Mon, 16 Oct
 2023 00:26:19 -0700 (PDT)
X-Received: by 2002:a17:906:3048:b0:9ae:37d9:803e with SMTP id d8-20020a170906304800b009ae37d9803emr28059003ejd.8.1697441178988;
        Mon, 16 Oct 2023 00:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697441178; cv=none;
        d=google.com; s=arc-20160816;
        b=hri/NqNumu4Ox2cYQ2vYwiFWv3pdeRjlLOSi4CAaQAsd3k8VxSczgj0KFyh9tpM+IY
         SQ819MJ+/DcLxNop40oakmAAEzlwjA7DI/utvdTowtUkIURqaq7fPcr2r8JhqWwAkjU3
         2VAr9cUriFqg/sYsaQiW5j2z7i241mqSBEyQkQinUxwMnLRp8abU0LbLoeEccCtoGeUV
         Z86hpD3RfU9b0YSzskDToPcBsIvx99Ek8oT36kaUxf3E01guGUjiqMHuQfPLdZW89svL
         5s9rWpNvsaR28SK61HiGKzXk4YEL9l3eylew9y8VP+sCMYQ+vqeXJ26mNq7Ef+IPl+V0
         1Kig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AKEonLkFv7flAIkFjaxuLAbAMwome4P+GcLKsO3pvRg=;
        fh=qb5W/8HITKC89mNaBbNAGCcLaXj6l7L8f0MvdHCcfUs=;
        b=ipfC1zSuk/+BGsGzMTIatqKyi9oG5kr72+xIWZBwmOE/Pp4IpVARTBBhaILkb38+uJ
         SDhJM8iNxcBr9KTXZPGphpUOlx7KHH9NieJRvFpnc/7PhmpCnAeKt0Cg4tm4TtXHQKrE
         IdFBprkXw8f/+tCscN4PDt7gmmuSTD97BgGZFrpjgaOah9A4Bd4KK56LBDEvzZG9wCBF
         M8XK4NFeE39l2R9a96cWesYTOYHKa4uIQOFWfMFB/t0+UW0V7aq8eMwShZyy2FEok3Uz
         Uuezgc6kd3OekRR9eUrCm9MCZfMYAbJurWOIptwMN5Y8fOhftWDZPgtGbSkBhspWDErN
         G0bQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=hPlkyNhd;
       spf=pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=gmazyland@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id pv18-20020a170907209200b009bfa6eefc84sor668290ejb.4.2023.10.16.00.26.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 16 Oct 2023 00:26:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:906:db08:b0:9bd:bb63:49db with SMTP id xj8-20020a170906db0800b009bdbb6349dbmr7432298ejb.7.1697441178436;
        Mon, 16 Oct 2023 00:26:18 -0700 (PDT)
Received: from sauvignon.fi.muni.cz ([2001:718:801:22c:bdcb:518:be8f:6a76])
        by smtp.gmail.com with ESMTPSA id n25-20020a17090673d900b0099297782aa9sm3399980ejl.49.2023.10.16.00.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 00:26:18 -0700 (PDT)
From: Milan Broz <gmazyland@gmail.com>
To: linux-usb@vger.kernel.org
Cc: usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org,
	stern@rowland.harvard.edu,
	gregkh@linuxfoundation.org,
	oneukum@suse.com,
	Milan Broz <gmazyland@gmail.com>
Subject: [usb-storage] [PATCH 6/7] usb-storage,uas: enable security commands
 for USB-attached storage
Date: Mon, 16 Oct 2023 09:26:03 +0200
Message-ID: <20231016072604.40179-7-gmazyland@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231016072604.40179-1-gmazyland@gmail.com>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
MIME-Version: 1.0
X-Original-Sender: gmazyland@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=hPlkyNhd;       spf=pass
 (google.com: domain of gmazyland@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=gmazyland@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

This patch enables security commands (currently mostly OPAL hardware
encryption) for UAS and usb-storage drivers.

The SCSI layer uses security commands for the initial OPAL support
check (discovery command) and for in-kernel sed-ioctl interface.

Some adapters support these commands, but firmware can be buggy or
implemented incorrectly; the patch also adds a new quirk IGNORE_OPAL
to disable security commands for particular devices.

If adapters do not implement needed commands (ATA-12 pass-thru),
the commands are rejected, and OPAL support remains disabled.
(This is how it already works if OPAL command is sent from userspace
directly, like in sedutils.)

Signed-off-by: Milan Broz <gmazyland@gmail.com>
---
 Documentation/admin-guide/kernel-parameters.txt | 2 ++
 drivers/usb/storage/scsiglue.c                  | 4 ++++
 drivers/usb/storage/uas.c                       | 5 +++++
 drivers/usb/storage/usb.c                       | 5 ++++-
 include/linux/usb_usual.h                       | 2 ++
 5 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 0a1731a0f0ef..e3f072cbb833 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -6885,6 +6885,8 @@
 				y = ALWAYS_SYNC (issue a SYNCHRONIZE_CACHE
 					even if the device claims no cache,
 					not on uas)
+				z = IGNORE_OPAL (the device security commands
+					(OPAL) are broken, do not enable them);
 			Example: quirks=0419:aaf5:rl,0421:0433:rc
 
 	user_debug=	[KNL,ARM]
diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
index c54e9805da53..ef93813a2049 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -209,6 +209,10 @@ static int slave_configure(struct scsi_device *sdev)
 		/* Do not attempt to use WRITE SAME */
 		sdev->no_write_same = 1;
 
+		/* Allow security commands (OPAL) passthrough */
+		if (!(us->fflags & US_FL_IGNORE_OPAL))
+			sdev->security_supported = 1;
+
 		/*
 		 * Some disks return the total number of blocks in response
 		 * to READ CAPACITY rather than the highest block number.
diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 8a1c4449dcc9..8967767d6753 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -865,6 +865,11 @@ static int uas_slave_configure(struct scsi_device *sdev)
 	/* Some disks cannot handle WRITE_SAME */
 	if (devinfo->flags & US_FL_NO_SAME)
 		sdev->no_write_same = 1;
+
+	/* Allow security commands (OPAL) passthrough */
+	if (!(devinfo->flags & US_FL_IGNORE_OPAL))
+		sdev->security_supported = 1;
+
 	/*
 	 * Some disks return the total number of blocks in response
 	 * to READ CAPACITY rather than the highest block number.
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index bb48ab1bd461..3facc80292d7 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -477,7 +477,7 @@ void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
 			US_FL_INITIAL_READ10 | US_FL_WRITE_CACHE |
 			US_FL_NO_ATA_1X | US_FL_NO_REPORT_OPCODES |
 			US_FL_MAX_SECTORS_240 | US_FL_NO_REPORT_LUNS |
-			US_FL_ALWAYS_SYNC);
+			US_FL_ALWAYS_SYNC | US_FL_IGNORE_OPAL);
 
 	p = quirks;
 	while (*p) {
@@ -566,6 +566,9 @@ void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
 		case 'y':
 			f |= US_FL_ALWAYS_SYNC;
 			break;
+		case 'z':
+			f |= US_FL_IGNORE_OPAL;
+			break;
 		/* Ignore unrecognized flag characters */
 		}
 	}
diff --git a/include/linux/usb_usual.h b/include/linux/usb_usual.h
index 712363c7a2e8..0181c94d7d91 100644
--- a/include/linux/usb_usual.h
+++ b/include/linux/usb_usual.h
@@ -88,6 +88,8 @@
 		/* Cannot handle WRITE_SAME */			\
 	US_FLAG(SENSE_AFTER_SYNC, 0x80000000)			\
 		/* Do REQUEST_SENSE after SYNCHRONIZE_CACHE */	\
+	US_FLAG(IGNORE_OPAL, 0x100000000)			\
+		/* Security commands (OPAL) are broken */	\
 
 #define US_FLAG(name, value)	US_FL_##name = value ,
 enum { US_DO_ALL_FLAGS };
-- 
2.42.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20231016072604.40179-7-gmazyland%40gmail.com.
