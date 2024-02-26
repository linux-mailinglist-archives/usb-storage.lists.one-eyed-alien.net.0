Return-Path: <usb-storage+bncBD6LRVPZ6YGRBL5J6OXAMGQE4NIXVCI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 720B2867F9E
	for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 19:13:04 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6901234f078sf8228776d6.0
        for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 10:13:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708971183; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zx6GrkYMSdTT7d/qDhkW4/4YbzegCCSMy+2pP/rEjuT382QoelKIV7CFR0rmNodTQs
         gIpMHHlRktfb/7xeSq7NiX3qEXghbvXmIcdZTBM7O+rVZnpBEl4RpduThY1a//E+sye9
         ml8mbHJI2ydAWGdDvZOr0TOyDysCz3FdY1/MGGdRUrgLZsNJDEDK8B18cFNQa1Gwp8h8
         Aj03s9S7JhSkK7eGADW4oBp0rU0BsoVWH2Nh9HojRlGlHhDTHp9E824xiKotmkBey/aK
         zk/M2NtMRaJq/UZgFfwAPz2UUIMrXSBmSMV03YScSg9a9LtmknrryIiWt0kxojWIcpSC
         SdeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=c7QdQ8OFXKhdWi4mG03uh/I3q7C0AKXqBulq1IzGvl8=;
        fh=hj2V0AcN2wvBML2+1+0u5OLrQ0lVK0FMK8iAVoQt4To=;
        b=WYL9culSfVcfxVMamuaNv4o1n7FcPhcXp69qRiV8VVGi/VxoLjiP2XjHb0NnmKqGSs
         7MafbL8GJ4sY+EOxgcqa3PNsbphPfEX1AcsGGAmjmi/B6CkrcVUMnJU/hi/dkcht8QuG
         lRztG1tHi29VFpreIA8Opbb4ZwfsrmevhDEsz0gQOgiEZknskd9SkZYsXFYSVbjcl/4D
         ICtvKCajGvpJeAnl9hNZRqfhZIs9WIqqBeGvc1U85Ib9gDOmfOwDOoyGCZhaLD4ZegAi
         jOHEAUchvkgE9kEH7aj1Ti5j2Jfy0TVUgj6dgDTdsWOpAN9WJKrshMuUToPRtkUD7YYF
         UsqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708971183; x=1709575983; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7QdQ8OFXKhdWi4mG03uh/I3q7C0AKXqBulq1IzGvl8=;
        b=ivpoP1vA0eTguS/QOlOA4/sZpa3xkf4BINiFQAPHtEbutqgxx4DXzRmuRl+WcdiXl7
         SLfLlQQj3jbQ3VNxBVh0KQ+Lq4oRC0gpPKiYsfTypyEFT6udInBwEiGxAcMsIWJkHtV0
         ojceUzbwJ4SpC+srarGhonhHTFh/i1zrEtn/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708971183; x=1709575983;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7QdQ8OFXKhdWi4mG03uh/I3q7C0AKXqBulq1IzGvl8=;
        b=AjPf54oxqm7sTSEV5XjgvOn2UG7r0I/1ZAnM3Uqk5eseEzP3D4jUbA5St7jYfbwGYR
         K6P9Okw5Zwk0tp5Z9XARJKLAZhYsHzW0bLw3LhOtREB1aFoN5LXqNc0mLIpDyNwQ/fSI
         lz6viyYYlNvzKQCUy0VniJrlgdGrW4Wyq4d57aX7nlGV94EiQs1r9Y3oeejECUQAlgqQ
         X8r36FVkeAArZAEJ55w1VCaKYA8D4hzfRGv4+WwPqR1uoNVZsnQ1qhFHI/rqktJQKCGB
         oQDhHkDJ/XKo6TV2kjuLemG6fGrKh4s7J2B4udTPBvxK9rFtzQiwGAjZkmINIBZevzsp
         tFcQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVuUs1KeGo86gKkUIsvrnmugIYIk6kz84M0VVF6+wUQTtBse/NHHKsTSRxrFb8dVTHSgCNw8vgP2I9Uf/FARoMB5vYk7WLUgahH
X-Gm-Message-State: AOJu0YzJ79irJsS77yKeuGDcKgoXZcm+XjbABm+uMWL4QG8EK+xPh6AJ
	G8AAlpLX8oPDBQT5LgQiKJK/wTa3PX9xJr7tO2/Z3SPeh6Ep6Sm0FiYcL4FDUF0=
X-Google-Smtp-Source: AGHT+IEEKALfkG1RllRswBsiGF/PJYfcw/7tw8oi1D5PAoDScZAksBduSOIFMiH187eOT8+9Q6DDKQ==
X-Received: by 2002:a05:6214:c67:b0:68f:525e:9340 with SMTP id t7-20020a0562140c6700b0068f525e9340mr11036039qvj.64.1708971183197;
        Mon, 26 Feb 2024 10:13:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2463:b0:68c:d848:72ac with SMTP id
 im3-20020a056214246300b0068cd84872acls5841343qvb.2.-pod-prod-04-us; Mon, 26
 Feb 2024 10:13:02 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW2H1w2M2fbIgBks9Y2qEiOr9od5ok5ZWrKAnmjGO5HLPj6vyjkmpFcbVzBX5bjP90cHgXHuGhXwAEdlonbPZI7bzT3nSDHjC/zKR1TXT/s0JbDRNU=
X-Received: by 2002:a05:620a:5745:b0:787:635d:abad with SMTP id wj5-20020a05620a574500b00787635dabadmr9131280qkn.63.1708971182298;
        Mon, 26 Feb 2024 10:13:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708971182; cv=none;
        d=google.com; s=arc-20160816;
        b=pqMX5yNKX1cpv0Br4pP/Ez8UwoE/1YnExrbaQq5TrsDq7I7BN13zeZzC0GiOj0Sbcw
         uIGhAq+46cgJdoXCnwdKUNSCb80otV2Y6Fckxhvj2ep7QT3vfJKU9nITqBGjCME4/dls
         2Ggid0FvWEomVrjyGVaYjTTayrryVSAim1udXXqMMCMJgoCJWo8Zd37pW/l1wUcCz5th
         9j4CxoLtYgelvxMjUYbbTRmSB7rN+w9eNdWrQpqZ5bv8EyoMWUYFfE4/F5myFQYMZiCQ
         EUEPYoBdRUa9TgARYkdNiPTYJLymtEkgExISqtu4ovOlv+Tb7C2e02yRvmmGRgp+jSUS
         WR/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=kxzdTrrwNkoVz1gm5rPDGDKRS7zKez1hntFXiRW68XE=;
        fh=wqdoRlSl3sf0KRkEQpHOj8yTetLy30qZmd+bwdmvhes=;
        b=MHZSUBrbmGO4AQvoOIRZ+VFEO6GKdZFj5JoatHFoB/Ry/eIFC02Ua7oWt4qtuqWyT6
         7+MQG1ZQBgKtkHG9XWF9zQOOGxbF6DzXHDbhPVDySPuu91vS7XMqS76EvKjmCLnkcIsk
         UxAUvRw+Le1yM+15Fz6bXxU3IynuzgjusUtJreCEVdSr5ygQAfQh8b6cBKrnIH1/LKut
         vOAGtpWa4MWKxvgcOxngdOpKou4AHWy3UB346qSZA3SC2uHC8pQOTWfUIIMzIRoORE4/
         M+ufqhgEKrYo4hL3dSdskM4cWxGHKikNCdfB1VyB4U1+fSXWm++HEZIQXuJ5LH3NBZyq
         CTDg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id j26-20020a37ef1a000000b00785d4e12821si5613294qkk.41.2024.02.26.10.13.02
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 26 Feb 2024 10:13:02 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 738450 invoked by uid 1000); 26 Feb 2024 13:13:01 -0500
Date: Mon, 26 Feb 2024 13:13:01 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Oliver Neukum <oneukum@suse.com>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
  bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
  tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Message-ID: <9bbc5b63-33e3-44de-8bce-4c59dcce5e92@rowland.harvard.edu>
References: <0000000000003eb868061245ba7f@google.com>
 <99b0fb1b-37b3-4da4-8129-e502ed8e479a@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <99b0fb1b-37b3-4da4-8129-e502ed8e479a@suse.com>
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

On Mon, Feb 26, 2024 at 11:59:06AM +0100, Oliver Neukum wrote:
> Hi,
> 
> On 26.02.24 10:42, syzbot wrote:
> > Hello,
> > 
> > syzbot found the following issue on:
> > 
> > HEAD commit:    f2e367d6ad3b Merge tag 'for-6.8/dm-fix-3' of git://git.ker..
> > git tree:       upstream
> > console+strace: https://syzkaller.appspot.com/x/log.txt?x=114e10e4180000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=eff9f3183d0a20dd
> > dashboard link: https://syzkaller.appspot.com/bug?extid=28748250ab47a8f04100
> > compiler:       Debian clang version 15.0.6, GNU ld (GNU Binutils for Debian) 2.40
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1064b372180000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=10aca6ac180000
> > 
> > Downloadable assets:
> > disk image: https://storage.googleapis.com/syzbot-assets/c55ca1fdc5ad/disk-f2e367d6.raw.xz
> > vmlinux: https://storage.googleapis.com/syzbot-assets/4556a82fb4ed/vmlinux-f2e367d6.xz
> > kernel image: https://storage.googleapis.com/syzbot-assets/95338ed9dad1/bzImage-f2e367d6.xz
> > 
> > The issue was bisected to:
> > 
> > commit 321da3dc1f3c92a12e3c5da934090d2992a8814c
> > Author: Martin K. Petersen <martin.petersen@oracle.com>
> > Date:   Tue Feb 13 14:33:06 2024 +0000
> > 
> >      scsi: sd: usb_storage: uas: Access media prior to querying device properties
> 
> preliminary analysis:
> 
> It oopses here:
> 
> 		} else {
> 			if (!id[ATA_ID_SECTORS] || !id[ATA_ID_HEADS])
> 				goto too_early;

Those two lines are debugging code you added, right?

> 			sectnum = (u8)((lba % id[ATA_ID_SECTORS]) + 1);
> 			cylinder = (u16)(lba / (id[ATA_ID_SECTORS] *
> 					id[ATA_ID_HEADS]));
> 
> in isd200_scsi_to_ata() because it must not be called before isd200_get_inquiry_data()
> has completed.

It can't be; isd200_get_inquiry_data is called by isd200_Initialization 
during probe before any SCSI commands are transmitted.

> That raises two questions.
> 
> 1) should we limit the read_before_ms flag to the cases transparent SCSI is used?

That won't help; the inquiry data will still be wrong.

> 2) does isd200_get_inquiry_data() need to validate what it reads?

Yes.  At least to make sure that we're not going to divide by 0.  This 
means that id[ATA_ID_SECTORS] and id[ATA_ID_HEADS] must both be > 0.  
Since they are 16-bit quantities, we don't have to worry about them 
overflowing.

Do you want to submit a fix for syzbot to test?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/9bbc5b63-33e3-44de-8bce-4c59dcce5e92%40rowland.harvard.edu.
