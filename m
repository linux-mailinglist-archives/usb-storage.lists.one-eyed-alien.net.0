Return-Path: <usb-storage+bncBD6LRVPZ6YGRBT5GZGBAMGQECPO6FCY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AE033F8BF
	for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 20:06:57 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id j2sf20473036qtv.10
        for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 12:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616008016; cv=pass;
        d=google.com; s=arc-20160816;
        b=s93YxRscnvwU7JMu4R5ESB5tU8wD7v7KPBqX6yowZOwEMNYWLbIdUleji8xVswtof/
         sTY3niypZ0HWMShQEKwoniRNn8URFVhQ9VhpeE+HroFQzNKsqK9s0dfOmNmZNI/mag7U
         3mH6HErWrX/L7sT41T999wpoQzrV60dUsfnUrw/9NOW3hZo9gwK84aMXknyCMAJ2cTYK
         nfhaPvB9WPos5grQWs/1HoFtHITMYacsNVUDmDfTk8NVUt2qEnto5oB495+Runv+OCIK
         1dgQFrjucJIVXaXAxnRMFNZt5dsEChXNodky9mFjD3XKneOavz+XjRY1HxYDA13KgYC9
         bLpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kkAQnV3KGhOIf5guQjxkql40OUjJ6JSkTK0h7SHfLb4=;
        b=THnFMnwqJuwFRUbQbMfut23tOuDlPGUB3i44qXQp9Zw4NQfJnPE+lZKnFheQRxYjN9
         VFO4dUkri83wfVvKLRXpHIdwzuh8LDhbc/E5dGCgWKPw8/dnwtK6vjgpRhndhv323p+m
         GC0nX7CMlp+LJO7Z0GLWVnqOFMUsxc9Agax0IbbX/yfAB7lefE7TmUaTqkNSfPmM4QaP
         BmWlFLoMJZSq3t8wJe7+LQVC00a6LCRqib+wtN8a+mNAsb6155zahcX5U8tsjcNHp9PL
         Xe92XysmRYHRfvQW8LRBoGE3uGFewIJJrk6Y+mHly6lkTYxg+UVPQOxlFsnauws0tfai
         3B1g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kkAQnV3KGhOIf5guQjxkql40OUjJ6JSkTK0h7SHfLb4=;
        b=ADuDnrx6ToAqeDSxKx4Wa78yZLZDP3S49poH1H7Zi3s4SXSJYqLRbgGeWBZiKP+L1l
         L6A//Ti1d1zmok7NNOMBdGbTaGQ2AGWTvLut9UYinRnjcjz3dvecc3TWr95GNDfeaUIJ
         q3HBZpuAkNjvqHyhsa5PIRX0i+hYgYS268IHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kkAQnV3KGhOIf5guQjxkql40OUjJ6JSkTK0h7SHfLb4=;
        b=qYsa1blMgUy3jg3OAN951tqJp2I+W4vfUZXis+w3+EBg+NV7UX1HAggDZhnMCao8qo
         Nw7T9sdO8urGtdGfVDaWAGAhjYxYaqRkW+96fSvB87d620b5K+7YI+n5mOdgQzqDchFE
         YtEbOPAUYRzDn7Mnl8ee98nxAWw4Q4XHEy0sNKzy5utBq5DDAfngxaAjyiflD7xLw/OA
         HC/GDZKlEOxAP1ozeT1fJ8EVI72WIHyEXHocbvHN1Bbaelwo8s7aqhFXYcUru0P/7tEx
         PbW1SWyinlyAItJtm+XbiURqub0m6mKhvyPQuoBapGFiyINgvumtI9Cr1uzzqA44Mm7S
         LL/Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531cBXgW4xkZcv17HNungzeX4VGaqho37jJHzgD7TdUQ82huy6U9
	zX/n+u1DblAAenShNUKh6R5sQQ==
X-Google-Smtp-Source: ABdhPJwmG0Sv44r2E+H2xNnTY2pOj1LdHomEkAPN7QzDJp36DK1u4AsrgQtg/nspMrZj+dPXMhVm5Q==
X-Received: by 2002:a37:8443:: with SMTP id g64mr717731qkd.185.1616008016081;
        Wed, 17 Mar 2021 12:06:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:991:: with SMTP id x17ls13495626qkx.2.gmail; Wed,
 17 Mar 2021 12:06:55 -0700 (PDT)
X-Received: by 2002:a37:ae44:: with SMTP id x65mr719103qke.9.1616008015337;
        Wed, 17 Mar 2021 12:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616008015; cv=none;
        d=google.com; s=arc-20160816;
        b=BycnXp0AWLstC6ocKiiBpYs5fgnDS4jlXqspqWvq2D8+9C4Z8woxsRzePPOldfOctP
         mYv97qWRw5nPX97HtF46tCsJLhGj73ohrKOsnB/84Y3H/UqN30Eeg+1sLFQpe/n9q14D
         XfaX88EfKCszVpTmXOxP6KnCtti+EXoZMBQy3phpIZeg3td8UdHRGV7dYmgiMUK0dJDs
         i2t0BGm2vcLmwyZqHsrFGL7eUDtOpgn9SkMMDveVm91dAOgVD0S5JUCAYQBlXhycHIF8
         NsNU7ZjL0iEm++bszfYu6OeBECGFJEgyrTQ+reihI0eQMPiMdViCbTFq4HXW3u/YLfkC
         lzXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=6URQUqkP6xLoVb2hEBV1gZA2BljH6p1syLn73dsbKlI=;
        b=KHaGgpX/XD0HCekyVrnii6uXiaokrmnZf2aGTe0jzV2ktdA9JyEIKtjAXwnSaDjySY
         q/MjddDZeL2gfEQUGTERyxEsEET5Am54L+/Wp5ZR8hInMDEL3NzgBbnVDH9FXAsv/raA
         S5DnQKetxpe7rcwChVu8EWgkkPE9hfeVMjMdTwB0fc2qrXUo1ChZpoUZbum1PvSCwejt
         FJwtJL7P2+4WvXkKga6vHS9jzunXfgE3T3nAhOoSP9d5cvFYTeCYJjuliLjSMhN9Oxdk
         NxBFJkkGTS9yuSSeGievJjcpXR04tBpvpgdGol94nBGifvon+7E+4+8EuOsJY+mKlDZF
         ilZA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id o22si12505587qkm.374.2021.03.17.12.06.55
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 17 Mar 2021 12:06:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 499017 invoked by uid 1000); 17 Mar 2021 15:06:54 -0400
Date: Wed, 17 Mar 2021 15:06:54 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <greg@kroah.com>
Cc: Matthias Schwarzott <zzam@gentoo.org>,
  Hans de Goede <hdegoede@redhat.com>, usb-storage@lists.one-eyed-alien.net,
  linux-usb@vger.kernel.org, systemd-devel@lists.freedesktop.org,
  hirofumi@mail.parknet.co.jp
Subject: [usb-storage] [PATCH] usb-storage: Add quirk to defeat Kindle's
 automatic unload
Message-ID: <20210317190654.GA497856@rowland.harvard.edu>
References: <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

Matthias reports that the Amazon Kindle automatically removes its
emulated media if it doesn't receive another SCSI command within about
one second after a SYNCHRONIZE CACHE.  It does so even when the host
has sent a PREVENT MEDIUM REMOVAL command.  The reason for this
behavior isn't clear, although it's not hard to make some guesses.

At any rate, the results can be unexpected for anyone who tries to
access the Kindle in an unusual fashion, and in theory they can lead
to data loss (for example, if one file is closed and synchronized
while other files are still in the middle of being written).

To avoid such problems, this patch creates a new usb-storage quirks
flag telling the driver always to issue a REQUEST SENSE following a
SYNCHRONIZE CACHE command, and adds an unusual_devs entry for the
Kindle with the flag set.  This is sufficient to prevent the Kindle
from doing its automatic unload, without interfering with proper
operation.

Another possible way to deal with this would be to increase the
frequency of TEST UNIT READY polling that the kernel normally carries
out for removable-media storage devices.  However that would increase
the overall load on the system and it is not as reliable, because the
user can override the polling interval.  Changing the driver's
behavior is safer and has minimal overhead.

Reported-and-tested-by: Matthias Schwarzott <zzam@gentoo.org>
Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
CC: <stable@vger.kernel.org>

---


[as1953]


 drivers/usb/storage/transport.c    |    7 +++++++
 drivers/usb/storage/unusual_devs.h |   12 ++++++++++++
 include/linux/usb_usual.h          |    2 ++
 3 files changed, 21 insertions(+)

Index: usb-devel/drivers/usb/storage/transport.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/transport.c
+++ usb-devel/drivers/usb/storage/transport.c
@@ -656,6 +656,13 @@ void usb_stor_invoke_transport(struct sc
 		need_auto_sense = 1;
 	}
 
+	/* Some devices (Kindle) require another command after SYNC CACHE */
+	if ((us->fflags & US_FL_SENSE_AFTER_SYNC) &&
+			srb->cmnd[0] == SYNCHRONIZE_CACHE) {
+		usb_stor_dbg(us, "-- sense after SYNC CACHE\n");
+		need_auto_sense = 1;
+	}
+
 	/*
 	 * If we have a failure, we're going to do a REQUEST_SENSE 
 	 * automatically.  Note that we differentiate between a command
Index: usb-devel/drivers/usb/storage/unusual_devs.h
===================================================================
--- usb-devel.orig/drivers/usb/storage/unusual_devs.h
+++ usb-devel/drivers/usb/storage/unusual_devs.h
@@ -2212,6 +2212,18 @@ UNUSUAL_DEV( 0x1908, 0x3335, 0x0200, 0x0
 		US_FL_NO_READ_DISC_INFO ),
 
 /*
+ * Reported by Matthias Schwarzott <zzam@gentoo.org>
+ * The Amazon Kindle treats SYNCHRONIZE CACHE as an indication that
+ * the host may be finished with it, and automatically ejects its
+ * emulated media unless it receives another command within one second.
+ */
+UNUSUAL_DEV( 0x1949, 0x0004, 0x0000, 0x9999,
+		"Amazon",
+		"Kindle",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_SENSE_AFTER_SYNC ),
+
+/*
  * Reported by Oliver Neukum <oneukum@suse.com>
  * This device morphes spontaneously into another device if the access
  * pattern of Windows isn't followed. Thus writable media would be dirty
Index: usb-devel/include/linux/usb_usual.h
===================================================================
--- usb-devel.orig/include/linux/usb_usual.h
+++ usb-devel/include/linux/usb_usual.h
@@ -86,6 +86,8 @@
 		/* lies about caching, so always sync */	\
 	US_FLAG(NO_SAME, 0x40000000)				\
 		/* Cannot handle WRITE_SAME */			\
+	US_FLAG(SENSE_AFTER_SYNC, 0x80000000)			\
+		/* Do REQUEST_SENSE after SYNCHRONIZE_CACHE */	\
 
 #define US_FLAG(name, value)	US_FL_##name = value ,
 enum { US_DO_ALL_FLAGS };

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210317190654.GA497856%40rowland.harvard.edu.
