Return-Path: <usb-storage+bncBD6LRVPZ6YGRBOPT7CXAMGQEG2LIOTY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A2A86A050
	for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 20:36:26 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-68f74a0a3c7sf65877726d6.2
        for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 11:36:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709062585; cv=pass;
        d=google.com; s=arc-20160816;
        b=IpwJ00es3zkBc0WLEhDUlTFR5RgPdCAvGUJ7aIkftyRS2otdZo7sHxT6ri7ge21NAi
         RJbWfKyrVJqZBF82WbJsUn8IZj98jBGELxa99gjawPGbKqzMNlLzJQMyECTLr7iPrrpn
         FES03CdUtGutAfGAizmMt/y9boeLiN/mVQ3XWOzm7k8QqVBye6F+jbcseKVqoAxux9el
         DPQfF/vSn7RvWE5HqibChZU61px4qRCYv5reibvx5eCvsyqyBDxhlPkh1AbDf38XhN+Q
         ZxcaqqZJzAyD4okK3yUeTscS7KWY9c4UhB3Evt8smq6CxCIXALWWBN4zaPrzrQwl11GN
         BUZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=B8Jfhzdgx23Y4S0HyJJcYXEaq6xPwXHh0+24Ky/to7k=;
        fh=yl8VdMQ44KXrFUUhj6J0sASxf5Dreeqv2+agR3nr5MQ=;
        b=NCZffZxf4JG79q/OQOGid5WmrgLyNPewqZhU8aYlUYpfR1yfZElSAIopdlE68RuAz1
         UhKo+68j5tBu3g3TynVEb9i/CwyRLRKp3oj4IQuTVT0eoCfpgVR1EA5xdZRwN0gxKUlq
         5gV9pnYHb8Q6VMHSYYf5MbM8ouzVuIhbUkpVpf8DlgC8MsW2C/LrZmpyEOTWP38wpqBX
         nm86hAzInsaJq0IDc8QkZSysjOsnZFqtBTgAxai1vB3eIUJMyONwitNyWy9+fS5ltJKy
         u3gSVHdWvZ45TVOLdeAcT8FDL96ND6AYwPDbaCEBFiG8BTJm42u8RiMEDbCOpqRlDAXw
         RThA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709062585; x=1709667385; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8Jfhzdgx23Y4S0HyJJcYXEaq6xPwXHh0+24Ky/to7k=;
        b=MjOy0qYuXOIHbCsZc+levDQv3qxTPviabDZFgTILDkD2HNxTaNXFGRQDR79apgBtXO
         z1yxWH3ZW6ZzdoVwdGrqmG0Bz5qA9x4VOvV8mFPy2jzhsPm5kJOpHuhRIHpquo40ZrHA
         /21NyAkZ1Sjz39QaJO1iAZYWVVgBkHaB4+Puk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709062585; x=1709667385;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8Jfhzdgx23Y4S0HyJJcYXEaq6xPwXHh0+24Ky/to7k=;
        b=i0JYPxsyfEsPnLkHxq+SPN2OJunNU2V4tICMg6C/bNmKGL5ec4/U4TEpZO9YG3yAjh
         hsypPgUTHvnqUscKNLtKOuwzndnPoZ+ELIcRP2GmNXg9J5LJuc4qQGwARh/biiA5qKx7
         TWxabpywBMp3lKpO+pkmBmHaOg4l6pfAJccsGeQ0hgtP4st4JKleQBhUvIF+qhQj/D2x
         dhJ/ZzkPuDYdP0Oth7IunfELTEpORu0XA8ILlAIxteqrpWp/NpmK5ZhNKReQdh0l7QfE
         3lFRM4HixXsBbFVZ/F4mh9RnhZitBrPXaKT2qUylgXHiIYWdGRdp3LHUqPQG4XjM4cxk
         ZHTA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW1/IlZ78P6nmTFMI49XHifP9OSccqh9ck14Gbq4tHsKy9algRp4jumo9W98jmzhExZfRBHOXfK4yDzCn01PcxXG7r92Rw9sm/x
X-Gm-Message-State: AOJu0YzCX/l36dJIgMTaf6NZ1/4VS7Bqap4BElOcLVnAhX9tgiTBn2bF
	FMZRuWSV2BVXu4Q7ZzQgkvEWO+OcHCU3wt/NAVliSnC/MzAV+TYNd+UaZagk8SI=
X-Google-Smtp-Source: AGHT+IF1khoTrwrtFPql+Ht6+qoAyu10Bqmq8KMiSiM3nWxUbNjXOPOhIoUjwvpw/ROclOB/5QdxJw==
X-Received: by 2002:a0c:9b19:0:b0:68d:129e:f5c1 with SMTP id b25-20020a0c9b19000000b0068d129ef5c1mr2604900qve.45.1709062585393;
        Tue, 27 Feb 2024 11:36:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:252f:b0:68d:1880:dd2e with SMTP id
 gg15-20020a056214252f00b0068d1880dd2els6503273qvb.2.-pod-prod-02-us; Tue, 27
 Feb 2024 11:36:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXtN1tB7wRgOJEV/aAN20c9X3WDVQayORxRh4+P7u1Y+M3FkmorF3vqQtnqIlf/1qXA7WJBMOc0Mehqvw0erknZxsdh3FsqRu3AvWRiL2rnGbDDppQ=
X-Received: by 2002:a05:6214:1d0b:b0:68f:2d80:c41c with SMTP id e11-20020a0562141d0b00b0068f2d80c41cmr4348153qvd.24.1709062584452;
        Tue, 27 Feb 2024 11:36:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709062584; cv=none;
        d=google.com; s=arc-20160816;
        b=HM33JVKathccz7+YGv86RMQaO/573enYo9Iy6ExC4ZoNTVo4IpqAydIpNoEIW1F0c1
         Ts5jw7kF0ZlUeVHhckjQKU3oT1tKK8RPNOyUazN+8xF/mI1QoYOcIyzjr2xcD8uVwB8C
         EtlCgM/VjGehdu3oD1VUFZ1tI0fGG+CQ0ylHKJoE64zu/Q081OZ20uaf0EocEL3OyjS2
         06aQ0Wv7h9Jiih+AHdUJTmmR1zEIGga1I5ikLoycZboN95YIq2oBsuzFOu322tnzgr0J
         pIe3My1E/8KPdbFYNQ7WfOzOHVQB4/Do8BQgbpYhCBDaiKd+N+nZPqV2tZupxv/raMCR
         PJWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=8J3jWv/IK/ZUC8Qq1FJUE9QHAFro2XUVGGkD49urGRw=;
        fh=7YuYy8foh2ICZGesVqaMJQXrWpB64mX8RiOnx8kjTtw=;
        b=j/YJaxO0pqIOZGr9etg2Zbf0YEN3Y6RbET/BCwb03UwFLFegKL61lWMoWMOiZx/rMc
         FyJUVfUm0wa1+38vraRthWEAQlpTXwvwe2CeSaYkcs7BwhyBc9EMcuYI6E20ajadGN6R
         XiIyvLcYZOdVwtTCAIBXyZttFSpoMwjgebGxdW0BGRLgiZfg+eCZQkY376icNNcGogV5
         TLslpuqh4qOfKN/CNNJXyqcoUEJEsWC9n+Jh7L/l5u2oPWchuy/+WVUdG5cGmK+UtEhY
         wE/Hwq73GpY/SHmk0iYUG/ap24ahLKwyK7hD4rk3RI2ADtVf4h6XhgQB+iwIjra0abaI
         0E8w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id gm13-20020a056214268d00b0068f3a8597f2si7948902qvb.333.2024.02.27.11.36.24
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 27 Feb 2024 11:36:24 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 774067 invoked by uid 1000); 27 Feb 2024 14:36:23 -0500
Date: Tue, 27 Feb 2024 14:36:23 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>
Cc: bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
  tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Message-ID: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
References: <0000000000003eb868061245ba7f@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0000000000003eb868061245ba7f@google.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Mon, Feb 26, 2024 at 01:42:26AM -0800, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.ker..
> git tree:       upstream
> console+strace: https://syzkaller.appspot.com/x/log.txt?x=114e10e4180000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=eff9f3183d0a20dd
> dashboard link: https://syzkaller.appspot.com/bug?extid=28748250ab47a8f04100
> compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1064b372180000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10aca6ac180000
> 
> Downloadable assets:
> disk image: https://storage.googleapis.com/syzbot-assets/c55ca1fdc5ad/disk-f2e367d6.raw.xz
> vmlinux: https://storage.googleapis.com/syzbot-assets/4556a82fb4ed/vmlinux-f2e367d6.xz
> kernel image: https://storage.googleapis.com/syzbot-assets/95338ed9dad1/bzImage-f2e367d6.xz
> 
> The issue was bisected to:
> 
> commit 321da3dc1f3c92a12e3c5da934090d2992a8814c
> Author: Martin K. Petersen <martin.petersen@oracle.com>
> Date:   Tue Feb 13 14:33:06 2024 +0000
> 
>     scsi: sd: usb_storage: uas: Access media prior to querying device properties
> 
> bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=15a3934a180000
> final oops:     https://syzkaller.appspot.com/x/report.txt?x=17a3934a180000
> console output: https://syzkaller.appspot.com/x/log.txt?x=13a3934a180000
> 
> IMPORTANT: if you fix the issue, please add the following tag to the commit:
> Reported-by: syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com
> Fixes: 321da3dc1f3c ("scsi: sd: usb_storage: uas: Access media prior to querying device properties")
> 
> divide error: 0000 [#1] PREEMPT SMP KASAN PTI
> CPU: 0 PID: 5070 Comm: usb-storage Not tainted 6.8.0-rc5-syzkaller-00297-gf2e367d6ad3b #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/25/2024
> RIP: 0010:isd200_scsi_to_ata drivers/usb/storage/isd200.c:1318 [inline]
> RIP: 0010:isd200_ata_command+0x776/0x2380 drivers/usb/storage/isd200.c:1529

#syz test: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ f2e367d6ad3b

Index: usb-devel/drivers/usb/storage/isd200.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/isd200.c
+++ usb-devel/drivers/usb/storage/isd200.c
@@ -1105,7 +1105,7 @@ static void isd200_dump_driveid(struct u
 static int isd200_get_inquiry_data( struct us_data *us )
 {
 	struct isd200_info *info = (struct isd200_info *)us->extra;
-	int retStatus = ISD200_GOOD;
+	int retStatus;
 	u16 *id = info->id;
 
 	usb_stor_dbg(us, "Entering isd200_get_inquiry_data\n");
@@ -1137,6 +1137,13 @@ static int isd200_get_inquiry_data( stru
 				isd200_fix_driveid(id);
 				isd200_dump_driveid(us, id);
 
+				/* Prevent division by 0 in isd200_scsi_to_ata() */
+				if (id[ATA_ID_HEADS] == 0 || id[ATA_ID_SECTORS] == 0) {
+					usb_stor_dbg(us, "   Invalid ATA Identify data\n");
+					retStatus = ISD200_ERROR;
+					goto Done;
+				}
+
 				memset(&info->InquiryData, 0, sizeof(info->InquiryData));
 
 				/* Standard IDE interface only supports disks */
@@ -1202,6 +1209,7 @@ static int isd200_get_inquiry_data( stru
 		}
 	}
 
+ Done:
 	usb_stor_dbg(us, "Leaving isd200_get_inquiry_data %08X\n", retStatus);
 
 	return(retStatus);
@@ -1481,22 +1489,27 @@ static int isd200_init_info(struct us_da
 
 static int isd200_Initialization(struct us_data *us)
 {
+	int rc = 0;
+
 	usb_stor_dbg(us, "ISD200 Initialization...\n");
 
 	/* Initialize ISD200 info struct */
 
-	if (isd200_init_info(us) == ISD200_ERROR) {
+	if (isd200_init_info(us) < 0) {
 		usb_stor_dbg(us, "ERROR Initializing ISD200 Info struct\n");
+		rc = -ENOMEM;
 	} else {
 		/* Get device specific data */
 
-		if (isd200_get_inquiry_data(us) != ISD200_GOOD)
+		if (isd200_get_inquiry_data(us) != ISD200_GOOD) {
 			usb_stor_dbg(us, "ISD200 Initialization Failure\n");
-		else
+			rc = -EINVAL;
+		} else {
 			usb_stor_dbg(us, "ISD200 Initialization complete\n");
+		}
 	}
 
-	return 0;
+	return rc;
 }
 
 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8fe3f46c-4ee5-4597-bf2d-12a5d634a264%40rowland.harvard.edu.
