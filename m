Return-Path: <usb-storage+bncBD6LRVPZ6YGRBHUGRKBAMGQEH4KUYDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id DD71132F39F
	for <lists+usb-storage@lfdr.de>; Fri,  5 Mar 2021 20:14:39 +0100 (CET)
Received: by mail-qk1-x748.google.com with SMTP id y9sf2554479qki.14
        for <lists+usb-storage@lfdr.de>; Fri, 05 Mar 2021 11:14:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614971679; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkB6ZEiZ9fOKllosOFLRVPFT0LHkw01cQWNeeda5rmm9ofWP6CNFs0pprgxZ+rEHII
         57hbLXFPzdbwACH7O1e18zcRjVWBD7oUsMkzO31rjYVyFVEkWDvuyj50Gv/iaYCLFAD+
         WZOaYAcYYLrwNqNz55GOSFI2g0FWP+s/7wimzo3Fd3jmHvtb1clusH1HKfa1rLkkNIl9
         Rvd47VtA8d22B4KvWW0Kkqhz7KVzoipN8yq8eKz3r5dwYhNHb307tdEINA1skPVxf/c6
         YTSS+8we5UPywZ8wFEtkZoxvjPT1slKQL44oZvXW236w2roqRGKYk5cco8qiYgjdFyWD
         wARQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jlaOpDigXwPmA2PAzQnVtr08fJwSx2rbCoAeusM/q0A=;
        b=j2dMvb3UOu5YFWAawPAv4TtgnsQGqmt06InFS111Ysg/rvXzVLxkl67cjnBDuPG+e+
         3URYTy2+61knWA5wvmvIn6pV56KZ4HKYbPlq+mr1uVxphnxZ2p5yP48jfIgWNAaK4O42
         4LeCrC79oRSWSYMalxi5KortixtS6aK8fYTMLCoo/2DZkTiYGoCQaVxLPkZ9vpFylh25
         7EqHMc7J5M5cTaTF6NBySBWh9zXIS27T/7R1HYyy7S83/lpvl6S7M6MrWtPL9IjjUkQs
         YpHb22nToKdXrLInsNcs4ei/uac2B4tCItWDRF9/CTdyFS1iyB8IlZhtdxmM+oJhycGx
         sJWA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jlaOpDigXwPmA2PAzQnVtr08fJwSx2rbCoAeusM/q0A=;
        b=TvalRKcAyKL8NxYMzofQfQXYt4H9Ue8siVhx0YclIW+RIXy1dYsGp9CkRik4//Vtb6
         K4QsOAgStriz7bCdStWk+fcrG3Z6PEv0QxdJj839zTV6O1pmiNOqHjdq/l7m0Sh9wtqz
         XoLI8ReXlxshd0MzOLcVX40NnP7uKNQOe8Fl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jlaOpDigXwPmA2PAzQnVtr08fJwSx2rbCoAeusM/q0A=;
        b=U0k5Ar+cKNZROXS06r2+6/XVQh000nqAfmsmETbpXX3oJQk18GtnZ+odkSt6CItj0F
         A8dnVUZIrNG0FW0rMLIlDkL/Fb8bqA0VYWBNynbNd7qZZzAiXLWFqWI+QT20mnbYsUoU
         H5ymrzrwXqZMwyV1DNCJMj6nXp525WNaMZzR3L7OOhhcVEs68t+UWG5iFg4PVli2TO/C
         KbDSn00N6WyOOfJdJWVSll9nZc3cDeyzGkfbm/T4jSFVNVPRoloVfhxDaQGDuNpq0OPR
         vBtWy+kXy/jpO/mk/2JUuX2SIl/EgoAlbE05s8PnMOwmwc+LBL2g09tX4lEq+HhUEot7
         A67g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530uD0pXsBtgtpYkaEEQ3Zrrugfs+XFoe2thtvDS8RGn7EsKKa1Z
	7ON22W8en2+FalHkKiMGNLtk8w==
X-Google-Smtp-Source: ABdhPJy7TgxC7ioi0Rbn7eeAr22mi0rQisYbM8Yp7cw8xMSOTyE/RsT8fGbW2ln+g3rBhcgeeMxm9w==
X-Received: by 2002:ac8:70ce:: with SMTP id g14mr10233125qtp.297.1614971678873;
        Fri, 05 Mar 2021 11:14:38 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:4dcd:: with SMTP id a196ls5454334qkb.7.gmail; Fri, 05
 Mar 2021 11:14:38 -0800 (PST)
X-Received: by 2002:a05:620a:16d0:: with SMTP id a16mr10726458qkn.370.1614971678241;
        Fri, 05 Mar 2021 11:14:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614971678; cv=none;
        d=google.com; s=arc-20160816;
        b=p/bBiYAVjGPEyLOvgLENuZK7Z/eHb9IqBNicRswdRtccNYzfUJt2Prd/UvSfFTBXCt
         LRvbCBa1+Ny7Ow8ZssWA5FdVAeF5LGvM9xeDx79fUGCan4nfhDuykvTHStpwuxt8IV4E
         yqBngbFTglQn6RnEpvw81uSoCehFRaF1EcegJ3fB16vrbsSBemjkGUIrwu42KCAUI5cX
         UWlgBuAp3n/9JCdXDd2CgvZo+cqz1P7y8Sk7tCuQa0G8/7qMybGqTmWTFQrsbGmzUxdI
         49ZDLX8/gvCS3f8LFk5d4pkV2SF8Nn2pYgi1SaQlWrIv8BgaP2PdRDrnsC5FgH3p38Fx
         vqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=cFZUPns/SrlS8lZOX3oM2OWoZmfmwELGSst+rdYewq8=;
        b=z1xSz2MJTA4nTLfZ5qtN/y718eCzUa2Jx0eQvVk42z7exohvfqR1owv3RKHyOKvveD
         jBWjxZJgiNUniDQt3eqRRwTsPSkdk2gwY+Pcm3nevsIxSQPWwpOpzKAeW3lfaMrou/rC
         rj2IYaq/RuFjo91r4IRvG873kuglxKMGP7vpk9kv416IfL5wHZYMeoKGc0zKH2Cvox3x
         uEoXkJ0i7pmcH0RO2ey+plbdR0vOzSoqY5m3ygPMpFktHo4UPRA9H0TXMacm4h5stbU+
         YNhqQByKAxCJueSLGWtw7SuvSlX7khXK334987Jzf1ufTGmctMti7YOKBahu0ywSexLx
         Oq/g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id gg3si2260664qvb.26.2021.03.05.11.14.38
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 05 Mar 2021 11:14:38 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 49193 invoked by uid 1000); 5 Mar 2021 14:14:37 -0500
Date: Fri, 5 Mar 2021 14:14:37 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthias Schwarzott <zzam@gentoo.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp
Subject: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210305191437.GC48113@rowland.harvard.edu>
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
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

On Fri, Mar 05, 2021 at 05:54:43PM +0100, Matthias Schwarzott wrote:
> Hi folks,
> 
> I have an issue with my Amazon Kindle. Since some time the device
> disconnects 2 seconds after a sync command sent via USB.
> 
> See also this matching bug report:
> https://bugzilla.kernel.org/show_bug.cgi?id=203973
> 
> My current workaround is this udev-rule:
> 	SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk",
> ENV{ID_VENDOR}=="Kindle", RUN+="/bin/bash -c 'echo write\ through >
> /sys/block/%k/queue/write_cache'"
> 
> But I like to find a proper solution.
> 
> I did various recordings of usb-traffic with wireshark on linux and windows.
> 
> On windows, the device does not disconnect after the "Synchronize Cache"
> command.
> 
> One major difference I noticed looking at service answer time statistics:
> Windows sends a lot more requests of type "Test Unit Ready".
> * Windows: 6385 calls
> * linux: 71 calls

It's generally well known that Windows issues lots and lots of redundant 
commands to USB storage drives.

> After most of the "Synchronize Cache" commands on windows there was directly
> a following "WRITE" command. It seems WRITE commands avoid the disconnect.
> 
> But sending a plain "Synchronize Cache" under windows (8.1 and 10) does not
> trigger the disconnect.
> 
> Windows:
> 1583	14.891478	host	1.6.1	USBMS	58	SCSI: Synchronize Cache(10) LUN: 0x00
> (LBA: 0x00000000, Len: 0)
> 1584	14.891595	1.6.1	host	USB	27	URB_BULK out
> 1585	14.891613	host	1.6.1	USB	27	URB_BULK in
> 1586	14.896866	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Synchronize
> Cache(10)) (Good)
> 1589	15.687209	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1590	15.687353	1.6.1	host	USB	27	URB_BULK out
> 1591	15.687358	host	1.6.1	USB	27	URB_BULK in
> 1592	15.687405	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)
> 1713	16.699689	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1714	16.699820	1.6.1	host	USB	27	URB_BULK out
> 1715	16.699825	host	1.6.1	USB	27	URB_BULK in
> 1716	16.699915	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)
> 1717	17.709334	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1718	17.709547	1.6.1	host	USB	27	URB_BULK out
> 1719	17.709552	host	1.6.1	USB	27	URB_BULK in
> 1720	17.709586	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)
> 1721	18.712864	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1722	18.713081	1.6.1	host	USB	27	URB_BULK out
> 1723	18.713086	host	1.6.1	USB	27	URB_BULK in
> 1724	18.713148	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)
> 1741	19.735245	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1742	19.735410	1.6.1	host	USB	27	URB_BULK out
> 1743	19.735415	host	1.6.1	USB	27	URB_BULK in
> 1744	19.735474	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)
> 1811	20.747477	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1812	20.747699	1.6.1	host	USB	27	URB_BULK out
> 1813	20.747704	host	1.6.1	USB	27	URB_BULK in
> 1814	20.747766	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)
> 1905	21.755419	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1906	21.755579	1.6.1	host	USB	27	URB_BULK out
> 1907	21.755584	host	1.6.1	USB	27	URB_BULK in
> 1908	21.755674	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)
> 1911	22.769205	host	1.6.1	USBMS	58	SCSI: Test Unit Ready LUN: 0x00
> 1912	22.769355	1.6.1	host	USB	27	URB_BULK out
> 1913	22.769360	host	1.6.1	USB	27	URB_BULK in
> 1914	22.769415	1.6.1	host	USBMS	40	SCSI: Response LUN: 0x00 (Test Unit
> Ready) (Good)

Unless the Kindle advertises removable media, there doesn't seem to be 
any real point to all those TEST UNIT READY commands.  Unless they are 
what prevents the disconnections...

> How can I get further on this topic?

Is runtime power management enabled?  Maybe the Kindle disconnects 
whenever the computer tries to suspend it.  This typically happens 2 
seconds after the last command was issued, which matches your 
observations.  If runtime PM is enabled, you can try disabling it.

Alternatively, a number of Linux kernel developers work for Amazon (or 
at least, use email addresses ending in "@amazon.com"), as shown by the 
MAINTAINERS file.  Maybe one of them can get in touch with the Kindle 
software development people and find the actual answer.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210305191437.GC48113%40rowland.harvard.edu.
