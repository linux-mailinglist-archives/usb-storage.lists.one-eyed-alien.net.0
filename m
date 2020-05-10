Return-Path: <usb-storage+bncBD4ONGFER4PBBUWR332QKGQEQPZ3JEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id A89CF1CC783
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 09:10:11 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id s6sf14035879pjq.1
        for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 00:10:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589094610; cv=pass;
        d=google.com; s=arc-20160816;
        b=MUeYFKTKGxB/TNfdimmB8Nw7utJTaIqWrZASo3kcqnsJ79id5Y6SipoUFBdDypWofJ
         YhdpKBNXA5JPto7nSrH/wdBP0fSjFykh7t/jiuZu/inspbIw2gD15c/LXg1QlZX53LbS
         BoAzbqRf/L1WTj3Z8U8/hjJu/ayzhQ3lssAk08VAvmyXM+ZDxlm6qlUuZ/e1eW5noMdo
         DaEvTW3QHXVZ+DroRIGwh28CG6oUQPCbvJxgU/BwjBpvQEVylbqKQpxSov7YxfrZgbdn
         CNkQr2vFdGI0pjv4BU0STP4wCzZPSXnB56LlBopHot255PudY+7ZrR80jhW2q7qJhohv
         osHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=rrMNJ+Qv3rAMsYssauE8+KdnvRK+UZWIAWPtKS8wZ5E=;
        b=nWIVEOW/IEdzNqsKUt3RyOsyXbcHLyRHBFjjLf7kEJhTAE6gV1JsXjEbAoNrSYxbUb
         /N4h9+LmmnxgW8HMyAS+MGu1qROcEf7urzFBgRnaU3kwUYT2TYyUt1gCdmvC+WXFxQJG
         X4oDfsg9YWW2rbx4Q5XbkpuLmTY1TtQDzgGywrkscCkOeULg38w65kBSny6lZvozBIQD
         mEEBV/bRS8GOf0MxlbSWXHd9KjFAHudmDIwDfOLw/EFxlSzgKA/EsxaQ9e82gLifbk2T
         vafTz+bBITf5nt8oMANWD83qaFZUccg0x10vT1aoNOqVIbi2nnVVcynhAn3QbH1HR1jW
         5Q7w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lCasFaHp;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rrMNJ+Qv3rAMsYssauE8+KdnvRK+UZWIAWPtKS8wZ5E=;
        b=k0h/Tj8WxrrvjWb77C9IpVG2nYECzBC49hf04n7fGH3ymZu9K6yjplZJzB2jwU2hga
         4BFaDGcVOEa4Vd2lfxpN25cLcW/y6uW3bAY/uhrtrWgqeXVDf2FdohRqxK4Epu3Aj1Cq
         QdlayToMt/IZdge6lsvVxFfKktvkw9RE+5maQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rrMNJ+Qv3rAMsYssauE8+KdnvRK+UZWIAWPtKS8wZ5E=;
        b=ruGzcS9ALUYd+tUJUl8byiWavo5Xyu4fTMhs+26iMZHwweDvn1Vir4CdKfrq5CRXSf
         L4r1mpoR7ApFvJrWGdECGJiCxKv28YYHOh8xcbS34/cnW7H0h8bny1Du18iQMfHK6ASq
         u12wQJebEH5w9btgdAMIiCa6DhS/FqqT83OJl2iTv4dQMOQwmMmj81mwMGzWRVBzi4qJ
         2JDBvQwOHrjVY/BWWZDPqMbv/ZImaT5Jd8Scpf7CfudOm/YR1PLFjPZEG/glQ+Tq6qgl
         HFTHa4mj5JoyunRlBDU7m/CunMi1vGT68ya1K5ALeXbF9GtKZ7CSw3tHsMvScinCTJZZ
         jBxQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0Pub/00WLs8Dl+nio82bEmZSmoZc8l6bV5jVoRaCkOxnuRP9tvsIE
	aEhyw3B2X4kDM55MBYeaSnEVlA==
X-Google-Smtp-Source: APiQypK3mlLxveRSViFZPkXqlx/zypdJraXPuqtotYqfTYWu+VNNE5oQh+NazZpv37ZKQqwJlCri5g==
X-Received: by 2002:a17:90a:d703:: with SMTP id y3mr15302615pju.75.1589094610331;
        Sun, 10 May 2020 00:10:10 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:9a44:: with SMTP id x4ls3585337pfj.9.gmail; Sun, 10 May
 2020 00:10:09 -0700 (PDT)
X-Received: by 2002:a62:a50d:: with SMTP id v13mr10319655pfm.153.1589094609857;
        Sun, 10 May 2020 00:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589094609; cv=none;
        d=google.com; s=arc-20160816;
        b=Oc5cLO6Eh3NgMfPBILHzkIO6r+J+0aqogvTZVm8lv2u1R59N65kThnsPAYE6Q+4eZk
         y6H2Q5EnOHZJgvKGQ7ZgHA6YRx6CjZ5dJOrFvof7E9//BD65rFY1+vZUEydXHOEzQv3n
         yzr+rDk8wDwlJ3avfMQuewVNKMkjKLglSuKg69ufuN2KBxo7TD/lSNuIdM9bYBKcyhoA
         26kiXpZEGNfDHhCpOjv0UfqnhSELxtHmTis+LdC+oh/lBgp9EcGo1YU0dV8BCa8W4EQs
         el9wk1p+5tTFoy3F9WBlYt6+m1ZYLKUsShV9Yw9Z/XxtJNXEvNleut+Kd5k3trDQN2GU
         E0rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=HOBl8gaNDw+V3G712N2mxPQDvynt9URL9SIOfp9L2xo=;
        b=ST6BJyWfkSI4wNGZR+S3jXUgSd27TqIiDWUCx2Sg+kQZlKHTljlH9/RO7H8lPpvX23
         F0MXoOA3VQLxHqwHuBhHW1KnO4IKu3zuNZtO2Zd/cweEtgAMgSuMVFnL0DSSURb6BdS5
         PtrZb6SbPJk7eN+n1IaoUnro4BR2bs8TOsaK+swDucWGlOG5qrp7ADg4hqbnQ6e+aKSK
         waZFRK0kyshIigdloRZ+SUOCd2TbDxK19kY++s5R3/pGRzRTNwK8dKRAv6IMcR8zs142
         wcZqRbHqFN6d+SljV4YtFRI9fOnoWpISG6xLwdl6NjKQC38xZKwOyNiTQ3x+AQUq9BXK
         b1QQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lCasFaHp;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id r5sor8941808pgs.13.2020.05.10.00.10.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 10 May 2020 00:10:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:e74e:: with SMTP id j14mr35375pgk.390.1589094609581;
        Sun, 10 May 2020 00:10:09 -0700 (PDT)
Received: from ASMDT.1 ([114.125.230.31])
        by smtp.gmail.com with ESMTPSA id 71sm6378732pfw.111.2020.05.10.00.10.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 May 2020 00:10:09 -0700 (PDT)
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
To: Greg KH <gregkh@linuxfoundation.org>
Cc: oneukum@suse.com, linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
 <20200510054717.GA3365021@kroah.com>
 <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
 <20200510065416.GA3434442@kroah.com>
From: Dio Putra <dioput12@gmail.com>
Message-ID: <e409bbfe-c446-2ba3-423d-c6e198abef33@gmail.com>
Date: Sun, 10 May 2020 14:10:04 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200510065416.GA3434442@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dioput12@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lCasFaHp;       spf=pass
 (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=dioput12@gmail.com;       dmarc=pass (p=NONE
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

On 5/10/20 1:54 PM, Greg KH wrote:
> On Sun, May 10, 2020 at 01:48:24PM +0700, Dio Putra wrote:
>> On 5/10/20 12:47 PM, Greg KH wrote:
>>> On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
>>>> Hi, it's first time for me to report user-space breakage in here, so
>>>> i'm begging your pardon.
>>>>
>>>> I want to report that Linux 5.4 breaking my USB mount workflow due
>>>> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
>>>> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):
>>>
>>> <snip>
>>>
>>> Sorry, but what actually changed that you can see in the logs?
>> Sorry, what do you mean? The dmesg log or the kernel changelogs?
> 
> Either, your message made them pretty impossible to compare with all of
> the line-wrapping :(
> 
I'm so sorry for first message mess, because that message has been sent by
Gmail Website. Can I send my logs as attachment? I try to convenient everyone
here. ( FYI, I just switched to Thunderbird with these settings:
https://www.kernel.org/doc/html/v4.12/process/email-clients.html#thunderbird-gui ) 

>>> What functionality broke?  What used to work that no longer does work?
>>>
>> Yes, it supposed that just work and kernel could talk with udev, not just handled by the kernel.
> 
> I don't understand, what functionality changed?  What exactly used to
> work that no longer does?
linux-5.4 has been never called the udev dependencies whereas
linux-4.4 will call any udev dependencies if necessary, that's the problem.

> 
> Did you change anything else other than the kernel on your system?  Did
> you change to a newer version of udev/systemd or anything else?
> 
I'm using eudev-master from their official mirror github:
https://github.com/gentoo/eudev

> thanks,
> 
> greg k-h
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e409bbfe-c446-2ba3-423d-c6e198abef33%40gmail.com.
