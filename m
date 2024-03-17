Return-Path: <usb-storage+bncBDEJPS537ELRBE5G3SXQMGQEAMFMJRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id E902187DE31
	for <lists+usb-storage@lfdr.de>; Sun, 17 Mar 2024 16:58:12 +0100 (CET)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5a48451d1ddsf1651856eaf.2
        for <lists+usb-storage@lfdr.de>; Sun, 17 Mar 2024 08:58:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1710691091; cv=pass;
        d=google.com; s=arc-20160816;
        b=q6d2SJRzofDhrVf1tiDqb9L8oAYDzO0bByvOfPyXsUcIBPqpYvPcQT7GLdzLO3Abf6
         grYz9RXyJ6s/uGgQKY3y8ThPoVs2bDJGJaHe4Tn2ZxGln+NK4SxPuITlZDEbgRaw3fWg
         H+DkvdZZSALjGsYk7kozT18/4CLrrhVRnmtU9a2K+dPaKFlaO+TUIk2Df1bMjS7p5ads
         si4SGeJtLDR5Lk/GDg1OwVc3Fg5f0aOJ+Ql9wLNDqCcVfNYf9M8VQWNCcet8BDnSsiOn
         4H5/sQmycNC4fSxcvvhcTPC3Ziq8JAb8dSUZonYHm/ABkmYi/GQWS+92XW8Dn0WVG1jy
         EIAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zduxDa6+URfGqun1X9Iag35xKKvSmHRbiPykFkYV8Pc=;
        fh=DF0Y7tKhJEfS5cVvfgoK9iWvsN8mPg+chxhBRsRm9lg=;
        b=0ctCiQebTwHjmodV1LC+rakomi0Q10yqOma5TdDb8dFCgFUZMH7tyS18soC5eXzBiH
         e6ZajKZ9Y+Zk3mCIIJsNwiiteLDFpEox0AVHoqfeaJEqZvoWeOMIEDArq5d18BUX3NvC
         CpSnf1vHREP1l/PXP6ayT6GbgIxoHwPONiWkrKkZdxCIfwAmAyAoThk0Snz93GUdJSWL
         LB/potOMQpnfZHsc3hkiQ3K4Y20iy07hvZMqxclsF6v5sh++lwzlDOmsqKVGQV3aad10
         rRbuF6jLsM2vmYgfGwQTTYan+udQdWehcWftF8HdzNbjHMO1ActRowA9A0I72qSeK1d2
         5RAQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=C3dRNJ1L;
       spf=pass (google.com: domain of xrivendell7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=xrivendell7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1710691091; x=1711295891; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zduxDa6+URfGqun1X9Iag35xKKvSmHRbiPykFkYV8Pc=;
        b=RhybC43sxLUnScRPaxgbDjK4oCTKE5L0mEqwiChYjLdgsJwtpa2mQ+jruEi/RdKuYb
         Zo49LHYlDrfgbiNt/RoizSIxSmcVMXeibvsxhQY5APP6300Pq8MiLZHdlM+IzpIlYfKj
         wEVMS4dJtTzupNMUp+Zi4JPvAW//00cfgqVqA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710691091; x=1711295891;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zduxDa6+URfGqun1X9Iag35xKKvSmHRbiPykFkYV8Pc=;
        b=qVEAL+pCpslHdgvLPZQltqdYVITVjlrY9EKtN1K7yfFilUJRnAbcXLCq6fRxhtjB/O
         oz4lro+qVilwVhsUqibFz5Rj/uBa7SncDEhyiv1+J8hDZem4QjqkZmhXD3vU1odI11MH
         E+IIh6uRpKTNDTR5C5kUEUCoWtFyP4g2pSQPSbErx+Dn2FUpqFGnQZbyIh2469uKfeXP
         2m+H4W4Fo9LGqkGLweNPDIy1ulez74qBdz3z6JvwhlnstqZL6i85Wiwg1GY8aZ+/E3QK
         vmYE9F3KVIvDqMs4NuIwfXJCh9McBU2wVex4DOqePpd+kvG4bAPES4cukbyVuItO1h4F
         WwIQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVZ+t4pOi5GmK+KLLkTib8dVbllIGBR3/LpU1A7kLOtS9T7SwVgGZ6jSeIoMRqurSN3iAySCss7zLQLbXeEuVysZb5s6U0N4f7z
X-Gm-Message-State: AOJu0YwuUrC2FgvIDG6agE9p0ElJ+QHtaVG8qIQ9Ha3CLyXEKWbz3WTL
	CTQ2ndSoajCq+qIUSjHUg5kbNfoxPyzD9bRNLOMguM56STiZJdGL2liG9tkO0m4=
X-Google-Smtp-Source: AGHT+IE0wNwoAnQWazbKPGWqZmTJbvlQe+kcslrX+WUgtE0B90VGKvtLZDaOLkO/qvwMH2CgeiPIvw==
X-Received: by 2002:a05:6870:5e49:b0:221:a247:571a with SMTP id ne9-20020a0568705e4900b00221a247571amr10759747oac.27.1710691091304;
        Sun, 17 Mar 2024 08:58:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6871:2b13:b0:222:6060:343d with SMTP id
 dr19-20020a0568712b1300b002226060343dls1477275oac.2.-pod-prod-04-us; Sun, 17
 Mar 2024 08:58:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWZmVjL99l5l6Xhp17TzFI6Pya5/nrwFbh7pSWCq7txXQYjQQKAP8W3RbXmSZjXgnltooUIehn0e/5FeKxyLw21vygajJdg/c4anyClloLYeZIvZH8=
X-Received: by 2002:a05:6359:5fa1:b0:17c:167d:86d7 with SMTP id lh33-20020a0563595fa100b0017c167d86d7mr1941745rwc.12.1710691090475;
        Sun, 17 Mar 2024 08:58:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1710691090; cv=none;
        d=google.com; s=arc-20160816;
        b=XNCVjUegbq6GlGdL2fVGktQVaNncV1gvwYgcT0CPAwCViNFltjSi0vq5cZ8bKQMEpM
         9vFvPXDumoKbDGlNO+JJv8rPNWst7eJKdtI6C9QstSfGuECMZV7W5MIzHoRTFh4PwVVz
         wgO/64HrDBK16RwNfytGVHNbh75TBlUxYqYjoR9dxH3faG5tvX5F6Y1eq8evaqyDI2wn
         AcMQAGKa3IIQIuBQhk8jOSuZP9F5flo7m87ZZXoI0OgyVf2gHuymCq4fkzQItGkxbs0H
         Bq0gyiUICBjkyneh80h7honFHYT9sr+Td3qSozmObYrZmLYlEESEtN+RxUCr08LcK3y5
         76zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=80/MbfT86UuveNqoUzU/+aC14au60excBnK19OYBXQI=;
        fh=RtePb3lCNbuZSw5dXR147f5K4uqLiwBAHkYfEQW9Vdk=;
        b=LJ835PC7Q1UsElt+5SdQBE4QbcLaW0qjDehJ9qauWm3OhinXEUQHKO0Yh3/nYPZY9Q
         BABiAOmPNXNyjRwFSjOspdS6TNHbfJhdEuMX/jiyGDe5DeO0Qo/N+BMVZjHXVTxGb+pB
         qJBnmV8DutFMW3n0LPtFjZ7rqNeHTJA5jefXphg+HFkvpv52LzNUVkQBnsGJ5BZ6w5UU
         jjfV+spyNYl0n876RV0D/854UezybT7mfLGW4wq6hOTXmwOnQj3pc3WuHFkWgwWeNai1
         G7rLXW49pGMdcOan6BReEhf5AM8YB3GzCur4eIgoReMcYSzQmMrE2vvoK7kCj9yhzIhA
         URMg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=C3dRNJ1L;
       spf=pass (google.com: domain of xrivendell7@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=xrivendell7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id s6-20020a17090a2f0600b0029bb536b2a8sor2977291pjd.6.2024.03.17.08.58.10
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 17 Mar 2024 08:58:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of xrivendell7@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUTKUm97FBNpOq+khLdF+Csooqam3KVCdUmwAIM9mK3/r6KJRCY4HJopfHuwySXRpp0Qtjci+Lwh5nOkcCo/P+1Cdhpm8n5sot3t5vdSs83liy/uCk=
X-Received: by 2002:a17:90b:3595:b0:29b:b1f3:c4ab with SMTP id
 mm21-20020a17090b359500b0029bb1f3c4abmr5530953pjb.46.1710691089899; Sun, 17
 Mar 2024 08:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <CABOYnLw8=VM4LxgBsrwTi3HzdvGV7cYJU=4t7MMYTnrDCaDKAQ@mail.gmail.com>
 <cc7eb13f-b61d-4a4c-8c35-394a833d5917@rowland.harvard.edu>
In-Reply-To: <cc7eb13f-b61d-4a4c-8c35-394a833d5917@rowland.harvard.edu>
From: xingwei lee <xrivendell7@gmail.com>
Date: Sun, 17 Mar 2024 23:57:58 +0800
Message-ID: <CABOYnLx1pyG3qjoB9yuRPtDcb3TRbSqTktngXhkPq9UNVd4jLg@mail.gmail.com>
Subject: [usb-storage] Re: divide error in alauda_transport
To: Alan Stern <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net, 
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	samsun1006219@gmail.com, syzkaller-bugs@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: xrivendell7@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=C3dRNJ1L;       spf=pass
 (google.com: domain of xrivendell7@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=xrivendell7@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mar 17, 2024, at 23:04, Alan Stern <stern@rowland.harvard.edu> wrote:

On Sun, Mar 17, 2024 at 04:31:01PM +0800, xingwei lee wrote:

Hello I found a bug in latest upstream titled "divide error in
alauda_transport", and maybe is realted with usb.
I comfired in the latest upstream the poc tree can trigger the issue.

If you fix this issue, please add the following tag to the commit:
Reported-by: xingwei lee <xrivendell7@gmail.com>
Reported-by: yue sun <samsun1006219@gmail.com>

kernel: upstream 9187210eee7d87eea37b45ea93454a88681894a4
config: https://syzkaller.appspot.com/text?tag=KernelConfig&x=1c6662240382da2
with KASAN enabled
compiler: gcc (Debian 12.2.0-14) 12.2.0

divide error: 0000 [#1] PREEMPT SMP KASAN NOPTI
CPU: 2 PID: 8229 Comm: usb-storage Not tainted 6.8.0-05202-g9187210eee7d #20
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.16.2-1.fc38 04/01/2014
RIP: 0010:alauda_read_data drivers/usb/storage/alauda.c:954 [inline]
RIP: 0010:alauda_transport+0xcaf/0x3830 drivers/usb/storage/alauda.c:1184


Can you please test the patch below?

Alan Stern




Index: usb-devel/drivers/usb/storage/alauda.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/alauda.c
+++ usb-devel/drivers/usb/storage/alauda.c
@@ -951,7 +951,6 @@ static int alauda_read_data(struct us_da
unsigned int lba_offset = lba - (zone * uzonesize);
unsigned int pages;
u16 pba;
- alauda_ensure_map_for_zone(us, zone);

/* Not overflowing capacity? */
if (lba >= max_lba) {
@@ -961,6 +960,8 @@ static int alauda_read_data(struct us_da
break;
}

+ alauda_ensure_map_for_zone(us, zone);
+
/* Find number of pages we can read in this block */
pages = min(sectors, blocksize - page);
len = pages << pageshift;


Hi Alan

I apply your patch in my upstream commit
9187210eee7d87eea37b45ea93454a88681894a4

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..6eccbadcea78 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -951,7 +951,6 @@ static int alauda_read_data(struct us_data *us,
unsigned long address,
                unsigned int lba_offset = lba - (zone * uzonesize);
                unsigned int pages;
                u16 pba;
-               alauda_ensure_map_for_zone(us, zone);

                /* Not overflowing capacity? */
                if (lba >= max_lba) {
@@ -961,6 +960,8 @@ static int alauda_read_data(struct us_data *us,
unsigned long address,
                        break;
                }

+               alauda_ensure_map_for_zone(us, zone);
+
                /* Find number of pages we can read in this block */
                pages = min(sectors, blocksize - page);
                len = pages << pageshift;

However, the poc still trigger the bug like below:

root@syzkaller:~# ./55a
[  143.702248][   T29] usb 1-1: new high-speed USB device number 2
using dummy_hcd
[  143.941971][   T29] usb 1-1: Using ep0 maxpacket: 8
[  144.062985][   T29] usb 1-1: config 0 interface 0 altsetting 0
endpoint 0xE has invalid maxpacket 6912, setting to 1024
[  144.066725][   T29] usb 1-1: config 0 interface 0 altsetting 0 bulk
endpoint 0xE has invalid maxpacket 1024
[  144.069851][   T29] usb 1-1: config 0 interface 0 altsetting 0
endpoint 0x82 has invalid wMaxPacketSize 0
[  144.073033][   T29] usb 1-1: config 0 interface 0 altsetting 0 bulk
endpoint 0x82 has invalid maxpacket 0
[  144.076132][   T29] usb 1-1: New USB device found, idVendor=07b4,
idProduct=010a, bcdDevice= 1.02
[  144.079142][   T29] usb 1-1: New USB device strings: Mfr=0,
Product=0, SerialNumber=0
[  144.082673][ T4526] systemd-journald[4526]: sd-device: Failed to
chase symlinks in "/sys/dev/char/189:1".
[  144.086529][   T29] usb 1-1: config 0 descriptor??
[  144.103215][ T8204] raw-gadget.0 gadget.0: fail, usb_ep_enable returned -22
[  144.124706][   T29] ums-alauda 1-1:0.0: USB Mass Storage device detected
[  144.153028][   T29] scsi host2: usb-storage 1-1:0.0
[  145.216626][ T1020] scsi 2:0:0:0: Direct-Access     Olympus
MAUSB-10 (Alauda 0102 PQ: 0 ANSI: 0 CCS
[  145.219706][ T1020] scsi 2:0:0:1: Direct-Access     Olympus
MAUSB-10 (Alauda 0102 PQ: 0 ANSI: 0 CCS
[  145.234829][ T1020] sd 2:0:0:0: Attached scsi generic sg2 type 0
[  145.251393][ T1020] sd 2:0:0:1: Attached scsi generic sg3 type 0
[  145.492274][   T73] sd 2:0:0:0: [sdb] Very big device. Trying to
use READ CAPACITY(16).
[  145.932043][   T12] sd 2:0:0:1: [sdc] Very big device. Trying to
use READ CAPACITY(16).
[  145.932844][   T73] sd 2:0:0:0: [sdb] Using 0xffffffff as device size
[  145.935914][   T12] sd 2:0:0:1: [sdc] Using 0xffffffff as device size
[  146.141945][ T8215] divide error: 0000 [#1] PREEMPT SMP KASAN NOPTI
[  146.143565][ T8215] CPU: 1 PID: 8215 Comm: usb-storage Not tainted
6.8.0-05202-g9187210eee7d-dirty #21
[  146.145319][ T8215] Hardware name: QEMU Standard PC (i440FX + PIIX,
1996), BIOS 1.16.2-1.fc38 04/01/2014
[  146.146720][ T8215] RIP: 0010:alauda_transport+0xc65/0x38b0
[  146.147977][ T8215] Code: 84 24 08 01 00 00 00 00 00 00 48 c7 84 24
18 01 00 00 00 00 00 00 48 d3 eb 48 89 d9 85 f6 0f 84 5b 12 00 00 31
d2 41 0f b7 c4 <f7> 74 24 40 66 41 39 dc 41 89 c6 0f 83 08 02 00 00 41
81
[  146.150664][ T8215] RSP: 0018:ffffc9001005fa60 EFLAGS: 00010246
[  146.151539][ T8215] RAX: 0000000000000000 RBX: 0000000000000000
RCX: 0000000000000000
[  146.152672][ T8215] RDX: 0000000000000000 RSI: 0000000000000001
RDI: ffff88802d3d5a00
[  146.153819][ T8215] RBP: 1ffff9200200bf69 R08: 0000000000000001
R09: ffffed1005ed15ad
[  146.154982][ T8215] R10: ffff88802f68b088 R11: ffff88802f68acb8
R12: 0000000000000000
[  146.156122][ T8215] R13: 0000000000000000 R14: 0000000000000000
R15: ffff88802d3d5a00
[  146.157275][ T8215] FS:  0000000000000000(0000)
GS:ffff88823bc00000(0000) knlGS:0000000000000000
[  146.158578][ T8215] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  146.159536][ T8215] CR2: 000055e7fa9c4770 CR3: 000000000c774000
CR4: 0000000000750ef0
[  146.160699][ T8215] PKRU: 55555554
[  146.161232][ T8215] Call Trace:
[  146.161730][ T8215]  <TASK>
[  146.162173][ T8215]  ? die+0x31/0x80
[  146.162718][ T8215]  ? do_trap+0x1b4/0x3c0
[  146.163355][ T8215]  ? alauda_transport+0xc65/0x38b0
[  146.164115][ T8215]  ? do_error_trap+0x9e/0x160
[  146.164788][ T8215]  ? alauda_transport+0xc65/0x38b0
[  146.165542][ T8215]  ? exc_divide_error+0x38/0x50
[  146.166259][ T8215]  ? alauda_transport+0xc65/0x38b0
[  146.167008][ T8215]  ? asm_exc_divide_error+0x1a/0x20
[  146.167782][ T8215]  ? alauda_transport+0xc65/0x38b0
[  146.168546][ T8215]  ? __pfx___lock_acquire+0x10/0x10
[  146.169309][ T8215]  ? __pfx_alauda_transport+0x10/0x10
[  146.170098][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.170909][ T8215]  ? __lock_acquire+0x193f/0x5c00
[  146.171639][ T8215]  usb_stor_invoke_transport+0xea/0x13d0
[  146.172465][ T8215]  ? __pfx_mark_lock+0x10/0x10
[  146.173179][ T8215]  ? __mutex_lock+0x25a/0x1330
[  146.173893][ T8215]  ? __pfx_usb_stor_invoke_transport+0x10/0x10
[  146.174796][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.175640][ T8215]  ? find_held_lock+0x2d/0x110
[  146.176357][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.177172][ T8215]  ? usb_stor_control_thread+0x304/0x980
[  146.178002][ T8215]  ? __pfx_lock_release+0x10/0x10
[  146.178745][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.179581][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.180406][ T8215]  ? mark_held_locks+0x9f/0xe0
[  146.181114][ T8215]  usb_stor_control_thread+0x5d6/0x980
[  146.181928][ T8215]  ? __pfx_usb_stor_control_thread+0x10/0x10
[  146.182784][ T8215]  ? _raw_spin_unlock_irqrestore+0x52/0x80
[  146.183620][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.184438][ T8215]  ? lockdep_hardirqs_on+0x7c/0x100
[  146.185196][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.186007][ T8215]  ? srso_alias_return_thunk+0x5/0xfbef5
[  146.186808][ T8215]  ? __kthread_parkme+0xb5/0x1f0
[  146.187545][ T8215]  ? __pfx_usb_stor_control_thread+0x10/0x10
[  146.188418][ T8215]  kthread+0x2eb/0x3d0
[  146.189202][ T8215]  ? _raw_spin_unlock_irq+0x23/0x50
[  146.189981][ T8215]  ? __pfx_kthread+0x10/0x10
[  146.190712][ T8215]  ret_from_fork+0x2f/0x70
[  146.191387][ T8215]  ? __pfx_kthread+0x10/0x10
[  146.192065][ T8215]  ret_from_fork_asm+0x1a/0x30
[  146.192765][ T8215]  </TASK>
[  146.193222][ T8215] Modules linked in:
[  146.193986][ T8215] ---[ end trace 0000000000000000 ]---
[  146.194815][ T8215] RIP: 0010:alauda_transport+0xc65/0x38b0
[  146.195724][ T8215] Code: 84 24 08 01 00 00 00 00 00 00 48 c7 84 24
18 01 00 00 00 00 00 00 48 d3 eb 48 89 d9 85 f6 0f 84 5b 12 00 00 31
d2 41 0f b7 c4 <f7> 74 24 40 66 41 39 dc 41 89 c6 0f 83 08 02 00 00 41
81
[  146.198822][ T8215] RSP: 0018:ffffc9001005fa60 EFLAGS: 00010246
[  146.199783][ T8215] RAX: 0000000000000000 RBX: 0000000000000000
RCX: 0000000000000000
[  146.200998][ T8215] RDX: 0000000000000000 RSI: 0000000000000001
RDI: ffff88802d3d5a00
[  146.202239][ T8215] RBP: 1ffff9200200bf69 R08: 0000000000000001
R09: ffffed1005ed15ad
[  146.203581][ T8215] R10: ffff88802f68b088 R11: ffff88802f68acb8
R12: 0000000000000000
[  146.204813][ T8215] R13: 0000000000000000 R14: 0000000000000000
R15: ffff88802d3d5a00
[  146.206034][ T8215] FS:  0000000000000000(0000)
GS:ffff88823bd00000(0000) knlGS:0000000000000000
[  146.207351][ T8215] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  146.208325][ T8215] CR2: 000055e7fa9cf2c8 CR3: 0000000027014000
CR4: 0000000000750ef0
[  146.209490][ T8215] PKRU: 55555554
[  146.210032][ T8215] Kernel panic - not syncing: Fatal exception
[  146.211335][ T8215] Kernel Offset: disabled
[  146.212003][ T8215] Rebooting in 86400 seconds..


Best regards
xingwei Lee

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CABOYnLx1pyG3qjoB9yuRPtDcb3TRbSqTktngXhkPq9UNVd4jLg%40mail.gmail.com.
