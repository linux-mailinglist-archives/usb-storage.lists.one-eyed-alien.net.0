Return-Path: <usb-storage+bncBD6LRVPZ6YGRBUMMSSBAMGQEPISTBCQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id E5909330319
	for <lists+usb-storage@lfdr.de>; Sun,  7 Mar 2021 17:58:58 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id 130sf5390329qkm.0
        for <lists+usb-storage@lfdr.de>; Sun, 07 Mar 2021 08:58:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615136338; cv=pass;
        d=google.com; s=arc-20160816;
        b=I09O//2+jOlWmIzchLJu7sKIsn6l9GmVKa2xKGYUm2GnrfnqF/xQVNtS35nmPZWLH6
         hkmbaEmg85K1K/sIKlEWF9qHecqG9Sdf2rA5u4t6u621CsFI9Fhw/WFv02crMBQQOfZJ
         37Z7m51uA0hFYsomM2qQBcAk1Qsq7eu6vjMzJz0SP6x+uufenOymLNgRvSMr6fukm8a3
         aO+wYkY4JZj4/mVvEZGuUuMJeHHkkne88P8eT6ozNTr8f9Ejvd+McplUhQnT0EPh6G9j
         gSFRWH10Vtu1C+xxA2fKfKPKlD7Pwu5cjPvPwEOtCzz2wopsmh892NK4QESiLpuWRFxr
         4vvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=iYl6OcbeFDDgKX8Kw63uS+O4BGi/wi6MOr15VkqDKlo=;
        b=NrsJBKLSYHUjf35fbMbWGqva7ef0i5lJ04tKfiEuhmKrL6XxCIatU9/TjBGBHMt7FA
         z81ZEoqa00S6I+hd9xi5chbddjfWirp5ErG86hbUhMnnP4fXpPSysEAu7JAuVyRF/t8P
         LqW+GsQnqLjCxy3pEFcrpTdjikYUEre2PVddWLc2FoJYupsX79w7xQQnbdOozMSZwDDl
         z7sDF9YsHknyczt3j+gik4VzSkK/rox5OxSVhh+iWxmbNmGShPdrKrpGWpyvyymiJsrM
         3qUwitzSalZDAU3DkiXEEuzxN76AhzD6S+UQLI6MCopdkMaC1SQ+Uc9l2W40UX2Bgtz0
         +htQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iYl6OcbeFDDgKX8Kw63uS+O4BGi/wi6MOr15VkqDKlo=;
        b=h2TxgA06bctA6q8MtVjXMd3UHS87XKi6PosEXUlDsxFN/vdZs6bxPI0TJj22RefLYG
         ao+1nEwUcrINilAg2vleUh8nBgZ9f+m07Tdbyfz9O46UpAN7qQtpFy54gytMQK6oLT9e
         feK4R4/BlqOD0JRxVcKkV6Amav3mqJDub0TTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iYl6OcbeFDDgKX8Kw63uS+O4BGi/wi6MOr15VkqDKlo=;
        b=UmMl4GJRfruYdKWtrJ+YDiSxDSUJ+IrARZBg9l33iS4dShQAhMV4F3AeDG6jzWS4ja
         TF0JuMM1Fh8wGqySltzdNvaVvESkK8G66V0WHv7WzQzccr0Z4MbXCDFarHuFSdGZeyIz
         lmUxNNENz+U3LPIvMhjsyEf2ER/zAynpGItWZQ5I/oeUUNw00NkmzPSUMjfO59jcwa7I
         CVUmg9gS9dqZtL6av+DBZ4o2GksOq1D4X5GlNKTC8bpzH6Q+ODg/dobaeeTWlvtNFHPQ
         0NzWmJMKzGFcs68mxtdVfPYpD6NxZ9c3ig80ck/b02b6PcF1hWx9tpKJdg7FiE5hvxl0
         sNcw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532KRfdRmwm9bmkYDrumn6PMXJqjOGGqFLcH02N8jP4T7vsiIcJA
	ZN+zBbA81+bHhLidFlVZnCnZpg==
X-Google-Smtp-Source: ABdhPJyyvJ9Vpm/VVh1l3IOajsEbKiRBvmq2Wq458FUR270ZUPO3vwBEtvriEJ3lM6wHFpxklnKauA==
X-Received: by 2002:a05:6214:f65:: with SMTP id iy5mr17765173qvb.32.1615136337910;
        Sun, 07 Mar 2021 08:58:57 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:c207:: with SMTP id i7ls7610694qkm.9.gmail; Sun, 07 Mar
 2021 08:58:57 -0800 (PST)
X-Received: by 2002:a37:8cd:: with SMTP id 196mr16364905qki.434.1615136337222;
        Sun, 07 Mar 2021 08:58:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615136337; cv=none;
        d=google.com; s=arc-20160816;
        b=z+mvR7faxqfLdW2d5iXgW+9gxPsABjFNryariEPtz8OIoDqTeesZ0a/3qLwzrtoDxR
         9Lq3jd6jaJbAwLTi03iksJp/2Rcn5+JPKwV7/W0stUdWfblhE9jRpxtFvx57MM8oPoIY
         UspqrxgQWTjJb/IYQU8PSGydnR0vfxNC53a5hlwnQicG80DByacrQ2DgK2iEFctirsio
         Dhof3VzFRYPUSfDHdtLsqj2QG2hhdO6HCgre66Ia0hqTe0FNv6F8rY+XOCNqylzuVv5b
         B+PyMlTGtPXGmhpi7Ar92nXhLKevRad5GVhkW1woOW1CnZzaFIGvuXctXYt/+KHIsGwd
         1bQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=sUpbFrjUyaC79VdFCbvPRyjScijtxQ4lPkjTPObvyuQ=;
        b=Kwi1qV4YGwXpw6gazpZgdOsSgyjlmckaVqYPvU3QMBhCScn31T41uU4mG2nJbqzck5
         X0wD9i536L/3PtwuH+8/1pYa7eb7IgnqedrUjU9ONwPoAcf1xUQoNcJg+i4MHatgNwm4
         dFgTTz3ierEQF4TDLEEVP0SMtqc9AE77/5elHT6dpFhcBKUNVlVcCdpI7NtiMfl9AGjI
         lzCV8GYMzkW/jBPVYfo/JeqcR45fsxSECqefRI4jhVTVocDKB9+5PXZQ7yvO0VjBjp2c
         5PSNXAzX942sCGO1VorL8X4S1qAr/ajXAl5FOmBX+I9q39lw9KJUE9S3FjRFWNE5EWL6
         zUNw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id o12si5086276qkp.38.2021.03.07.08.58.57
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 07 Mar 2021 08:58:57 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 105428 invoked by uid 1000); 7 Mar 2021 11:58:56 -0500
Date: Sun, 7 Mar 2021 11:58:56 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthias Schwarzott <zzam@gentoo.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp
Subject: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210307165856.GA104554@rowland.harvard.edu>
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
 <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
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

On Sun, Mar 07, 2021 at 05:52:19PM +0100, Matthias Schwarzott wrote:
> This time Kindle is sde again:
> 
> # dmesg |tail
> [83709.973141] usb-storage 3-4:1.0: USB Mass Storage device detected
> [83709.973226] scsi host8: usb-storage 3-4:1.0
> [83711.028665] scsi 8:0:0:0: Direct-Access     Kindle   Internal Storage
> 0100 PQ: 0 ANSI: 2
> [83711.028792] sd 8:0:0:0: Attached scsi generic sg5 type 0
> [83711.031536] sd 8:0:0:0: Power-on or device reset occurred
> [83711.046604] sd 8:0:0:0: [sde] Attached SCSI removable disk
> [83713.145467] sd 8:0:0:0: [sde] 6688768 512-byte logical blocks: (3.42
> GB/3.19 GiB)
> [83713.364900] sd 8:0:0:0: [sde] Write cache: enabled, read cache: enabled,
> doesn't support DPO or FUA
> [83713.364906] sde: detected capacity change from 0 to 6688768
> [83713.368036]  sde: sde1
> # cat /sys/block/sde/device/power/control
> on
> 
> power/control reports the same value for all sd? devices on this system.

Okay.  Can you collect a usbmon trace showing the events leading up to 
and including a disconnection?

Alan Stern

PS: I suspect the SYNCHRONIZE CACHE commands are correlated with the 
disconnections but don't cause them.  That is, I suspect the 
disconnections happen when the device has been idle -- and generally the 
host computer sends a SYNCHRONIZE CACHE command before idling a 
removable drive.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210307165856.GA104554%40rowland.harvard.edu.
