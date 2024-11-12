Return-Path: <usb-storage+bncBDAOJ6534YNBBEVEZ24QMGQEIDVV5OI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5849C5F20
	for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 18:36:25 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-460e1786265sf107347251cf.2
        for <lists+usb-storage@lfdr.de>; Tue, 12 Nov 2024 09:36:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731432978; cv=pass;
        d=google.com; s=arc-20240605;
        b=K3FXhtzLqEr5fTZ65z3TJ5vbu54tRlzUzW9+7sm1cw2M59hjR2gqoNCpeRTJBqDX7E
         0GZk/nk6n/ETOloNfIOZx/OIVnILzA9FPu3NOzTKplQRzoQWvJAY50oYwFbnDEOYM4EL
         /QgSvgXLtUrF/XS71cJlXcjTMTyvY/vKoWrQOhxUr/qLU+ezGJEP0uolnelx38rgz1aK
         AY9TCu5bD3h3BpETkMOPUAhmFv3OcYKPdP91aizaRFndZFari/E92+VW+1caPufZ7zDc
         PtIRJy2AM9hU2GYAnGifp2OAlurFhfGa1g2urIMXbGRD93jfqbk2Nj3e7RsNlxdb1o6t
         lh2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WiulcRXYV5iQ0yDtCwdYeFjSOZab32ZOqN5XBPTyrPI=;
        fh=mFl1pAUDoGIXkMLjaBBCEKwVX8ZKTBFzembEW2icy+s=;
        b=P7NQ0Gi/rqv9RH/ZZV0L5x+VSHZrx+T9WVfn27QTemaXOevZLZHFqJXw92oJqVkWyx
         6f6tWVbB/Cc75MBbu1waj50AqcHEnGKbc75WW40JE5rlr12M4D62m1TjMjYpX60As3lC
         4HV5rSar89JdHLNnTvi6Rsa8tRouxZM4D4F+9dgCgZegk5Td7GuqW/wxb5E6kfRgvWUK
         lq5E0JEF7+TX7cZc5D6oeuLifKSyte9JNg5rX0uEK3s4sXlD8DmO/NZgoLnO8N9P5qDM
         9eQuWUF8/eCbehhGaIFVnwcsaUFOpKZtV6GTPYF88PGNzrdq2J5bI2dtEPm3z4Tp85fp
         w4Sw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=NsKpldY1;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1731432978; x=1732037778; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WiulcRXYV5iQ0yDtCwdYeFjSOZab32ZOqN5XBPTyrPI=;
        b=Kkt4k1lCOgIj93RYg1iQMro+71kcpkl6Y0XEgnVEgxmxt3DJ/gqvvPV1tl1AGISluJ
         /AzeliExABY+/JzRTHT1AqMLCa9zHqr38qnzA0+kTQps6KFf/qcmFItGSK+zlZVAa5sj
         jAPhK1Fi4iG8Xa2FhhjsuHVBIi+OuqC7I7FDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432978; x=1732037778;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WiulcRXYV5iQ0yDtCwdYeFjSOZab32ZOqN5XBPTyrPI=;
        b=FIrlg7RQk4kW3lycq1HvtWEZdzi8SVLkmvsv21ONlarzf6m+qUNg4+sJJBxLtn+LGH
         jn3qP2KiYjo4p3CAQZe1eFpKQv3Q93qjW1hYIzIElgryXyhzQfBXDv2K8nVRotepoC5z
         +ysPMIImePNq5s2dxxQpzDQATPE7iaueWS94wArhRLLqX51pDzHO8krVl52f1lgJw54x
         r04SZH0bv37l1+4RzL9fJGrS+15L9uNllawIKB9Us5n3ihzAXeRly4+hk6iHjtcVsfJ+
         N8mfCmNK56tSj2QO02U4/DM3eJlgtlCOdfo0J0WIneDPjZbfTgRnZQjj2uze79Gg3Wkt
         7QNQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUBRjSMnF+DaZjKZG+b6jvZ8ziUKPfZW5ohxwWMKEuo+7Fkq2tImB/wYy0fccNi7/xAj6EtgQ==@lfdr.de
X-Gm-Message-State: AOJu0YyKh7P98sFNZsNP79rcQhpPO6yb3wd2S+nK910EUo3vZPmOL8Bn
	AtRxIlbHsJAF0oLgF62B6ydKj6C395Q3KXoFKpwgVSfUPDrn3t1DsM5hayCk8G0=
X-Google-Smtp-Source: AGHT+IGHbhax5Z1avRddFMsFaTNBIUCcK1p97jrwYzku4gHCVNzfFmPlB7Zts1W3YCtcN3VspeHchg==
X-Received: by 2002:a05:6214:4a89:b0:6d3:556c:1002 with SMTP id 6a1803df08f44-6d39e1ea64amr232690646d6.43.1731432978411;
        Tue, 12 Nov 2024 09:36:18 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5743:0:b0:6cb:7ce9:f52c with SMTP id 6a1803df08f44-6d3933d5390ls95175886d6.0.-pod-prod-07-us;
 Tue, 12 Nov 2024 09:36:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXbkDxI/4IQZdyW33UPyIImbONG9Wxc+1ZvKeQlLtfSq1ttXO2JKCROz4hXUNa63w76bwcOov99yAOcPw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:53c9:b0:6cb:600f:568b with SMTP id 6a1803df08f44-6d39e1554c4mr230382626d6.8.1731432977920;
        Tue, 12 Nov 2024 09:36:17 -0800 (PST)
Received: by 2002:a05:620a:134c:b0:7b1:452e:2a50 with SMTP id af79cd13be357-7b34c45cf9ams85a;
        Tue, 12 Nov 2024 07:58:49 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV8ndKWSKcN6aWbeIcHbSQ0Tb6t5J4mqw1KlWA5eNMTA5pkBcKNoA84Z8aoKuxfnvWqfUXqAe6m4XoHeg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:600c:3c99:b0:42c:ba83:3f00 with SMTP id 5b1f17b1804b1-432b74febf4mr186538795e9.1.1731427127713;
        Tue, 12 Nov 2024 07:58:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731427127; cv=none;
        d=google.com; s=arc-20240605;
        b=L7cbzgV7+br7XN3RDPS2Uf1+e6zU3lfOsr7pSlT4C1K0Hb1vUQ2kL3Iwo/g0zhtOLC
         UXS09hmXXOoutcay8QQOH26jXvuWp6b9N+sIXK9GeyalI7XgSWV4l43D3LqILR8kg0Ql
         nqkg7RAEPFnU+fFynNASsw2boPwJ9uWLYL0IOveWcQxgEci0PvoRvSoVCY+dyXtjiHPs
         zwnMJA++dJdYM6aV3R2GaawQao1EZdDB3b4IpIHKiLb547kKMYh0WWnC27iEpIzX4oUK
         o+8TUnjIO0xfhcQQTK6OEDFDWhdFsLGnOZQlLvUca9ejnHxh6pMgPzhedDew/eZ9pE6P
         xRPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DPqm3+0wFCwqO/jzcOFah7stBZqw75yUdyOGq2gHnGA=;
        fh=I6RAVg/tMfOmap0GFDZ+PMBzLYqBShe/u/xL/4HRKiM=;
        b=ahGoLygaBUngxwM6McevYr0RW2J7kjb0kAJ0mXn8szQmH4Pgq++N+5tSRpjaJcA0vm
         TLQAydBfDngOSHjJ4kp9txLS86ntt5CxX+3dfrSMSspqkJbYUwrYrJbvdIGilT1ymZi2
         Fws4O4C93V3oOZbK6360dOBY5tW928fAFU5Mb4/PDPuoGzSFpOGelgbOctm4WbO7wfTE
         8btT8bfD+jXaS27KO1hVAP0cAaRWokBWwfB6iXqboYh1lctxJKWFAZmKK27ubBx069Xy
         AfYfCFu1DrBENxuxbPEUnNVC8UA3Vyq+ke99LyhhRm5TkQMiAGb/t0NQ5Uq30yIzyCKR
         E9BA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=NsKpldY1;
       spf=pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=snovitoll@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 5b1f17b1804b1-432b0b27a3asor62803705e9.5.2024.11.12.07.58.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 12 Nov 2024 07:58:47 -0800 (PST)
Received-SPF: pass (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUnQbSNnx1hI984YB2WCwFiHPBDM9rCPLzFNQr4KAaJnfh6Y1eZjhaK7/48nmWZ1M6kY0xphRQTUl/4Sw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6000:1564:b0:37d:4376:6e1d with SMTP id ffacd0b85a97d-381f1884855mr18317807f8f.41.1731427127167;
        Tue, 12 Nov 2024 07:58:47 -0800 (PST)
Received: from work.. (2.133.25.254.dynamic.telecom.kz. [2.133.25.254])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381edc1104asm15991136f8f.88.2024.11.12.07.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2024 07:58:46 -0800 (PST)
From: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
To: gregkh@linuxfoundation.org,
	andreyknvl@gmail.com,
	b-liu@ti.com,
	johan@kernel.org,
	oneukum@suse.com,
	stern@rowland.harvard.edu
Cc: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	snovitoll@gmail.com,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH v2 8/8] drivers/usb/storage: refactor min with min_t
Date: Tue, 12 Nov 2024 20:58:17 +0500
Message-Id: <20241112155817.3512577-9-snovitoll@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112155817.3512577-1-snovitoll@gmail.com>
References: <2024111251-spill-hatchback-72da@gregkh>
 <20241112155817.3512577-1-snovitoll@gmail.com>
MIME-Version: 1.0
X-Original-Sender: snovitoll@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=NsKpldY1;       spf=pass
 (google.com: domain of snovitoll@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=snovitoll@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Ensure type safety by using min_t() instead of casted min().

Signed-off-by: Sabyrzhan Tasbolatov <snovitoll@gmail.com>
---
 drivers/usb/storage/sddr09.c | 4 ++--
 drivers/usb/storage/sddr55.c | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/storage/sddr09.c b/drivers/usb/storage/sddr09.c
index 03d1b9c69ea1..30ee76cfef05 100644
--- a/drivers/usb/storage/sddr09.c
+++ b/drivers/usb/storage/sddr09.c
@@ -752,7 +752,7 @@ sddr09_read_data(struct us_data *us,
 	// a bounce buffer and move the data a piece at a time between the
 	// bounce buffer and the actual transfer buffer.
 
-	len = min(sectors, (unsigned int) info->blocksize) * info->pagesize;
+	len = min_t(unsigned int, sectors, info->blocksize) * info->pagesize;
 	buffer = kmalloc(len, GFP_NOIO);
 	if (!buffer)
 		return -ENOMEM;
@@ -997,7 +997,7 @@ sddr09_write_data(struct us_data *us,
 	 * at a time between the bounce buffer and the actual transfer buffer.
 	 */
 
-	len = min(sectors, (unsigned int) info->blocksize) * info->pagesize;
+	len = min_t(unsigned int, sectors, info->blocksize) * info->pagesize;
 	buffer = kmalloc(len, GFP_NOIO);
 	if (!buffer) {
 		kfree(blockbuffer);
diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
index b8227478a7ad..a37fc505c57f 100644
--- a/drivers/usb/storage/sddr55.c
+++ b/drivers/usb/storage/sddr55.c
@@ -206,7 +206,7 @@ static int sddr55_read_data(struct us_data *us,
 	// a bounce buffer and move the data a piece at a time between the
 	// bounce buffer and the actual transfer buffer.
 
-	len = min((unsigned int) sectors, (unsigned int) info->blocksize >>
+	len = min_t(unsigned int, sectors, info->blocksize >>
 			info->smallpageshift) * PAGESIZE;
 	buffer = kmalloc(len, GFP_NOIO);
 	if (buffer == NULL)
@@ -224,7 +224,7 @@ static int sddr55_read_data(struct us_data *us,
 
 		// Read as many sectors as possible in this block
 
-		pages = min((unsigned int) sectors << info->smallpageshift,
+		pages = min_t(unsigned int, sectors << info->smallpageshift,
 				info->blocksize - page);
 		len = pages << info->pageshift;
 
@@ -333,7 +333,7 @@ static int sddr55_write_data(struct us_data *us,
 	// a bounce buffer and move the data a piece at a time between the
 	// bounce buffer and the actual transfer buffer.
 
-	len = min((unsigned int) sectors, (unsigned int) info->blocksize >>
+	len = min_t(unsigned int, sectors, info->blocksize >>
 			info->smallpageshift) * PAGESIZE;
 	buffer = kmalloc(len, GFP_NOIO);
 	if (buffer == NULL)
@@ -351,7 +351,7 @@ static int sddr55_write_data(struct us_data *us,
 
 		// Write as many sectors as possible in this block
 
-		pages = min((unsigned int) sectors << info->smallpageshift,
+		pages = min_t(unsigned int, sectors << info->smallpageshift,
 				info->blocksize - page);
 		len = pages << info->pageshift;
 
-- 
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20241112155817.3512577-9-snovitoll%40gmail.com.
