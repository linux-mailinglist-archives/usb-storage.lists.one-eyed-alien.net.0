Return-Path: <usb-storage+bncBDNM5HFD6YCBBEHGU2BAMGQEYKD27SI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D794336BDD
	for <lists+usb-storage@lfdr.de>; Thu, 11 Mar 2021 07:05:06 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id p15sf10401333plq.8
        for <lists+usb-storage@lfdr.de>; Wed, 10 Mar 2021 22:05:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615442705; cv=pass;
        d=google.com; s=arc-20160816;
        b=PeUlPnEuerQ5/tRlxz0AmH8ZO7g0S/1JcZRJJgIep+ffUG8WDLfUMZ2whQpBR6zPtm
         p3NiyXAp9aoiJhOY4Z4q3ad/s+s25ka9b8Y3pKoWzyNYffbjeYxWyCFOtbLs7nFO3drY
         GgT5oWc3yJrfmdogCdCfIp+MiVomueINnNZcBPWY7345Xs5xnodeQ+d68J1kaTH8Q7lq
         ei4T6HuV0C0xQpia6MP0f42VaiPhKgQIUA30toREYGJOTKkb/SEdtPOprBQm2+g51QY+
         AmmhEMY2CB1Pn4k9O72cDpRPyXZELgOizHoYElGYWA78zR+Xix/KcRo/e2OkHcOsltrb
         TDNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=bwpC6X0P08qgPxIGL5lBNYIGgg205N7r2LCjYT3t4a0=;
        b=lYu8vZ5UY3pOdvy6Brfg3Gc4e5MxplSggNOb1zgnDF48DdutRPQSsviomSJFrIeNlE
         xfkHTx0Q8e0tomDFAjyH2ca9ezj7ICJvTphmqEjQgFlyq8SgbRm99aEdRDdvUx5b1tXE
         QEeN1uUZtQoIewDwvNNunkSTHNZGyiIn/XPqI+Hb6jqbW5vb9ea4VsWktJHPbNRkuYWG
         Voxy2vnnPpC7IUV/hWxvmxHsfTUX90AGQbxQSRRroNK4sCxQE1dxWyOODKDYmdhJrjEp
         rM2RGAlEMrn8Ipdq747s6ykqktDDVS282PdHa/HGbEPbl+UJucl/00cy8lNlv0fO7PpD
         DnSg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bwpC6X0P08qgPxIGL5lBNYIGgg205N7r2LCjYT3t4a0=;
        b=RZdkx9XwEsJ2aZyEYRl/rlqjrHA4xk3RyrGGPqYT0XvEnd/H8ek4SBYWBOuv92aUiS
         Q87eHJpe/81NBNTy3yVm9dbgPpbFWqn5Ygo9J93ypD4X9akFR2lC1eAjIwsMngR6ICVH
         G338vkJumLHPbpxnRDu9eXEBdNSwbTXZxcCBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bwpC6X0P08qgPxIGL5lBNYIGgg205N7r2LCjYT3t4a0=;
        b=FQhHy/lgPb6X6GInruWOyYcL3KBXbxCAdncCGjcBQ2vEkQ8VtWoPg19YS9/xZk8CRb
         fdOybKBEpt3JoZlgauumOrmkOX1bESsDG32D4i91O4n3qY0s2ceMcsSvX1Wq9du/vbxJ
         0VJHiVKVRDJ0QCXSz1cUSlarttRqo3ktzUm7oOw6aRMUnMVRkENeDV+sa8rXhBrWA+Q7
         4jeI4I1QVJPreWExP0oTooYMlhACZvRmbGWu6tfqMMY05lGyBQIa/fBtTOAJAvCDKsZg
         +VoOQENDp8LKoAX9H2ojFItJpPWQh+Al5fub4loM2nzV4FVFfRS6SH7WGoOtJYolowdh
         MitQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531aV96p3bMNldX4yrRoUQkAzK3bXtoAb3qW24AG+AZNf9NxUUJc
	o7mhuvZc1uYcRUtDEoFNicLNeQ==
X-Google-Smtp-Source: ABdhPJzBtrVHcy0sKL8zDxktq6IwBFkNkGF3ij9oO25DTAgQ1nBQKZbx3nc2UQzwyz6hySuhlrJAoA==
X-Received: by 2002:a63:24d:: with SMTP id 74mr5911171pgc.98.1615442704648;
        Wed, 10 Mar 2021 22:05:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:2286:: with SMTP id b6ls2534138plh.11.gmail; Wed, 10
 Mar 2021 22:05:04 -0800 (PST)
X-Received: by 2002:a17:90a:db49:: with SMTP id u9mr7569523pjx.181.1615442703902;
        Wed, 10 Mar 2021 22:05:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615442703; cv=none;
        d=google.com; s=arc-20160816;
        b=lxU9GJ2yAxYUzrgls5hOnANPB+DDsk5dBeL6FCxhgP2eRmszh3vSC0diPj54Q828L0
         EV+cQeRqeKIY/wBEoq+OROLM1JF/9C/G1rfq9uxI7rG54AI2LApnkbCSFga+6VPlAMEo
         5OaLboxZAoe+fJksWCsjf5MpkiqnaifVY96sAJXlGzexLzJ35k8ORMJucBWnSsY1xvW8
         sF+svOxg7B7eyIOQhJMcy8WrOEuWsjRpLctMYGjRloyhGladhTVcevM74fZ+zBH93Qw1
         w7mfxuHDxGGkAUCdf0b5zEnhYxC3pEPFWY5w9U6ufEaZnEQ/yo+jI1Zv5iTbdfV0Zhwp
         aX3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from;
        bh=gOG2da270npB9DAA/PkYx1NyGQRsAZjKsRIcFG2WQA8=;
        b=X9D7WvgHpbinBA0yd2yRO0fVUpBoWiJKzV277RhFiw3zNe8Sz35LBBGAhKxMyqrVC5
         +3Z6bzCR73vMvv6zGQOkqC4CpoDMCuFkYtJ+wGg9i8XKtx9n5J/gvi9RW3Dt57jXdj/9
         OmQsWFX2nSINN9hAM4GztHzkVeT/u8ejvOWUNlU1lw2lhIs79sq3efAzMhnqnZfNGHAm
         MlepT6FSlIW16IJwMLCuVsc9hbv4Ub14AUlNZetzLjxCyD8RI2gLohAWTVnsjnznCo+q
         ywLsUnHJZVTT5KApvlgZiU65a9NiVFUxQJhLP8ryfr6kiqp0DsMR4lOP2Zu0qWIKx6w6
         Zs8A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (smtp.gentoo.org. [140.211.166.183])
        by mx.google.com with ESMTPS id k128si1656550pgc.236.2021.03.10.22.05.03
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 22:05:03 -0800 (PST)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) client-ip=140.211.166.183;
From: Matthias Schwarzott <zzam@gentoo.org>
Subject: Re: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 hirofumi@mail.parknet.co.jp
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
 <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
Message-ID: <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
Date: Thu, 11 Mar 2021 07:05:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210310214648.GA236329@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: zzam@gentoo.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender)
 smtp.mailfrom=zzam@gentoo.org;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
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

Am 10.03.21 um 22:46 schrieb Alan Stern:
> On Wed, Mar 10, 2021 at 09:56:04PM +0100, Matthias Schwarzott wrote:
>>> What happens if you set the value to 1000 before running the test?
>>>
>> I tested different values. At 1000 it still disconnects. At lower values it
>> no longer does this.
>> I tested 200 up to 900. Even 900 ms is good enough to keep it connected.
>>
>> Btw. it is not a USB disconnect, but it just seems to plays medium ejected.
>>
>> Out of interest I called "sg_start -v -l /dev/sde" after one of the failing
>> experiments. That made the Kindle go back to connected state.
>>
>> To me the above experiments show that enough TEST UNIT READY commands are
>> needed in the 2 s after a SYNCHRONIZE CACHE.
> 
> So you have found the solution to your problem.  Congratulations!
> 
Thank you for your support.

For longterm I think it should work automatically.
Some options I can think of (ordered by my preference):

1. Kernel sends one or more TEST UNIT READY commands after every 
SYNCHRONIZE CACHE to a Kindle device. Regardless of triggered by kernel 
or by some user code via ioctl.

2. Kernel automatically chooses a low enough value for events_poll_msecs 
if it detects kindle.

3. udev rule is added that matches the Kindle and sets events_poll_msecs.
   3a) SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk", 
ATTRS{product}=="Amazon Kindle", ATTR{events_poll_msecs}="900"

   3b) SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk", 
ATTRS{idVendor}=="1949", ATTRS{idProduct}=="0004", 
ATTR{events_poll_msecs}="900"

4. Kernel sends one or more TEST UNIT READY commands after every 
SYNCHRONIZE CACHE to a device (without matching).


I guess options 1 and 2 require a new entry in unusual_devs together 
with a (new?) quirk.
Option 3 requires to get a new rule into udev.
And option 4 is ugly as it changes behaviour for usb-storage or scsi 
disk device.

I would prefer option 1 or 2.

Do you know how high the overhead of having more TEST UNIT READY 
commands is? (=How much better option 1 is compared to option 2?)

Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/841a9a54-78ee-ffaa-fc3c-12defcf43b36%40gentoo.org.
