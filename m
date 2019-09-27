Return-Path: <usb-storage+bncBAABBU5ZXLWAKGQEGCQGMKA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 583E9C0E57
	for <lists+usb-storage@lfdr.de>; Sat, 28 Sep 2019 01:35:49 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id a8sf2236995otd.7
        for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 16:35:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569627348; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMAEkJFpISMyXmjuc8o0rXKWcSfPgE5k8qo6emxcC7bsH8nY7YhmUstWQru7tuyk8v
         ZP9ZXoq+63hIk1LUYgZoCeysZoFM4NSgoxbTmHnJ8yCZ4v3E6zFAMQaFwnZ32nWwOBS8
         QS3ah08NWqdtsf9638BxQs9YFuk9RUncVH+3QQx/yuhmhbNaNEAGhG7ueA3LjEFoblA3
         uvSMa5OzhOXWoZ44h2b8+zieW7ZthG6Z7NMtTAWIPOQ/2J5BqQ7wcrA+Ba89OacMuytq
         ACLJi9bkHkpwJ494vvlsfidOBusD5QFAOCEkgza5AR2AeCg2akkdCzCSu4CtCbSxQGXq
         9bsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=Xkv9joO+nEGPMZYS8gINK3jwSNzQ9byxlrGWubSk96c=;
        b=tYuxzAX7Cp8nxZuulSNVb4K7UZJbOhrW1BX/tJ+LdFKVWYS9Dl/iyeeg4aWk3Wi34O
         lel7gkryDB9hO5cdBHzhnjMA9s6l37hXSWYw9sAvaOyQhMypUpctTaKpiO2xTHHP4vxe
         yGOVDCAAOtFUMC+eGshKJBrADfDNtBhPFvS0oDHUyKdFsEOmQ7pmlg75fZQOXpZIjdoT
         ep8YLVX4cmOlQzp3ZHx4jywnKBcjX0Kxz2MRvnik8Wml9lSfvDyK88eSU5s2kK0Tk0tk
         VU0Pt0dvKwywzHTuORHFmF0wdH5ZEmnzUYVNHMfJ7xIaYLTQv/SG1SqFcBVJrc7fjKHK
         SQLA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xkv9joO+nEGPMZYS8gINK3jwSNzQ9byxlrGWubSk96c=;
        b=Q7wr5ehwXcwdr2x3nqNrqzsydmBLZ9o3Ijq24O0W8v4QhYtfGrbB5ZqBeQEn/LFTgs
         JkRqavyCjR8MDHL4ZCP/Y6PK06wD4V+S3SByqT9mlPF8+kOWuXiWS5C5CHcQYPXhbp4H
         FC/E10P5eDCagOHgAs1Acm1HIX0Ek4RCD0DpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xkv9joO+nEGPMZYS8gINK3jwSNzQ9byxlrGWubSk96c=;
        b=ahNchMxbxrocs0yUWYiVkKGnmkIL5vw2u/AJYMkS/dpTTAcTgTpkpEqhmCUyhpKulu
         bEZy87ebf2Cy/iahDEwDIYPhSfWZsFGRM3GL3GMUN8dqH1pw2qbJKtBf/2rmet7FWbrH
         MnhWrRZuKes4j+FqyQsDIfPMhRgMQ7MCr6e+Kxxbn8wKzGK2Fz1psxPsj3d1hQ0ctLby
         +h+OjmjkHGR3pGY3agmuAxgQcuVIpL6XR8qg3UDoTNZLDTuoJ0zLkMjSegNB9NbpISvo
         sYtg5BwVzGKTORQs7Dp1ko13Pu6Cj2uT8AcHuFwc/BYdpDIsNOEspjQLXzi1j6ADXBJu
         T9FQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVNrmVIkYGWXdpy1EGGheuGhZ341IdCrMBgDQmYY5oPRBo0N/NX
	c/2JlVVbspxdCUGHsl0H+1DC3A==
X-Google-Smtp-Source: APXvYqyUIYqQXcpsK1jjDuJf/tKwukw5hyDdzitpUFkNZyPuZJjOY5YawdkMeGasfUv5uHvHDfeXqQ==
X-Received: by 2002:a05:6830:1592:: with SMTP id i18mr5502039otr.92.1569627347985;
        Fri, 27 Sep 2019 16:35:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:4783:: with SMTP id b3ls747668otf.5.gmail; Fri, 27 Sep
 2019 16:35:47 -0700 (PDT)
X-Received: by 2002:a9d:4717:: with SMTP id a23mr5471618otf.128.1569627347782;
        Fri, 27 Sep 2019 16:35:47 -0700 (PDT)
Received: by 2002:aca:90d:0:0:0:0:0 with SMTP id 13msoij;
        Fri, 27 Sep 2019 16:33:55 -0700 (PDT)
X-Received: by 2002:a92:1598:: with SMTP id 24mr7461140ilv.60.1569627235312;
        Fri, 27 Sep 2019 16:33:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569627235; cv=none;
        d=google.com; s=arc-20160816;
        b=J7bw7QoUL4cwLZGUXKG01/ZmgFQjxmPYeQUbinKfejDUbIQ/198bSZ7IZeM7OzAmf0
         5bKzSL9NSZ8AkOv+LD6sR+1o4otRTO/cNo0wIjgvU5zRei7laHsFYfqMZcTBQRh5/DtP
         aikeWpwsXdH94lnck9dAj6nmMk3qjK+oVmjDa8RFEGoGOeib15IUCingtF+hh29cjg3T
         mDoIib6xWvgOT/TepQi81g8urnBPjVblUXktHlD/6GASYnZmrZlwAPbRaOIDeuUYx9NU
         lcJVR2ubV7toFKsTU34xNOSyq+IU6BOfjraraip0T/+P2S/xjde+ysQMHCFerc0f2Bjg
         dDCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=fXr2lpqfCEFUBt6WUGyEp2ax/jKwrahEDG8qlbbM/zg=;
        b=be50OG5CVAfsQ4f4SK2/5Q427Ak0n9Chjswo2cB5szQvSlByrYUw0UwTwVQ9wOl412
         YHJcDPjSMt1K+es/IHPkntYMXFUSZVGD3jl1LaeEPg77WVILtDAX3fTLktQtpKQIwLvB
         68uqJNT/bpZwBcVAODUe2oM/FUgMbql5Rd3uRjdEyGlviXKF8swzLr8WjPzsJ1MqL2JW
         3e50prz17BLSfmvzQOAjD6UPKBS/dgn8E21DI6eXawiirTgY/nAg9o5d5K5PIR23jfDt
         yahF8cnDHmB8cLbrQBKQS7GZca6vxRs2ima8gx8g71PmQe5o41ZXsQ8q0oRd0QiEIUWr
         rPIg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by mx.google.com with ESMTP id b2si5041956ilf.117.2019.09.27.16.33.55
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 27 Sep 2019 16:33:55 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id 6F79829F44;
	Fri, 27 Sep 2019 19:33:51 -0400 (EDT)
Date: Sat, 28 Sep 2019 09:33:59 +1000 (AEST)
From: Finn Thain <fthain@telegraphics.com.au>
To: Alan Stern <stern@rowland.harvard.edu>
cc: Douglas Gilbert <dgilbert@interlog.com>, 
    Damien Le Moal <damien.lemoal@wdc.com>, linux-scsi@vger.kernel.org, 
    "Martin K . Petersen" <martin.petersen@oracle.com>, 
    linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH 0/2] Fix SCSI & USB Storage CHECK CONDITION handling
In-Reply-To: <Pine.LNX.4.44L0.1909271004470.1698-100000@iolanthe.rowland.org>
Message-ID: <alpine.LNX.2.21.1909280906530.76@nippy.intranet>
References: <Pine.LNX.4.44L0.1909271004470.1698-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of fthain@telegraphics.com.au designates
 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

[snipped selective measurements of word usage]

On Fri, 27 Sep 2019, Alan Stern wrote:

> 
> So I guess this was never defined precisely.
> 

The O.E.D. defines these terms:

	residual
	a. [...]
	n. 1. a quantity remaining after other things have been subtracted 
	      or allowed for. [...]
	   2. [...]
	   3. [...]

and

	residue
	n. a small amount of something that remains after the main part 
	   has gone or been taken or used.


So, writing "residue" could be misleading as the connotation is that the 
remaining part is the lesser part.

I think that's probably why the term "residual" gets used in finance (and 
in SCSI transfers).

-- 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.LNX.2.21.1909280906530.76%40nippy.intranet.
