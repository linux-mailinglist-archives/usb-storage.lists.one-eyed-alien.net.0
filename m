Return-Path: <usb-storage+bncBD6LRVPZ6YGRBQWLQL2QKGQEDEE4ILY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id B54F41B4E29
	for <lists+usb-storage@lfdr.de>; Wed, 22 Apr 2020 22:14:59 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id m11sf3713800qvf.20
        for <lists+usb-storage@lfdr.de>; Wed, 22 Apr 2020 13:14:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587586498; cv=pass;
        d=google.com; s=arc-20160816;
        b=R1zi+3QDY1MhJBFNxaz7dn4HKibn1g4kdcSJ5kMfTrRVqrdaupLxUIQqbQMNmbt9R/
         9SjByyR8nZbrkMKCDfSRpq9Jw56AkJ0dfizd8Kw6cnDgRec1v7B1hKJ5XVxKlbcvVFZc
         PM+1TmAgVbq14dtHP42YfKg/fH2KUixLxBXvRntCEuuFpIE4TRPa02IK4K5rAAnUG/Iu
         oS+9GC8iVAVZGnJRgxQ2Di9PPSmoRha1D3bL4Bk4KYQxtvA9GEFSbbveOntwlmU4ZUvp
         dszNC7m6hsvvbmKn0dqYloB5NiHlCO5minL0yqvpnmRek5EdU4bZ0mJzmH+q6Ey/fyrq
         I2AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=z3yQdo0tGqPtpkzUYJtLD4edDCq0w9yzd65/Kx1xsOM=;
        b=NMklfUOERzXxJykyJ8lM39DPg7W9QnxQF8fOp58fDIXEJfRnrcfqFFP76OAMa7k5hT
         b/T4Xo4r5jF5Y3KPYf3W31rB8CRdUl8COMuOy9XFI202EXCtiPayVsmKHSHWKhiYj2Ei
         uix574T0f+8meWpKY23HkEg/qsfZ1gTnhAQ4kBJati+23yiT2BgPFlcET+PqNIGPEiJ7
         XscWMUol9ILEIZmw7LsU6iBGbLu6xGdRi+oO+UgsK4Gfhs5JXuOIKjUrG/MRQphHGEi7
         uCzXGht2LqHXg8Dlloi9DDTvn5mmi9uXl03bqZLkNCz6F4YvTBBx+bYlfkXRKmEzDxGH
         1Q1Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5ea2e99e@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z3yQdo0tGqPtpkzUYJtLD4edDCq0w9yzd65/Kx1xsOM=;
        b=WcEioVrhtWw6gUQeQgJRik+tvfxuxBPNH3N9aQEgYZwkbPuPgoDG4yLgPLgzFZTRLg
         2mif/Ez82iUmCgbIyMMf7VBwlJiROqoNT8vP3v+bluRyj2DGWR0e+z6HPSRJ/x/TcrfK
         t8MMGN7JCxWKOcod9v8rbdTP4PneTg3Vu/zwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z3yQdo0tGqPtpkzUYJtLD4edDCq0w9yzd65/Kx1xsOM=;
        b=S9OnLMevURdVdN/+tUvuudyIPEuthq4NnkQ06ACt4v+aY5MovRr0n7sOypDT7G0XZf
         tTRNdY27jZBj8LgIZpAdsYTnWTHiAgvfBZZNAU7CAJQsX+OGZij5vHlZISzOcq3xAMql
         E86y2cPNIpMC5aGN0hAejFHr2ZVdBvH/nwbkF0uD+eX0z4h+iQJ4XcBopxpOlz/sL5j4
         V8hfSYxThlTvQxjvnL40FkXsI6LVlP36lJpHWX4Cfmpz7GUrocccSpuEyst3Dif9Iomq
         ZGvCGv3t2aZMPKBrsJYvAyNMLLJGTh2Bmak+hUKjD8yzxD7ktIXydgQluCFV47g0XjsX
         Fh3A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuZCOmO9zqZXMuYwZpZCwk6MbOcySB6kmaG33TLLzeQGXCO2fPBD
	t+9HdOEapNjF76eU1JZEgiPTfg==
X-Google-Smtp-Source: APiQypJrmJ88SSZVUkTVmYGh0zi3tbxGP3wMwGvqXQiqdq9Oa/cUCog089BzKtqGCUl2BaAVezFSwA==
X-Received: by 2002:a37:e112:: with SMTP id c18mr5819qkm.467.1587586498780;
        Wed, 22 Apr 2020 13:14:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7542:: with SMTP id b2ls1859764qtr.1.gmail; Wed, 22 Apr
 2020 13:14:58 -0700 (PDT)
X-Received: by 2002:ac8:1904:: with SMTP id t4mr383589qtj.367.1587586498167;
        Wed, 22 Apr 2020 13:14:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587586498; cv=none;
        d=google.com; s=arc-20160816;
        b=Erys5Dtg5sPqLu8/h6BRmh3xHrSuPivP0IGo9aq3vo6spK5p4Q/E4m0LzpnPGa0pfh
         tPw66CLLFk4YOOlinU3BZlc3oqwArset9YvLmnB0oBZVVCbmntcs8z9gWnW8NWOQONML
         NvkoP0O5WEgmRQ7Q2NYA6SPfe3fIyFyrGOSrZelcxjncE0m0pHGS9oP0FHRYOh9/2qma
         aGvcqkby/91vrjjEmvIQ8Vrde1isbxA06XvXAnRyEGrOcfdFsydG476t0Vw5acmnPnYo
         u/MBNYWDfGvAyMHMHtkc7a/gvojscKvWSiWVkoEPfGquUi0WB2YLXrV3Hwwh084a6HY1
         2P1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date;
        bh=z3yQdo0tGqPtpkzUYJtLD4edDCq0w9yzd65/Kx1xsOM=;
        b=m67Dey8nHgQMV24AkV1WLeFqaiAfMZG0QzehSoneLN7B34fQ0BFFNWzcF1I90X8TkT
         I9wuAd6KvYa5EqMdnTMFUeE5ELaQhwmVv9eU3BRK8eiSsWLR6ivq073X5dO7glB4+pUY
         YX/pTnZ4ANbvv9Ka8BRmdRyPQRsZKZQZXre+EqEwXp/1Dy5b2kJpPD1Se6trMbpoT9hE
         f9ddmeVVxD4LYKN4yIOfGPf1KBoaCHpXDoS9xGc8vh0vn7Su7j4l6V/D/hiCLaH7fbCb
         SbPWaxL3B/Wxv5R4yg3vahIib4NpISj17doFsWgpbfvJ6Gwh6/WJudRSi1bWtDefuc0X
         rItw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5ea2e99e@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id o4si47048qtt.59.2020.04.22.13.14.58
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 22 Apr 2020 13:14:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 11303 invoked by uid 2102); 22 Apr 2020 16:14:57 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 22 Apr 2020 16:14:57 -0400
Date: Wed, 22 Apr 2020 16:14:57 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Greg KH <greg@kroah.com>
cc: Cyril Roelandt <tipecaml@gmail.com>, USB list <linux-usb@vger.kernel.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH] usb-storage: Add unusual_devs entry for JMicron JMS566
Message-ID: <Pine.LNX.4.44L0.2004221613110.11262-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5ea2e99e@rowland.harvard.edu
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

Cyril Roelandt reports that his JMicron JMS566 USB-SATA bridge fails
to handle WRITE commands with the FUA bit set, even though it claims
to support FUA.  (Oddly enough, a later version of the same bridge,
version 2.03 as opposed to 1.14, doesn't claim to support FUA.  Also
oddly, the bridge _does_ support FUA when using the UAS transport
instead of the Bulk-Only transport -- but this device was blacklisted
for uas in commit bc3bdb12bbb3 ("usb-storage: Disable UAS on JMicron
SATA enclosure") for apparently unrelated reasons.)

This patch adds a usb-storage unusual_devs entry with the BROKEN_FUA
flag.  This allows the bridge to work properly with usb-storage.

Reported-and-tested-by: Cyril Roelandt <tipecaml@gmail.com>
Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
CC: <stable@vger.kernel.org>

---


[as1934]


 drivers/usb/storage/unusual_devs.h |    7 +++++++
 1 file changed, 7 insertions(+)

Index: usb-devel/drivers/usb/storage/unusual_devs.h
===================================================================
--- usb-devel.orig/drivers/usb/storage/unusual_devs.h
+++ usb-devel/drivers/usb/storage/unusual_devs.h
@@ -2317,6 +2317,13 @@ UNUSUAL_DEV(  0x3340, 0xffff, 0x0000, 0x
 		USB_SC_DEVICE,USB_PR_DEVICE,NULL,
 		US_FL_MAX_SECTORS_64 ),
 
+/* Reported by Cyril Roelandt <tipecaml@gmail.com> */
+UNUSUAL_DEV(  0x357d, 0x7788, 0x0114, 0x0114,
+		"JMicron",
+		"USB to ATA/ATAPI Bridge",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_BROKEN_FUA ),
+
 /* Reported by Andrey Rahmatullin <wrar@altlinux.org> */
 UNUSUAL_DEV(  0x4102, 0x1020, 0x0100,  0x0100,
 		"iRiver",

