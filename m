Return-Path: <usb-storage+bncBC35DGF52MIRBA7PXKZAMGQEIGVZCMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCB98CCB23
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 05:27:01 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5b29a5f1addsf963147eaf.1
        for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 20:27:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716434820; cv=pass;
        d=google.com; s=arc-20160816;
        b=WLYWSoFw5p94LuoVdX9R4utLR+g91MHxEBs+bxVT9nkbX5GDxZmdl1l6L9tOhIyp4X
         8ayR+SN+t3lgKye9EreX/wWNubebnfz7qjG69xwUHU2gLOKA1emF9jFKwYxZ6dRGBgNR
         9a5QxRstQwnVWZeNIPONZaDXTJcXzUwi/ARF3JHJqtgLCkvxsj/gkBVLLrP6ZFf0dcaE
         n+ePy57MlfBg6e7VK1ULHJJld+B2+ZsFaOjpavXo/3Rha8sqCdtGcRBNLygUhSmZsNCd
         H0a8EiR9UhvRv5EgsAyLxspKiWgyWVJBQ2uK8BbGz8uahqeiolvlPIjfNGZyG+4JJDth
         I8SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4sHPl3PnJaygFMvyVSZjqZRiEzHsKB5f8FJg2ymiyaA=;
        fh=dxmV1Ni/FUL/mKfr0C7FxyqAcH6UhbtXOqiTUj6/dZY=;
        b=XGLik4BznP/eyc4ShKfK2nUYt0EmoqmD7Ow1zXBXpt6YFIdPTWb9tPL3beTTmIBESr
         gZUaRpUWJ6VSKP6cl3F9g8xlQb1Z91zEuC6EHh6K1OrrLzd0upZXBZj0PtdZNiq0KFoj
         CmrLURe7gR6H/1nlzVEzuhPdEA5OLZ74kEY1ja4RieIIw1+3XSnUsQ8gr4fDotZP/NtA
         RV/9si+cjGmUC2boujZq7bdtAMEIXSf/6dNDJSim/i1KqF8WvThcBN8zKwPaFkkYglm2
         r816UQEhQKgi35ORZijT+ArPl09bG01Svt2kol6t5ZMLje1lwFtS78z9kofZ3HiWPJGA
         /aTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=jtIM9+QP;
       spf=pass (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=phyhac@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716434820; x=1717039620; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4sHPl3PnJaygFMvyVSZjqZRiEzHsKB5f8FJg2ymiyaA=;
        b=JTVQiOh3lDQApfvjbRkyJ2MGYFRK7xO1DMvgsD71OCKiRu/RZEGFoC24Q7Hnrf2GQD
         rMv6B1JSN24J9xdBD21cp5j6LaZR+WSFiW4GexvJCIsXtcWoc5JJ4RcLUgaBkP943Tsd
         ffQEEuuloKFPoQFyuuhSJ4c339ssmCWIUvt5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716434820; x=1717039620;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4sHPl3PnJaygFMvyVSZjqZRiEzHsKB5f8FJg2ymiyaA=;
        b=KCXs/K3fYrPwaDd1WKUN8wOXPsDA0EJCeNZYCMrGKIVcIqN1j/DDHRu7Yu98g8aVLh
         6ayWfGXhxw4GD8fjY56tIaZtRZ1D87Oi3WzIW0wsDvdrH2eDC3t5ztsP1lfe7Dm9Ir05
         wty7w+ukDVEgKVljCc9wX/qe5qjd//iP7Ng20jQjDbAZVHuz98BuCK9ToWcBTtG5QcIU
         YKH5k9evmfAjkvmjrLRKqCzOWEhJkkL9oQy/bEZi9+MG0ZIsD8GoboPY+P/7bqlut1X9
         gCcYcM9zdTzTA2BFhpvGKk7W5MwR3ClkEdKGdyjt4k7guIMb2uyrEFCKlavZlyGTCd8x
         CdEg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWZvLT07fhFarmn9KiCOjVGzbNChreLKURbab+bXXSB5ZUlG0qu44LCgtOBpXTQeUQVZgxJ58HpcA/zjZh5kMsd+z3d3yDIAx2z
X-Gm-Message-State: AOJu0Yy1XxRgoiaqAjr9pbybZzDG0dtOg4tj0ktA1KZw9eX7oswORdJk
	vRF7FAOMbn3Vl2HmB+G6lP+7E5r0sKGDtpj/4qc0ncFIvOpNIKHHWf677cmbxZQ=
X-Google-Smtp-Source: AGHT+IEEvPC1TaEbXpqVdMzO39jJLaleRkX5QrV36+V8z9uHCcLBoDEQDVA50Fym48LzbW2uU3XcUQ==
X-Received: by 2002:a05:6820:1ca2:b0:5b2:f1cb:1a3f with SMTP id 006d021491bc7-5b6a3f19a38mr3826772eaf.7.1716434819991;
        Wed, 22 May 2024 20:26:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:a9c3:0:b0:5aa:44f9:9b11 with SMTP id 006d021491bc7-5b26a7fdd77ls1070708eaf.1.-pod-prod-05-us;
 Wed, 22 May 2024 20:26:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWhSZjEnQJqfQswJzuxaC0diczr38JhKmVk4fY/FXEPxtn4pLDjwpII6Uni6znQsnBJuixGGQCR7V72gqaV8IBBSDRCJIpftKwL2Ln6siJckdCPJWI=
X-Received: by 2002:a05:6808:159f:b0:3c8:2eda:bcb9 with SMTP id 5614622812f47-3cdb3f5ada4mr4925626b6e.7.1716434819261;
        Wed, 22 May 2024 20:26:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716434819; cv=none;
        d=google.com; s=arc-20160816;
        b=PmVmQcA7+PeJQS8lisU3MOSGRz9g7xtXF1+krSRZV3avXvqziV4alVeXpCB72urEFf
         YtGeO0pJYsK6wUludGtYkv4WkhbV+pS0tdjkk7aiPHloi8ZjgwgnWRARB4zUwqWBitLp
         xzZXs7P4GpFGCb8Gs3kf4J57SLXzNRwze646cu7Iq1YcAOJXVzzi+O1gkt3P2lu74EQx
         PkcfrazjV8YLWk8KHZe0kDaGXNFXk92usfwiOua6zo0PBaIKbqozdg6l7b6Kq7CASe9x
         y570PZyg9SR3PZ36pYc+iifTn+TuNG9Yl8R97rSQy1E131MrEusryBR3SoWRpRpHhSkC
         12Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=K9GfF81a6trE+FAa07sx1yG2SWbBCMFGBrvPjAy0dHQ=;
        fh=lqkmehH96hMjCuno2khIZrRiPGGCTjx4MTiEzYfkM8s=;
        b=jlf4JkisrMmRLyFE9Vm9MAEPmPtf5iv27NXlzu1qKZukWsiImh5s9IF1bYQbfdJ7Vn
         37FQQ3Xs0h7C1ou/xfgZpt9aloHxzrLpuBpcNkfshfn3gC4XFna4ZOTKszvZzakEqPSf
         fbWDgGXGo5tSatW/bhhNOPY68EP2ooWs96TZiOx6bu1JEL8GCwOpXrAlkT+ImOpmZyjT
         5Aoh7lcEs+RJ+JD28bfoAspBY73WSsGvwZbrzC1j00BbQ9JsAaj9Qxfl8xbJzRu0TRRv
         c5BCLSBFridQHrP9SkN+L71lY994rfOvD71nvxCQ16Ie+qDwZDryTpU13esIWDpfqlZe
         yfcg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=jtIM9+QP;
       spf=pass (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=phyhac@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id 5614622812f47-3c993a209a2sor13194573b6e.11.2024.05.22.20.26.59
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 22 May 2024 20:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Forwarded-Encrypted: i=1; AJvYcCWF7jKafbZXkZJGNTgoawe/qcPH329n0Zs6if+OiodhwvXIZ1muMiVim4UhXQTr7PyUeTyj8uFg1m1XCuOBAENOeGJoP14SbAGnu1bnwvxQnqwgQAc=
X-Received: by 2002:a05:6870:32ce:b0:24c:63b2:8a13 with SMTP id
 586e51a60fabf-24c68b2d2c9mr4300362fac.20.1716434818889; Wed, 22 May 2024
 20:26:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAEk6kZszgHVYN8r-AsPw9YtGGf459j0uDMYLdOoTixhE3YJCKw@mail.gmail.com>
 <2024052224-motion-perish-82cd@gregkh> <CAEk6kZt4qcV0xUxHFRp3DTdZ0f_3fLE0q4e_AWHGyjba=19g9g@mail.gmail.com>
 <CAEk6kZsgEJNSmFFe-tdA+RhM=+Pjm=JvHiNJ4QjZONPXHt-gjw@mail.gmail.com>
 <2024052242-hunter-exception-930c@gregkh> <CAEk6kZsLqJ5RbWYMrcbB+LkRq8jzRgTm3F8kq8FKB14y8ST2GQ@mail.gmail.com>
 <b82e133a-62a3-4f23-9803-1af79b06b8f4@rowland.harvard.edu>
In-Reply-To: <b82e133a-62a3-4f23-9803-1af79b06b8f4@rowland.harvard.edu>
From: Shichao Lai <phyhac@gmail.com>
Date: Thu, 23 May 2024 11:26:48 +0800
Message-ID: <CAEk6kZsgMscqmSgsvt9d=z7e69ZGuJAfLuYOV7E6jXJKr+n3Pg@mail.gmail.com>
Subject: [usb-storage] Re: divide error in alauda_transport
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org, 
	syzkaller@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000a9008c0619169f2b"
X-Original-Sender: phyhac@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=jtIM9+QP;       spf=pass
 (google.com: domain of phyhac@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=phyhac@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000a9008c0619169f2b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E5=9C=A82024=E5=B9=B45=E6=9C=8823=E6=97=A5=E6=98=9F=E6=9C=9F=E5=9B=9B UTC+=
8 03:59:30<Alan Stern> =E5=86=99=E9=81=93=EF=BC=9A

> On Wed, May 22, 2024 at 06:01:57PM +0800, Shichao Lai wrote:
> > Thanks for your patience. I am a beginner and initially attempted to
> report
> > errors to the community.
> > However, I have just discovered that the issue mentioned above has
> already
> > been proposed in the previous three months of the article, and there is
> an
> > ongoing discussion.
>
> To call the discussion "ongoing" is optimistic. There hasn't been any
> reply to my last post, which was made on March 17, more than two months
> ago.
>
> Maybe you can carry out the tests I described in that post. That
> would be a big help.
>
> Alan Stern
>
> > I think this post can be closed later.
> >
> > https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ/m/JfUy1xGnAwAJ
> >
> > Greg Kroah-Hartman <gre...@linuxfoundation.org
> <https://groups.google.com/>> =E4=BA=8E2024=E5=B9=B45=E6=9C=8822=E6=97=A5=
=E5=91=A8=E4=B8=89 16:59=E5=86=99=E9=81=93=EF=BC=9A
> >
> > > On Wed, May 22, 2024 at 04:22:18PM +0800, Shichao Lai wrote:
> > > > patch like this:
> > > > ```c
> > > > while (sectors > 0) {
> > > > if (!uzonesize) {
> > > > return USB_STOR_TRANSPORT_ERROR;
> > > > }
> > > > unsigned int zone =3D lba / uzonesize; /* integer division */
> > > > unsigned int lba_offset =3D lba - (zone * uzonesize);
> > > > unsigned int pages;
> > > > ```
> > >
> > > Please submit this properly and we will be glad to review it.
> > >
> > > thanks,
> > >
> > > greg k-h
> > >



Hello Dear Maintainer!
I found the same divide error yestoday as
https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ
And I add a patch before drivers/usb/storage/alauda.c:950 in
alauda_read_data().
The true cause of this error is that the variable uzonesize may be set to 0=
.
Here is my patch:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
index 115f05a6201a..fb54af37efd5 100644
--- a/drivers/usb/storage/alauda.c
+++ b/drivers/usb/storage/alauda.c
@@ -947,6 +947,9 @@ static int alauda_read_data(struct us_data *us,
unsigned long address,
        sg =3D NULL;

        while (sectors > 0) {
+               if (!uzonesize) {
+                       return USB_STOR_TRANSPORT_ERROR;
+               }
                unsigned int zone =3D lba / uzonesize; /* integer division =
*/
                unsigned int lba_offset =3D lba - (zone * uzonesize);
                unsigned int pages;

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

When a pr_info("uzonesize: %u\n", uzonesize) is added before the divide
operation, the log shows  the uzonesize can be 0 when executing the repro:
And no divide error after my patching.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D log
root@syzkaller:~# mv repro.cprog repro.c
root@syzkaller:~# gcc repro.c -o exp
root@syzkaller:~# ./exp
[   49.485749][   T90] usb 1-1: new high-speed USB device number 2 using
dummy_hcd
[   49.725666][   T90] usb 1-1: Using ep0 maxpacket: 16
[   49.845790][   T90] usb 1-1: config 0 has an invalid interface number:
192 but max is 0
[   49.847729][   T90] usb 1-1: config 0 has no interface number 0
[   49.849086][   T90] usb 1-1: config 0 interface 192 altsetting 0
endpoint 0x9 has invalid wMaxPacketSize 0
[   49.851103][   T90] usb 1-1: config 0 interface 192 altsetting 0 bulk
endpoint 0x9 has invalid maxpacket 0
[   49.852074][   T90] usb 1-1: config 0 interface 192 altsetting 0
endpoint 0x8F has invalid maxpacket 59960, setting to 1024
[   49.852569][   T90] usb 1-1: config 0 interface 192 altsetting 0 bulk
endpoint 0x8F has invalid maxpacket 1024
[   49.853022][   T90] usb 1-1: New USB device found, idVendor=3D07b4,
idProduct=3D010a, bcdDevice=3D 1.02
[   49.853421][   T90] usb 1-1: New USB device strings: Mfr=3D0, Product=3D=
0,
SerialNumber=3D0
[   49.854818][   T90] usb 1-1: config 0 descriptor??
[   49.865679][ T4123] raw-gadget.0 gadget.0: fail, usb_ep_enable returned
-22
[   49.886236][   T90] ums-alauda 1-1:0.192: USB Mass Storage device
detected
[   49.889103][   T90] scsi host2: usb-storage 1-1:0.192
[   50.898870][   T90] scsi 2:0:0:0: Direct-Access     Olympus  MAUSB-10
(Alauda 0102 PQ: 0 ANSI: 0 CCS
[   50.904357][   T90] scsi 2:0:0:0: Attached scsi generic sg2 type 0
[   51.815845][   T45] sd 2:0:0:0: [sdb] Very big device. Trying to use
READ CAPACITY(16).
[   51.818255][   T45] sd 2:0:0:0: [sdb] Using 0xffffffff as device size
-> [   52.035542][ T4134] uzonesize: 0
[   52.185834][ T4134] usb 1-1: reset high-speed USB device number 2 using
dummy_hcd
[   52.475547][ T4134] usb 1-1: device descriptor read/64, error -32
[   52.865476][ T4134] usb 1-1: device descriptor read/64, error -32
[   53.135545][ T4134] usb 1-1: reset high-speed USB device number 2 using
dummy_hcd
[   53.405543][ T4134] usb 1-1: device descriptor read/64, error -32
[   53.795395][ T4134] usb 1-1: device descriptor read/64, error -32
[   54.065673][ T4134] usb 1-1: reset high-speed USB device number 2 using
dummy_hcd
[   54.235633][ T4134] usb 1-1: device descriptor read/8, error -32
[   54.515608][ T4134] usb 1-1: device descriptor read/8, error -32
[   54.785596][ T4134] usb 1-1: reset high-speed USB device number 2 using
dummy_hcd
[   54.985598][ T4134] usb 1-1: device descriptor read/8, error -32
[   55.255411][ T4134] usb 1-1: device descriptor read/8, error -32
[   55.378064][ T4072] usb 1-1: USB disconnect, device number 2
[   55.416114][   T45] sd 2:0:0:0: [sdb] 4294967296 512-byte logical
blocks: (2.20 TB/2.00 TiB)
[   55.418627][   T45] sd 2:0:0:0: [sdb] Test WP failed, assume Write
Enabled
[   55.420346][   T45] sd 2:0:0:0: [sdb] Asking for cache data failed
[   55.421731][   T45] sd 2:0:0:0: [sdb] Assuming drive cache: write throug=
h
[   55.456745][   T45] sd 2:0:0:0: [sdb] Test Unit Ready failed: Result:
hostbyte=3DDID_NO_CONNECT driverbyte=3DDRIVER_OK
[   55.459054][   T45] sdb: detected capacity change from 4294967296 to 0
[   55.463086][   T45] sd 2:0:0:0: [sdb] Attached SCSI removable disk
[   55.705729][ T4072] usb 1-1: new high-speed USB device number 3 using
dummy_hcd
[   55.975525][ T4072] usb 1-1: device descriptor read/64, error -32
[   56.365582][ T4072] usb 1-1: device descriptor read/64, error -32
root@syzkaller:~# [   56.635529][ T4072] usb 1-1: new high-speed USB device
number 4 using dummy_hcd

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAEk6kZsgMscqmSgsvt9d%3Dz7e69ZGuJAfL=
uYOV7E6jXJKr%2Bn3Pg%40mail.gmail.com.

--000000000000a9008c0619169f2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_quote" style=3D"color=
:rgba(0,0,0,0.87);font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif=
;font-size:14px"><div dir=3D"auto" class=3D"gmail_attr">=E5=9C=A82024=E5=B9=
=B45=E6=9C=8823=E6=97=A5=E6=98=9F=E6=9C=9F=E5=9B=9B UTC+8 03:59:30&lt;Alan =
Stern&gt; =E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Wed, May 22, 2024 at 06:01:57PM +0800, Shichao Lai=
 wrote:<br>&gt; Thanks for your patience. I am a beginner and initially att=
empted to report<br>&gt; errors to the community.<br>&gt; However, I have j=
ust discovered that the issue mentioned above has already<br>&gt; been prop=
osed in the previous three months of the article, and there is an<br>&gt; o=
ngoing discussion.<br><br>To call the discussion &quot;ongoing&quot; is opt=
imistic. There hasn&#39;t been any<br>reply to my last post, which was made=
 on March 17, more than two months<br>ago.<br><br>Maybe you can carry out t=
he tests I described in that post. That<br>would be a big help.<br><br>Alan=
 Stern<br><br>&gt; I think this post can be closed later.<br>&gt;<br>&gt;=
=C2=A0<a href=3D"https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ/m=
/JfUy1xGnAwAJ" target=3D"_blank" rel=3D"nofollow" style=3D"text-decoration-=
line:none;color:rgb(41,98,255)">https://groups.google.com/g/syzkaller-bugs/=
c/m8CuxSpLKoQ/m/JfUy1xGnAwAJ</a><br>&gt;<br>&gt; Greg Kroah-Hartman &lt;<a =
href=3D"https://groups.google.com/" rel=3D"nofollow" style=3D"text-decorati=
on-line:none;color:rgb(41,98,255)">gre...@linuxfoundation.org</a>&gt; =E4=
=BA=8E2024=E5=B9=B45=E6=9C=8822=E6=97=A5=E5=91=A8=E4=B8=89 16:59=E5=86=99=
=E9=81=93=EF=BC=9A<br>&gt;<br>&gt; &gt; On Wed, May 22, 2024 at 04:22:18PM =
+0800, Shichao Lai wrote:<br>&gt; &gt; &gt; patch like this:<br>&gt; &gt; &=
gt; ```c<br>&gt; &gt; &gt; while (sectors &gt; 0) {<br>&gt; &gt; &gt; if (!=
uzonesize) {<br>&gt; &gt; &gt; return USB_STOR_TRANSPORT_ERROR;<br>&gt; &gt=
; &gt; }<br>&gt; &gt; &gt; unsigned int zone =3D lba / uzonesize; /* intege=
r division */<br>&gt; &gt; &gt; unsigned int lba_offset =3D lba - (zone * u=
zonesize);<br>&gt; &gt; &gt; unsigned int pages;<br>&gt; &gt; &gt; ```<br>&=
gt; &gt;<br>&gt; &gt; Please submit this properly and we will be glad to re=
view it.<br>&gt; &gt;<br>&gt; &gt; thanks,<br>&gt; &gt;<br>&gt; &gt; greg k=
-h<br>&gt; &gt;</blockquote><div><br></div><div><br></div><div>Hello Dear M=
aintainer!</div>I found the same divide error yestoday as=C2=A0<a href=3D"h=
ttps://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ" style=3D"text-deco=
ration-line:none;color:rgb(41,98,255)">https://groups.google.com/g/syzkalle=
r-bugs/c/m8CuxSpLKoQ</a></div><div class=3D"gmail_quote" style=3D"color:rgb=
a(0,0,0,0.87);font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;fon=
t-size:14px">And I add a patch before drivers/usb/storage/alauda.c:950 in a=
lauda_read_data().<br>The true cause of this error is that the variable uzo=
nesize may be set to 0.<br>Here is my patch:<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D</div><div class=3D"gmail_quote" style=3D"color:rgba(0,0,0,0.87);font=
-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:14px"><br>d=
iff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c<br>=
index 115f05a6201a..fb54af37efd5 100644<br>--- a/drivers/usb/storage/alauda=
.c<br>+++ b/drivers/usb/storage/alauda.c<br>@@ -947,6 +947,9 @@ static int =
alauda_read_data(struct us_data *us, unsigned long address,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 sg =3D NULL;<br>=C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 whi=
le (sectors &gt; 0) {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if (!uzonesize) {<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return USB_STOR_TRANSPORT_ERROR;<br>+ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int zone =3D lba / uzonesize; /* integ=
er division */<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
nsigned int lba_offset =3D lba - (zone * uzonesize);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int pages;</div><div class=
=3D"gmail_quote" style=3D"color:rgba(0,0,0,0.87);font-family:Roboto,RobotoD=
raft,Helvetica,Arial,sans-serif;font-size:14px"><br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br><br>When a pr_info(&quot;uzonesize: %u\n&quot;, uzonesize) is =
added before the divide operation, the log shows=C2=A0 the uzonesize can be=
 0 when executing the repro:<br>And no divide error after my patching.<br>=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D log<br>root@syzkaller:~# mv repro.cprog repr=
o.c<br>root@syzkaller:~# gcc repro.c -o exp<br>root@syzkaller:~# ./exp =C2=
=A0<br>[ =C2=A0 49.485749][ =C2=A0 T90] usb 1-1: new high-speed USB device =
number 2 using dummy_hcd<br>[ =C2=A0 49.725666][ =C2=A0 T90] usb 1-1: Using=
 ep0 maxpacket: 16<br>[ =C2=A0 49.845790][ =C2=A0 T90] usb 1-1: config 0 ha=
s an invalid interface number: 192 but max is 0<br>[ =C2=A0 49.847729][ =C2=
=A0 T90] usb 1-1: config 0 has no interface number 0<br>[ =C2=A0 49.849086]=
[ =C2=A0 T90] usb 1-1: config 0 interface 192 altsetting 0 endpoint 0x9 has=
 invalid wMaxPacketSize 0<br>[ =C2=A0 49.851103][ =C2=A0 T90] usb 1-1: conf=
ig 0 interface 192 altsetting 0 bulk endpoint 0x9 has invalid maxpacket 0<b=
r>[ =C2=A0 49.852074][ =C2=A0 T90] usb 1-1: config 0 interface 192 altsetti=
ng 0 endpoint 0x8F has invalid maxpacket 59960, setting to 1024<br>[ =C2=A0=
 49.852569][ =C2=A0 T90] usb 1-1: config 0 interface 192 altsetting 0 bulk =
endpoint 0x8F has invalid maxpacket 1024<br>[ =C2=A0 49.853022][ =C2=A0 T90=
] usb 1-1: New USB device found, idVendor=3D07b4, idProduct=3D010a, bcdDevi=
ce=3D 1.02<br>[ =C2=A0 49.853421][ =C2=A0 T90] usb 1-1: New USB device stri=
ngs: Mfr=3D0, Product=3D0, SerialNumber=3D0<br>[ =C2=A0 49.854818][ =C2=A0 =
T90] usb 1-1: config 0 descriptor??<br>[ =C2=A0 49.865679][ T4123] raw-gadg=
et.0 gadget.0: fail, usb_ep_enable returned -22<br>[ =C2=A0 49.886236][ =C2=
=A0 T90] ums-alauda 1-1:0.192: USB Mass Storage device detected<br>[ =C2=A0=
 49.889103][ =C2=A0 T90] scsi host2: usb-storage 1-1:0.192<br>[ =C2=A0 50.8=
98870][ =C2=A0 T90] scsi 2:0:0:0: Direct-Access =C2=A0 =C2=A0 Olympus =C2=
=A0MAUSB-10 (Alauda 0102 PQ: 0 ANSI: 0 CCS<br>[ =C2=A0 50.904357][ =C2=A0 T=
90] scsi 2:0:0:0: Attached scsi generic sg2 type 0<br>[ =C2=A0 51.815845][ =
=C2=A0 T45] sd 2:0:0:0: [sdb] Very big device. Trying to use READ CAPACITY(=
16).<br>[ =C2=A0 51.818255][ =C2=A0 T45] sd 2:0:0:0: [sdb] Using 0xffffffff=
 as device size<br>-&gt; [ =C2=A0 52.035542][ T4134] uzonesize: 0<br>[ =C2=
=A0 52.185834][ T4134] usb 1-1: reset high-speed USB device number 2 using =
dummy_hcd<br>[ =C2=A0 52.475547][ T4134] usb 1-1: device descriptor read/64=
, error -32<br>[ =C2=A0 52.865476][ T4134] usb 1-1: device descriptor read/=
64, error -32<br>[ =C2=A0 53.135545][ T4134] usb 1-1: reset high-speed USB =
device number 2 using dummy_hcd<br>[ =C2=A0 53.405543][ T4134] usb 1-1: dev=
ice descriptor read/64, error -32<br>[ =C2=A0 53.795395][ T4134] usb 1-1: d=
evice descriptor read/64, error -32<br>[ =C2=A0 54.065673][ T4134] usb 1-1:=
 reset high-speed USB device number 2 using dummy_hcd<br>[ =C2=A0 54.235633=
][ T4134] usb 1-1: device descriptor read/8, error -32<br>[ =C2=A0 54.51560=
8][ T4134] usb 1-1: device descriptor read/8, error -32<br>[ =C2=A0 54.7855=
96][ T4134] usb 1-1: reset high-speed USB device number 2 using dummy_hcd<b=
r>[ =C2=A0 54.985598][ T4134] usb 1-1: device descriptor read/8, error -32<=
br>[ =C2=A0 55.255411][ T4134] usb 1-1: device descriptor read/8, error -32=
<br>[ =C2=A0 55.378064][ T4072] usb 1-1: USB disconnect, device number 2<br=
>[ =C2=A0 55.416114][ =C2=A0 T45] sd 2:0:0:0: [sdb] 4294967296 512-byte log=
ical blocks: (2.20 TB/2.00 TiB)<br>[ =C2=A0 55.418627][ =C2=A0 T45] sd 2:0:=
0:0: [sdb] Test WP failed, assume Write Enabled<br>[ =C2=A0 55.420346][ =C2=
=A0 T45] sd 2:0:0:0: [sdb] Asking for cache data failed<br>[ =C2=A0 55.4217=
31][ =C2=A0 T45] sd 2:0:0:0: [sdb] Assuming drive cache: write through<br>[=
 =C2=A0 55.456745][ =C2=A0 T45] sd 2:0:0:0: [sdb] Test Unit Ready failed: R=
esult: hostbyte=3DDID_NO_CONNECT driverbyte=3DDRIVER_OK<br>[ =C2=A0 55.4590=
54][ =C2=A0 T45] sdb: detected capacity change from 4294967296 to 0<br>[ =
=C2=A0 55.463086][ =C2=A0 T45] sd 2:0:0:0: [sdb] Attached SCSI removable di=
sk<br>[ =C2=A0 55.705729][ T4072] usb 1-1: new high-speed USB device number=
 3 using dummy_hcd<br>[ =C2=A0 55.975525][ T4072] usb 1-1: device descripto=
r read/64, error -32<br>[ =C2=A0 56.365582][ T4072] usb 1-1: device descrip=
tor read/64, error -32<br>root@syzkaller:~# [ =C2=A0 56.635529][ T4072] usb=
 1-1: new high-speed USB device number 4 using dummy_hcd</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAEk6kZsgMscqmSgsvt9d%3Dz=
7e69ZGuJAfLuYOV7E6jXJKr%2Bn3Pg%40mail.gmail.com?utm_medium=3Demail&utm_sour=
ce=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/u=
sb-storage/CAEk6kZsgMscqmSgsvt9d%3Dz7e69ZGuJAfLuYOV7E6jXJKr%2Bn3Pg%40mail.g=
mail.com</a>.<br />

--000000000000a9008c0619169f2b--
