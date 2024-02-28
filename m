Return-Path: <usb-storage+bncBD6LRVPZ6YGRB2UN72XAMGQEQYPUMKY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA9186B7FA
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 20:18:03 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-68f47e46658sf592286d6.3
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 11:18:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709147882; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZEZp/ajDTOwbaqE12h9YpKiNhd+Uxen2R8OeO0QtIsoS+HWgqO2AHlqELA2PcoXtnc
         FjoGjhcrab/fFIwiemJDNuKFStDgxDYW/Y9W++9s54S5HxEJJQ2UXYLt2BaQCpF/fi43
         5TfH8BPRqpiV00WggeMbaBnB3ezLE/Nzal4WjRsjmTsJZjGxc2LkH44KAY/b85TiC1uh
         TZceyRc3FWm+aeQCbdvQIYHq/mHVAaWsgopRnbJDrpWuVCzuhpjUjlgRJumyLedWrARI
         uf1I2VhJHRMLdJsy0OSEyBR8ZYgj3YjRlQQSNNZfVfifEyimUDi//13OAb/hN1oa0dhQ
         MSEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NJVns73h+bRnGG84r6vk4y/ypqU9q1CuNSp0YkutkBg=;
        fh=dFsnxtyswaUKAm0SSuaN9uTHm3uQitCr6vmIN1rR7OQ=;
        b=KuI2tLXwN/wv7kna4WV1cmbcuCVOKMkJYMGBV99RXpsrDvYjDUu97AD/06NdhlHyjG
         LkXy3mWE1/4LdVJF3vukPR0tZ/fUayTldCGQ2BAikHjhPBZZbXx2gaSJOE1l377KBVAq
         77+W9c41zM/tJXIdsw87qARiw4aQ9Pp6SFDR/5QRFNgabCSQ1eGeUgai3lwLIxHA7LF1
         BIXpMEx1q0mkL03G/xkioG2RL7TWa66dcqRq/cArrxheHlXx+clm0/qCdaAAVXWjxnpX
         xDtBwKL7Aj+t4uJnfTN2gKp4b8vfJx7LrUbZUJr7HcaEwSwhxe5y2EqAAgfOlgo8HZX5
         j2Kg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709147882; x=1709752682; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NJVns73h+bRnGG84r6vk4y/ypqU9q1CuNSp0YkutkBg=;
        b=Oyiujl+/xkfFuDyl6sj8HEFu5/kAzOpRhs6gcG8hPOngr6kGF3mVaetuqlwA5i6m4V
         vyxlnJtMA0pJg8yPijcXTICsnw7HE8tCRq9Ezb9bHmfF4acr/wwA7sDDsKzyM/emdDvf
         nb0+dsLYGI14M34+HrfsG/iS/ZkMKof9uSND0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709147882; x=1709752682;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NJVns73h+bRnGG84r6vk4y/ypqU9q1CuNSp0YkutkBg=;
        b=gUrFC0RmH0G6/yhXyYBDnbiiyAhIPliJqr0f8P3z3SvnyCojeOAZom0xjVFwKf8v+k
         2ldnFUjbjcZ0vfeKwHZ2BhMVPidzykt+VT26ckzkWns42x2V+YbX7paPkLSkITYAUej0
         T8TUKHd/LZL7u9n/Oq1TnN08xK8RUsCPJ4zZEbecCN8RCm/RAmpkukLSDFWCIzWypPln
         +K/DcaXcejIXPxt/oDC43zBYfBRu72ssg04d4tqqd5jsW3fcuclon/bmMBx1nMH5krcO
         nYL6aHBIA0h9zr8zJxEYg7u9f40XlKTZo5FQcqDGslBIi+IHou2scfSbwStUavGWxB4j
         rC/A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW0VsVvdp0Xb97u0928Mp/GYsVj/2z435l5XsY2/FG7RBFFvw41p3jCOVXlnEVEENRmsWoJYf5MenjRBKOGbFUPr/Bgb9kQ8iUF
X-Gm-Message-State: AOJu0YynFCI8/wqbrgwdxY8GE4dJ9n+tEWQ6Nhvzcwp5gVkDgehnc6Ed
	KFGmnrMC7XEsyd8wI079uRTqi2EDk1VwW4WFseEAWqf5LI8Q2r9rJ69ZwlRpuEo=
X-Google-Smtp-Source: AGHT+IH7g54t/scNWdKGuNZ234NuwBEpsR3JG30zxqlVpQsTkIX80059Cm0sJcxHOtMX+1Pc3LxfBA==
X-Received: by 2002:a05:6214:2b41:b0:68f:e924:abf9 with SMTP id jy1-20020a0562142b4100b0068fe924abf9mr14761qvb.14.1709147882395;
        Wed, 28 Feb 2024 11:18:02 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:f64:b0:68f:9233:a3d8 with SMTP id
 iy4-20020a0562140f6400b0068f9233a3d8ls167939qvb.0.-pod-prod-01-us; Wed, 28
 Feb 2024 11:18:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXjrH2OIqcBQnZK3yOLw8owffb97G32KJ8jxttCW7PKpHsZgwV63mrZ1EjwZbXso50KX77NOA55G9bmABtG91sicREHfeUQ2GpF/J/n00qQ4womTeM=
X-Received: by 2002:ad4:5d4e:0:b0:68f:ee7b:6932 with SMTP id jk14-20020ad45d4e000000b0068fee7b6932mr7486806qvb.53.1709147881493;
        Wed, 28 Feb 2024 11:18:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709147881; cv=none;
        d=google.com; s=arc-20160816;
        b=Q5VQ/eHwODK9Wf+zXMpa7t5ekgwX/9qVaVUfgdAtwfll94KhZNdqnH+DT3bHDrjMQN
         X6SSR9mw7twefpRCigcmWl9b1CnxNl+IrZeuglptd9G0Q62i4dbXOxBQwTGPHcA9/nvT
         S3B9IMedTcRsKCOZeQCSZ+O8Q5NMtU0pAZYDcx7lfYpAfaU9SpC9G6oEHl8B5lgWimoj
         o3tiSOOhBZ2QkM32EsDubyaM4m2jHrwzQZwkyxz8eoJgToueyfUaaMT4n36IADzBty3y
         vLsIdGkdmMZ/Z1+oGvdKH+uviciql/0deXLp3pwan0yNKYInr+aSF7AgTbMN9oIB7bpd
         nl8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Xa3SVJmK/GgRgAyMbBWeZMJN/MYlXw7D4mN7KBcftlo=;
        fh=QLcpBc4YWpil2uu0+EzDygsjOSd1vnYPMVXMe0jLnEY=;
        b=Owd97YNXepyvGktZVgNNcmNBMNSoY1ZMKdjwXS2oSCa5QTviXQTU6r14DQw9ZE6iua
         oCJpnVDehvaYBXziTUCEHe4uOh6a0K+dTTMT54VeXsE0haLu2BS/VDCTe6lrbPPB0aep
         Wg/+Vw9nnNuygAtS8spuadTVg8lv3uewxdTPL+kNrPLVu+bq7cUaaSkhAeeXnFfBVglp
         m5KsdIqm8QOLO5GbrldAK6Kj0PzbtoeBNPyTezcXmJCw/RfyiHhvDVKaUuzwMhn73BZ5
         h5t3HfEyStCZupImOLH36+3YKKCR5AE23qBt4S6FOoLCbnxBjmB7Y2ITOQwjXc+LASFT
         eS8g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id iy3-20020a0562140f6300b0068cb7c10125si190399qvb.141.2024.02.28.11.18.01
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 28 Feb 2024 11:18:01 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 803099 invoked by uid 1000); 28 Feb 2024 14:18:00 -0500
Date: Wed, 28 Feb 2024 14:18:00 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Aleksandr Nogikh <nogikh@google.com>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
  bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
  tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Message-ID: <380909e4-6e0a-402f-b3ac-de07e520c910@rowland.harvard.edu>
References: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
 <0000000000008b026406126a4bbe@google.com>
 <13add23d-af18-4f84-9f1a-043932a9712b@rowland.harvard.edu>
 <CANp29Y4DUvL5zsnqQmhPGkbc=EN6UjFrWF9EZGE5U_=0C9+1Nw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANp29Y4DUvL5zsnqQmhPGkbc=EN6UjFrWF9EZGE5U_=0C9+1Nw@mail.gmail.com>
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

On Wed, Feb 28, 2024 at 05:52:50PM +0100, Aleksandr Nogikh wrote:
> Hi Alan,
> 
> Please try it once more with the full commit hash.

Thanks for the advice.  Are you a good person to complain to about the 
difference between what syzbot provides and what it will accept?  This 
bug report states

HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.ker..
git tree:       upstream

But if I specify "upstream" as the git tree on a syz test request, it 
doesn't accept it.  Now you're suggesting that if I put f2e367d6ad3b as 
the commit ID, it won't accept it.

There's probably already a bugfix request for this, but I'd like to push 
on it some more.  Syzbot's output should be acceptable as its input!

Okay, here goes with the full commit ID...

Alan Stern

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

#syz test: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ f2e367d6ad3bdc527c2b14e759c2f010d6b2b7a1
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/380909e4-6e0a-402f-b3ac-de07e520c910%40rowland.harvard.edu.
