Return-Path: <usb-storage+bncBD6LRVPZ6YGRBS5YYOBAMGQEA22STWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 159C033D95A
	for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 17:26:53 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id da16sf25594635qvb.2
        for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 09:26:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615912012; cv=pass;
        d=google.com; s=arc-20160816;
        b=aMTZyOo5DpuQM4bwbGl4XBEeDWCKyXXqPbJLcQnfvemZeXtMRT1age0+NFCi+IapCR
         i1XC1GHoANe+9lHukdhV4QtLadiNuUBn0X3m/mab6n1Mh0Nhdqw3knTAB/1tv26TofxX
         9+PDyc+RDsubLBzYhc4x1XNdIWaIcFwaPMaLIE2AcrkRXJqrCSRjevy25kafEUaDdeqZ
         jAeZrQllRqug04xVV93lgMMg3T1FzkLEcDCLKWgbYa1kDCzl6t7ry1X8M+oaNZwaeC6A
         CJ3rbJCD7jw+EO2CRVDcK+ia2A/H9rLM9ilmh9Fs/LZPQhJ6Q1LaT66igOghhDRYFFjF
         wXjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ZOCWR3zaGzoEkszKvDHEKpWGcId/gDrG8txCnQLqFBk=;
        b=gfVxy9rhbC33Y2QGWNBLOSCDETI0PBk+xmsl5eiTOf9SywYb+bfeV1FsMKdCGURY4K
         kJwkyxb8/hK77A+qd5+eVxqwzcb7Oilz5cSiblSra26eN9YDQbEdlzRSXYrfHtWifm+s
         yfMc4cag2pKYogx/wFM5Hi3OrwznWn3ZgA/jSgaD0jyNzUgRh42/eCIV1Y91YF8Jq+mS
         04Buzg9cKItox3nbO/BJ8LpBxNtLPnl8ExV8eZcRBz/1nZdhaUDuIhuJcH4yijCgIHJk
         Rv/lAtRttzs9WB6Be0pAwC/cLqPgKVdSpCB7/7Hd23mDDbVTw1bLSQAGFVUnVGG53ris
         DNTA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZOCWR3zaGzoEkszKvDHEKpWGcId/gDrG8txCnQLqFBk=;
        b=YQGeIgCA+edtPhxWOqNTJpKxJaBaZWD/JW39s/gj30WfF0cm2KZqlihqnO+fxoyBfE
         0rEv5CIyoIZYpWf7fI/cMz7WRYyWE/i/x+Yd9ds05TgcRyfJaogYcj5QI9iHAlf1Yc1Y
         Wts03ldwNjP9mfE4m2ocFJNmihmYp2xgW8//4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZOCWR3zaGzoEkszKvDHEKpWGcId/gDrG8txCnQLqFBk=;
        b=olb/61I5N0woGblTJe8hlJmg+Rwm7vPmSKwTULKCYqP1pG4qiRGGqcjZlE3EYGlcH9
         U2vkOHao6l128IuNkOSd/b429EcLN/g77ePAj9j/jiPgXOYaNsLN9S/o+owCaFzlSYY4
         Vd2UUznAs4AJiq3Qk410Br4VRI42jvkFtdRe4f25IYoPM0QTRv1miVzwJ2vFiTCf0fhL
         0aI1YnRsF+YyQ5EmpFUq7qvG9HLoV4gUDhqUjeMachPVPL/If73eyI+1FTqITTeH+/+x
         VsBquvfccIPKTsTQL8Hbmz0Px6x+Bx1fpJUkC/bDcTdzeFUzWSct2CEnPrvAW38J+NJx
         yuHw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530lHIlRQjQ4Kms8AGLPyxhSAMSg5aulr+rwqbow1VukAJe0MebH
	2mrkNNlqtJjvpGxaTG43aF5OOg==
X-Google-Smtp-Source: ABdhPJw5JtPI46fezgJdnGwsjB714Mn4z41r51I90zK8c/Do+NIGIpjFPdO3JESGovRYdWJnpx5fAQ==
X-Received: by 2002:ad4:5614:: with SMTP id ca20mr135093qvb.37.1615912012036;
        Tue, 16 Mar 2021 09:26:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:991:: with SMTP id x17ls11226993qkx.2.gmail; Tue,
 16 Mar 2021 09:26:51 -0700 (PDT)
X-Received: by 2002:ae9:f80e:: with SMTP id x14mr422572qkh.1.1615912011343;
        Tue, 16 Mar 2021 09:26:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615912011; cv=none;
        d=google.com; s=arc-20160816;
        b=o6v1vshJnIKM+spxTm6YEi/Q5IY/bvtWfRQX9txj9p1LLWtdSJ1LzfeIsiRgIHbZUT
         w+V9KXRYZhDBX4kDlxrtEsG8lpxb3Jbq6Ik6bnoJdR266nYDXINGjkG3sozUanEAYleC
         Xb0oXP2vRMyDCscxRHjhkq6OJkojV68K1ajRN0KkBZEps809L1t5R4AeVpMP9bSVM0Ah
         sMd6dQwTMNUAKHSFszzcOh6XLJ6FHzFhLVrVv+UHTyanXsrYUfxe6QiWUNxyxHFt8sN0
         2HJmjr4dBCxQbiUK5HBLJNQmPccN5EyvT7G1NsTJF7Wy78ajoleqaFJX/8A/5r9PykQr
         T2Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cYKKFtXPvhQs785QTJUXjAumgXpIciN2dkWqjss8KPU=;
        b=pxUNewz8MFVlyDCrMnqYcCzRkJHvjECjoKVzXxjA9JZ6UNtwAHpGaAxNGBjdN2FgJY
         V109oXcvLsQVJMGFd9l2xkf+zxjbpkgyg+I9q9gcJGF7zc8/4/+XMNlV0S3GPWttKGel
         dNS+vsmSvjpkecvOX9F09LNiL3MIiakOwv3yr1ckpw0cSyc1f/KNxXhw0bVOr7JMwLil
         V0UmVxZN/uTp8F/5NKBKPlx/IeUfVXPK4f6aWIzRgVjKYpX6YoI8+ym0N8bkd/y4IDji
         Aea13l9/q1hBZ6sd2Sm58ClKDKSAeHtJGS2aH3ducMW4MhNAxwW4GwlnC6W08r7BWp1m
         djew==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id g19si7136693qtm.232.2021.03.16.09.26.51
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 16 Mar 2021 09:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 451099 invoked by uid 1000); 16 Mar 2021 12:26:50 -0400
Date: Tue, 16 Mar 2021 12:26:50 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthias Schwarzott <zzam@gentoo.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp, Lennart Poettering <lennart@poettering.net>,
  systemd-devel@lists.freedesktop.org
Subject: Re: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210316162650.GB448722@rowland.harvard.edu>
References: <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
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

On Tue, Mar 16, 2021 at 06:26:30AM +0100, Matthias Schwarzott wrote:
> I implemented solution 3b. This is the pullrequest for udev (systemd
> repository):
> 
> 	https://github.com/systemd/systemd/pull/19002
> 
> Now Lennart asks if udev is the best place for such hacks/work-arounds?
> 
> Well, I implemented it as suggested by Alan (see above). This was the
> simplest of the considered alternatives. Different quirks in kernel has been
> considered, but are more effort to be implemented.

Lennart probably isn't aware how the usb-storage driver works.  It does 
not create commands on its own; it merely sends the commands that it 
gets from higher SCSI layers.

It may be possible to modify the SCSI core, to make it send a TEST UNIT 
READY command immediately following any SYNCHRONIZE CACHE to a Kindle.

However, there may be an easier solution.  usb-storage does indeed send 
a command of its own, REQUEST SENSE, to get error data when a command 
fails.  The patch below will make it do the same thing whenever it sends 
a SYNCHRONIZE CACHE to a Kindle, failure or not.

The only question is whether the Kindle will regard REQUEST SENSE as a 
sufficient indication that it shouldn't do an eject.  The only way to 
find out is by testing the patch.

Alan Stern



Index: usb-devel/drivers/usb/storage/transport.c
===================================================================
--- usb-devel.orig/drivers/usb/storage/transport.c
+++ usb-devel/drivers/usb/storage/transport.c
@@ -656,6 +656,13 @@ void usb_stor_invoke_transport(struct sc
 		need_auto_sense = 1;
 	}
 
+	/* Some devices (Kindle) require another command after SYNC CACHE */
+	if (us->fflags & US_FL_CHECK_AFTER_SYNC &&
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
+ * media unless it receives another command within one second.
+ */
+UNUSUAL_DEV( 0x1949, 0x0004, 0x0000, 0x9999,
+		"Amazon",
+		"Kindle",
+		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
+		US_FL_CHECK_AFTER_SYNC ),
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
+	US_FLAG(CHECK_AFTER_SYNC, 0x80000000)			\
+		/* Check sense after SYNCHRONIZE_CACHE */	\
 
 #define US_FLAG(name, value)	US_FL_##name = value ,
 enum { US_DO_ALL_FLAGS };

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210316162650.GB448722%40rowland.harvard.edu.
