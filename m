Return-Path: <usb-storage+bncBD6LRVPZ6YGRBE7UXDWAKGQEY3DML3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D9BC09A6
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 18:34:28 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id n59sf6224091qtd.8
        for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 09:34:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569602067; cv=pass;
        d=google.com; s=arc-20160816;
        b=NsaPa/ErtGhWop/2FJprqPNrUIdpV/n6exRc5NQT2mLaRoJstQ2Rwa6qlZvXRo5rrq
         rjGMEYCUT1vAResqSrw4dz7u5WIPa9K3tx4tswUkWlvBer1mVQIyWVBTyBPycpOtzgP9
         0CjF4yQ9mbOu0SpH33ws7wpjulSBvIFk+VtcB9iCYltBAA5BdQvHVkANVRlLA5J/yuG1
         3R5DT+wVyaKV+1njGbwkEruRX2qP3Dv0xowWwy4N5qMGw9a25mTq/5OpF5Gpvh+aVGae
         mD+IYdcaREGVY1oFq4RKbjrohY1QTMiK3k6sm5qFHBx/SitYWzwvRozHrLUjwgXitd5B
         Au3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=0/LWvTEKhGqpvkYzntpWsSZkB3kNUVh3Op4BjEa36AM=;
        b=0NhXY7DtvSsst2MviM4Rhe0c9tV5eXqzRRSdE17R4f0UjmmAny0omfeILBX2xqLuim
         gDYRtVWCkPn5xTiNLujJ0lywGaNZf71UTDlHNmmkPIdyQ0tIHd+V50FZipChWMwTW//a
         z8IACbLcphhntQpZ5zfKlGq1No/TMLV+50A6sq64e5Wqhm9/P5aqgRu2V3mtxpcbVF5q
         ZSL/jC0z88Q4k6RVhXolrubqG27xw5VFVpDwJ9hh/ndGEDJrOIPbeN9e4O4KOZxEP4bq
         UkCjwnxOjvNta26XwOcEuNo1NLM8pRUEKLiuz9J1zcX6f34Kx9CKNfKPoMGQ/a9gluVf
         6H/g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/LWvTEKhGqpvkYzntpWsSZkB3kNUVh3Op4BjEa36AM=;
        b=fXgI62Q1Vb9xgl6iK36Rb9X2pKQ1132YW2/g2gswpDAetFGpwtQU1zakXqk3ZfbTbh
         fZIoXNKztYRyxCG6vayLZN8UHdvybQCqEemKAciaSfsFte9O+m36YipaXPJcwP8p0Y3K
         6PL3HAyIfwrthEQ5Nbnc1u3xgHUAogPbEkzsE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0/LWvTEKhGqpvkYzntpWsSZkB3kNUVh3Op4BjEa36AM=;
        b=PENMbY8e6Ml/ghOwmeQc4q7G7cBu2jYLEN/l1gcpUy0sfwfx3asEoZ6HNASIuohj9k
         9KeSbjUmcrg7+LIQK20NNkFHP4TyUqx1+0TujgGsn9lOyDciRrdof5MdTmMtsh7SyG0F
         nqaSjLOHmDKYP1U4Bh4YLn68++dABaWDK9RVkzspygtns7OZqOX/lR0RIohKn9EBJO+h
         51GD1cMPPJoa2Vi7REa3iGGr1pVSiG8BXVZxy1Ra4dapgo9KhW0nXtN3dgTyG8eUGCPg
         Fdzp6jcqG9xYwInMFP0yGtcKHCQiY3JwtWPH4y15WSqwKqKuiM1mvA7bEOVEwl0L/jOi
         /Fuw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUomigZIiZprQvjsgb6C8Rn+38i9oZnX+SZpm6gmLnZQg/gPxbV
	JAes3KRtHovquGdeO9kjBGXjvA==
X-Google-Smtp-Source: APXvYqybTJdZWA1x95b2k3oCj/zVDFfy3ONYl3lK5PEv9YvXPf7sHYSjiGf1VP766NLISdwRUiwajQ==
X-Received: by 2002:a37:4549:: with SMTP id s70mr5630990qka.143.1569602067389;
        Fri, 27 Sep 2019 09:34:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aed:2702:: with SMTP id n2ls2013250qtd.7.gmail; Fri, 27 Sep
 2019 09:34:26 -0700 (PDT)
X-Received: by 2002:ac8:6796:: with SMTP id b22mr10190923qtp.95.1569602066877;
        Fri, 27 Sep 2019 09:34:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569602066; cv=none;
        d=google.com; s=arc-20160816;
        b=FREijY5C8W0Z1aLZyhFCINi8Py4/YW/6guhze8igMKCwVnC+CrQGYIu3EFpAC+2vJC
         U00GxofWd/c+d1A0aUFIf6P0xK/8yzJW0qn5JA8/haiNq+ARof6y7s19tR2ym4PnC993
         vU433++BzNokK+o2zhshbEHYqvTIsknufQvCRMatBZwHgr0/Yn4S6eqxCPPRRqhWyTS2
         +592QXSPf8YfT+BKBFw79YDey9wS3sVhaDqw02TR1o6J2sgrwq1Hk3QeJ6mgP9ESxHGC
         1qldFC+B+eFulN4k+jC/JDe7zyyJGFxVwC1/24ooYfGhSUtqYhS4Yvi3hBAI4RO2cf3L
         ROCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=0/LWvTEKhGqpvkYzntpWsSZkB3kNUVh3Op4BjEa36AM=;
        b=0Tngpuw61emWCsaa0QEuC0SgZiripXFHKZ8Jv1/Y1BR7vxZEWsYxegfrni5I7KmvBs
         2xgJw4qrrGb5iBCaZeaFqjtoD/GPnpbN9Xz9gfe7jgx3fPIF4bHiLtI2f3XPmXXoEgf4
         viLzUuR2F24NqKD7ZXQ6lnBWJvWw1vXZbNWFDTpIL8zGfCsXXVfgP4U4RKKc69lu8h/s
         GEZS5Fkf+T8E5yxXkvvgo8UCXlZg5X3bP2ItjY5pp3o/Hu01rQ7c/xlG+rMgAqQb4v6x
         8AQVCUhAyjaWwJUa6nOpEqH4ea1FWujSbMxk8rcXTl7/MY05kzfNFXNWYHEJ7EexILLn
         5hQg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id y204si2555866qka.70.2019.09.27.09.34.26
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 27 Sep 2019 09:34:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 4664 invoked by uid 2102); 27 Sep 2019 12:34:26 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 27 Sep 2019 12:34:26 -0400
Date: Fri, 27 Sep 2019 12:34:26 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Damien Le Moal <Damien.LeMoal@wdc.com>
cc: "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>, 
    "Martin K . Petersen" <martin.petersen@oracle.com>, 
    "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
    "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
In-Reply-To: <BYAPR04MB5816017131A10A32CC54D756E7810@BYAPR04MB5816.namprd04.prod.outlook.com>
Message-ID: <Pine.LNX.4.44L0.1909271218200.2054-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d89addc@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d89addc@rowland.harvard.edu
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

On Fri, 27 Sep 2019, Damien Le Moal wrote:

> On 2019/09/26 16:57, Alan Stern wrote:
> > On Fri, 27 Sep 2019, Damien Le Moal wrote:
> > 
> >> If a non-passthrough command is terminated with a CHECK CONDITION, the
> >> scsi error recovery code reuses the failed command scsi_cmnd structure
> >> to process error recovery request sense. To preserve information
> >> regarding the failed command, the functions scsi_eh_prep_cmnd() and
> >> scsi_eh_restore_cmnd() respectively save and restore the original
> >> command information. However, the resid field of the failed command
> >> request structure is not preserved and reused for the request sense
> >> handling, leading to the original command having an incorrect resid
> >> when:
> >> A) The command is not retried and terminated with an error
> >> B) The command completes after retry and the underlying LLD does not set
> >>    resid for a fully completed command (resid=0)
> >>
> >> The first patch of this series addresses case (A) above by adding resid
> >> as part of the command information saved using struct scsi_eh_save.
> > 
> > Good catch.
> > 
> >> Case B can be observed with a WD My Book USB disks when a read or write
> >> command is sent to the disk while the disk is in deep sleep mode
> >> (spun down) due to a long period of inactivity (~30min).
> >> In such case, the following command sequence happen:
> >> 1) The read or write command is terminated after a few seconds with
> >>    CHECK CONDITION and an asc/ascq of 04/01 (LOGICAL UNIT IS IN PROCESS
> >>    OF BECOMING READY)
> >> 2) In response to this failure, the USB mass storage driver triggers
> >>    autosense processing, reusing the command descriptor to issue a
> >>    request sense command with a 96B sense buffer size. The reply
> >>    to this command gives a NOT READY / LOGICAL UNIT IS IN PROCESS
> >>    OF BECOMING READY sense of 18B, resulting in a resid of 78B.
> >> 3) The original command is retried and failed again, with step 2
> >>    repeated, until the drive spins up and becomes ready.
> >> 4) When the original command completes after the drive has become ready,
> >>    the request sense command resid of 78B is seen by the scsi disk
> >>    driver sd_done() function and wrongly generates a warning about the
> >>    unaligned value reported.
> > 
> > But with the 1/1 patch in place, 4 won't happen any more, right?  
> > sd_done() will see the resid from the successful read or write.
> 
> No it will not because the USB driver does not set the residue when the value
> returned for the command is 0, that is, when the command succeeds after the disk
> spins up. E.g., in my test, I used a 4096B read at LBA 0. With patch 1 only, I
> see a residue of 4096 since the command is entirely failed with CHECK CONDITION
> until the drive spins up and becomes ready, at which point the resid becomes 0
> but is not set with scsi_set_resid(). Without patch 1 nor 2, I see a residue of
> 78B which is the residue from the request sense executed between retries of the
> read command.

I don't doubt your results.  But you need to do a better job of 
explaining how the existing code leads to those results.

For example, you said the driver does not set the command's residue 
when the command succeeds.  But in fact, one of the first things 
usb_stor_invoke_transport() does -- before it begins transmitting the 
command -- is

	scsi_set_resid(srb, 0);

So if the command is successful, even if the transport layer routine 
doesn't set the residue explicitly, the value should still be 0.

So if you see the residue not getting set properly, you should explain 
exactly how that happens.

> Patch 2 is needed to make sure that the residue is set to 0 when the command
> fully completes. If there is no failure/request sense/retry dance, resid is
> already 0 (initialized value) so there is no problem. The problem shows up only
> for CHECK CONDITION + retry patterns. Tests confirm this. Only patch 1 does not
> solve the problem.

But the residue gets reset to 0 every time before the command is
retried, doesn't it?

Unless for your device, the driver doesn't run 
usb_stor_invoke_transport().  The only way that can happen is if you 
use one of the modular subdrivers -- in which case the bug lies in that 
subdriver and should be fixed there, not in transport.c.

> >> This problem is fixed in patch 2 by always setting a command resid to 0
> >> when there is no residual in usb_stor_Bulk_transport(). Note that
> >> usb_stor_CB_transport() does not need changes since usb_stor_bulk_srb()
> >> always sets the resid for a completed command, regardless of the
> >> residual value.
> > 
> > Exactly the same reasoning shows that usb_stor_Bulk_transport() also
> > does not need changes, doesn't it?  Which means that patch 2/2 is 
> > unnecessary.
> 
> In usb_stor_Bulk_transport(), since scsi_set_resid() is only called under the
> 
> if (residue && !(us->fflags & US_FL_IGNORE_RESIDUE))
> 
> condition, resid is not set if it is 0.

But usb_stor_Bulk_transport() calls usb_stor_bulk_srb(), which does set
the residue, as you realize:

> Whereas in usb_stor_CB_transport(), through the call to usb_stor_bulk_srb(),
> resid is always set, unconditionally, with:
> 
> scsi_set_resid(srb, scsi_bufflen(srb) - partial);
> 
> where partial is the command length for a fully completed command (the variable
> name is misleading), leading to resid being set to 0 as needed for successful
> commands.
> 
> Please let me know if I missed something. I can reproduce the problem 100% of
> the time, even though it is painful due to the 30min wait between tests to wait
> for the drive going to sleep (if I force a sleep power state, the problem does
> not happen due to power control the drive USB bridge FW, I am guessing, which
> will wake up the disk before the command is sent).

Please investigate a little more closely into what's going wrong and
present more details so that others can understand it too.

Alan Stern

