Return-Path: <usb-storage+bncBD6LRVPZ6YGRBWNW7WXAMGQEZV4RFKA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id 79ED586B454
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 17:12:10 +0100 (CET)
Received: by mail-qk1-x746.google.com with SMTP id af79cd13be357-7876cf4554esf653502385a.3
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 08:12:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709136729; cv=pass;
        d=google.com; s=arc-20160816;
        b=fFGuG5k20ETOGzARoWh0PjwcgDLNt2SjsQG0blq6D1Qk6KqR1M1EaXKkHxpQrJBQ06
         VvBJUw51czIiHW7nyXYWnqLbCHXcWaEeVYmZZnWY7sxKHNoWh11B1YVLfPdDXWTKY71g
         lPFCyFjc3zmbSYl15BPPcI75C/PUXjlchSXZ7zqUE4OR1QMKsZm1ittqsnWn9JOSU3VY
         gZTz9ABLuhm0gMo03137hHs0hRwu9+Ylsx3tUEtthLgHP/JfbD1YX+6z4cr4gHJawFS0
         UBj67GbtpuVvSkTLasA00529FYvrun+XcvMdyRmkMKB8OUKbmVCjVp61B9MnrDXmD/Pp
         O/gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iZlnOYcGLqQICUYg6WzgqWj9WPFZf/lIwxncVgRCMgY=;
        fh=rw2B1o6/fgCJ0dbJqgVUpOoMV3v+0aug1a9l4ajU+qg=;
        b=esJYMqVk2oBAkDeC1wVBtb19ivZdYPNnxp0Ss6uy5Qw2dDJZo/+6pV2X/E/pIWj6Xd
         GwYPWvo+03Fsqaog9wqj2Ahg45epYftighcPT79OxQ250/keiMPhYDF5wd5t1BUuFIf/
         IGbNJ3n2MwMSasrwDjKG4HwObygKC6bstn9Nu69TV7YmaNHzbJeBG3cMm/AEDTOPl9Gn
         fJUbmTwEWyXGOxleet3LSNQNLIVNJ9ordtKKVXTbXUhBO0rXQl75yRCiVb2SEou6v5XK
         jUYDHRCGrtrSmSwZNYz09YhRDBS0ajRpenqH6tmi/30b5B1Gk8WrBbAvpT4hgV89nGL8
         izkQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709136729; x=1709741529; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iZlnOYcGLqQICUYg6WzgqWj9WPFZf/lIwxncVgRCMgY=;
        b=TklMuDEAtpaeUEVArU26CjDYHwxr0EWTGvflLoTVuDCZTy88ywCHivADJpTRUV8SDP
         8lkHhezUuFCGKQrk4p26LzckGCQvESHnfR+koZ+IZ4I8WkOACStMRHUJse1X9TkAwDh8
         CqTZr4EpUXq4FNiqgllvu+ZoM0xD+7WJ3ORD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709136729; x=1709741529;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iZlnOYcGLqQICUYg6WzgqWj9WPFZf/lIwxncVgRCMgY=;
        b=FazHnWHSMJGNOCv3E5Qm+kswxpkbfrUnsRquJDx82/acDSUT8TgM90G6EYE86sCw4P
         KZluLs8Qo2tqMbJO6c9ZsD1KIxZEDgdV1yo+iBum52d85vGfvRa6OWjpAzPHWGp2XQgO
         QzmG0S1MwZYocyF/R7fQinl9W73oY8e4gI8t/zmah0tQjApzaIO5d1++BQW05VfYACu2
         XTMm3h6DToh8R9XxfeNdIY0YYzZ/MxBMkQUW3udJ4i8yBRUG/OChexREONe4Xff/wk+I
         +f/zx85ScZxbJZLVSamdyTIfezcjEewB+FKm/j3siA+Sn4TKZ+YTh0vethXyWtnGqD+Z
         0ECg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVOEEafFR826n4AEuHxUChHBXbEMZFqrJELv+wxAEs/yTBcOJ/Lotn1pE4pDSpNRS2yjDTeDdPJXJfbZBkqcnxpWqiAHUnK5A/E
X-Gm-Message-State: AOJu0YwYGWACe1oClYd65JkDK38U28XFa9wvpl95ytjEOEc234aoN98z
	YdPbYSXSq84Px7Jh0naMxq+KMfetplRiZGTZ25T8+exkms4afw0NnL/g2CCI7hQ=
X-Google-Smtp-Source: AGHT+IET/JXk6pZ8Dq4f061lPKV3dM2zXwQqZ7NQXrv3uXLzPkOw7gZETPqZLAONARC3dnFzfj0LoA==
X-Received: by 2002:a05:6214:2525:b0:68f:4d6b:d123 with SMTP id gg5-20020a056214252500b0068f4d6bd123mr7214077qvb.18.1709136729244;
        Wed, 28 Feb 2024 08:12:09 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5c6d:0:b0:68e:eb32:903b with SMTP id i13-20020ad45c6d000000b0068eeb32903bls7055967qvh.1.-pod-prod-02-us;
 Wed, 28 Feb 2024 08:12:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUpnQ8tL3QDE4E2NwaiOuy4wi456ugs5B6AHT2bK5lnglrtgWPIfY5kiQY07tszoNCvBfMw0/2mp/fnmrVcWKqpiNOaXe4Xq8mr95ZXcGHQyQHb4CI=
X-Received: by 2002:a0c:9d49:0:b0:68f:3f89:b302 with SMTP id n9-20020a0c9d49000000b0068f3f89b302mr5282406qvf.0.1709136726795;
        Wed, 28 Feb 2024 08:12:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709136726; cv=none;
        d=google.com; s=arc-20160816;
        b=hbNGZRefJeSxQt+Mb1q8lyAFJ1/T85LpTOjx8hGJVUL6xLoPsuniUWPIDqcqONIwl5
         tcZoLIBrldRsr4z7uFk0tP0m99o7+TcsVL6ta1NxxKLlWkfX5dcQfGz9u0gffYV5pera
         wlfJpyVQBiunisTe/i9HJ+xazYXdTpzl5em6dcJRIwEMOLkeqDZhKYEkGy8IY/JVocU9
         26ueX3xZI56hAD+iy7PwLTVTO/aMojpmaGne0eRWz8sASVW7IlADRqL3NjhNASfMrTAP
         CKXDLX3yZvhJjTcZTm/kAnof5reM2ercqXSa6y94Qgfx21K9CWtrMg1C0dIMUXjbymKp
         3W4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=poGUx2qZOfCi41Ogk+XWXo3aj1qHgkTWm4teAktTxrI=;
        fh=7YuYy8foh2ICZGesVqaMJQXrWpB64mX8RiOnx8kjTtw=;
        b=vej+Di6bn6VH08AFhuUkSmrQt1AguVPbh51sSmaosbhEFf+JWlFVrqkamGTESRHBzj
         4na+lhFvKUArYSVrMFXUYysf6JcL6v4PmJ39Rh3Xg3hQBGdIk2YK3mgtIjEXNdShwuFt
         9cKX6QWUWHnB+JCOHZe1GeYF/EYzyoUM3vhyJ1u26Gh7JaG9msBGQmf7hTFbfJbtZORB
         b0ktw6ZK8/QculkhCGNSeG1LuPYRSGHZw80z1+T44l4uZTjbC+SpAS26QLLTE3+drftU
         /SvIRkpAA517aEzUWnrkT6swwFqHRUNB4J3MN2WqRerI4yEgiw6U8e1W/+nC9pcGO/aD
         KwGQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id jk14-20020ad45d4e000000b0068f756764cbsi10384917qvb.281.2024.02.28.08.12.06
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 28 Feb 2024 08:12:06 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 797627 invoked by uid 1000); 28 Feb 2024 11:12:06 -0500
Date: Wed, 28 Feb 2024 11:12:06 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>
Cc: bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
  tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Message-ID: <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
References: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
 <0000000000008b026406126a4bbe@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0000000000008b026406126a4bbe@google.com>
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

On Tue, Feb 27, 2024 at 09:20:03PM -0800, syzbot wrote:
> Hello,
> 
> syzbot tried to test the proposed patch but the build/boot failed:
> 
> failed to checkout kernel repo https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ on commit f2e367d6ad3b: failed to run ["git" "fetch" "--force" "--tags" "7b440d1b40dd93ea98b5af6bba55ffca63425216" "f2e367d6ad3b"]: exit status 128
> fatal: couldn't find remote ref f2e367d6ad3b

I'm going to guess this was a temporary failure and try again.  If that 
wasn't the case, something is seriously wrong somewhere.  I had no 
trouble accessing that commit using the git.kernel.org web interface.

Alan Stern

On Mon, Feb 26, 2024 at 01:42:26AM -0800, syzbot wrote:
> Hello,
> 
> syzbot found the following issue on:
> 
> HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.ker..
> git tree:       upstream

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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/13add23d-af18-4f84-9f1a-043932a9712b%40rowland.harvard.edu.
