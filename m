Return-Path: <usb-storage+bncBDNM5HFD6YCBB2XEUSBAMGQEFO2G7VA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D94334934
	for <lists+usb-storage@lfdr.de>; Wed, 10 Mar 2021 21:56:12 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id k10sf8904536pfp.15
        for <lists+usb-storage@lfdr.de>; Wed, 10 Mar 2021 12:56:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615409770; cv=pass;
        d=google.com; s=arc-20160816;
        b=pc0vlJLhtw0J6FLDK3MEXxD8LQjE69JHGXkhIlxWaMER1DJ8ALjsqmVUmOXq3/eVxG
         UWNOxPeK2XrHcoRTiv38Vvb8vCSso0swQMUH5KpLD3KztNP2MiUbsof95MzV9p1Xphi8
         XwVrmydDp9Z+upwCcF3aApOY7gjbfcRgXcfGUdyxBf7ybmNY4+FF9ds7ruddnGSa1y9Y
         d+3H73m1ZyRXBP5RUnWCmqLNgu03MW9kD8SLxxyfEbnMTmVqgo3vryzvTGk3PFMHtgw3
         j9Pt5n7Y94rBMiLwX1ll5TUC9mjBl0lfDyteTy2xNJlfH3y2IKIgjl03DKp39mdJTI15
         FvIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=lrL+AQETiiAnS03s5CEgVAXR5keb4Cn4DWTF9vWCoJI=;
        b=XtToy5i87w/dXQJtKEu6YjqJjyRAEx52i2J9lB56xG2wakG+YotIGMtsKFhHN8Vn+A
         94XWSNKMPCLPWnPWJN+1GHl59Ex2uztyrlaSb9U7rcI3L+byShZnewgB3/+GazPDJxOR
         2EP2bpArBqBKjKSAZxZjBl1WEUPNyJ9fS/pl3sDN3GlX/ysNb3qtDcYE66NdaKwFkLGD
         0yHWftBRIhvjrCT5DMNGIklaWydr/DMX6qF5keQvFnQ1P5m4JZ8d69yEXB14fo6ocvug
         JZvaygaOPGvs+kxHML97fnoPuYICpS/BZc5aYNJH+TQstPJWuRjThhxnOpl9JFT6ypOO
         d/6A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lrL+AQETiiAnS03s5CEgVAXR5keb4Cn4DWTF9vWCoJI=;
        b=VJAdSGEXkR78/81fLMK+y7W9Jp4CPQT7/a2tb2o0q4ceNcvdJ4uu1+Rfszlrbj9QTU
         prYiYE638CH5Ba7HHGli+pcLCd4gwNDGzLx28VWLih45gkC7zwaS1ojyMGZzFud8SL/J
         lCndD/oolCeZReSKFG2Qk7r5ugXfSCr+0wOsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lrL+AQETiiAnS03s5CEgVAXR5keb4Cn4DWTF9vWCoJI=;
        b=MAr1FPKehuJ6W0Wvm+n0JxGooHIPhdBI06437fOOjU+0PzwpG04MkCbFGSX4bn+ZEc
         09OqvB2uhGvkO0sIgtd+YQQRaGQBhXM8ocdye1zrmPcbS/vIITUZ/B1HEl/5QROtlVZv
         xryFeWiu00hgIHBmzNSTOo0A5HYETcbW9Vgz2ArngroxwR5M7uhxVZX0Oo2Z6QXjWpOq
         OjSzOmPJPDia7kb1faFJTIZiqnn/UxzE0MS4APiQ/GlN5+yLUH+8eWp8PXY9Z/S0k3Uz
         Rsgrr2b4b9uMMcMrg6rPKit71ShYirEuiW2gtaC5HKkgdKM8n7L4+HL/28jHnThle01V
         aM5g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531Co+8F1R9DYMr8p/jMGc8Q1m4wv9nrqhYFLaGRsTfa5OO9Tr0g
	pY7f3c81tLbMdDFCUz0NWw1tJA==
X-Google-Smtp-Source: ABdhPJwgSQFsVTwQWTacbIAe4ks0idky1ZEuH0zG+4lPQFrVH0q7M4rdganoqNkKA3wjuEYv7GW7AQ==
X-Received: by 2002:a17:90a:2e0d:: with SMTP id q13mr5554899pjd.225.1615409770693;
        Wed, 10 Mar 2021 12:56:10 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:4108:: with SMTP id w8ls1393927pgp.7.gmail; Wed, 10 Mar
 2021 12:56:09 -0800 (PST)
X-Received: by 2002:a63:1d1c:: with SMTP id d28mr4157188pgd.216.1615409769500;
        Wed, 10 Mar 2021 12:56:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615409769; cv=none;
        d=google.com; s=arc-20160816;
        b=GDeWBPGEmGIKs99aUPmDeeuFL1n5h/c0owZyt69O9WpCfJEMr9kSFRzcP+K2nNr43u
         0l9vkBKwRcfnbteTdh2QczavrOp3yxvlVE6tT9XUSJMqLRjRjS9VvoICFnxp0/jLY2RX
         yXrR2mvnG5OsTvAofSv1XweRRjeVBb0BRnoLixCpo7z7HM3XdyRjx/zWSvGZAe1Ng6PU
         8JcouZv+W4qGFeyDfEfir2Jv/di7IoV8wdMsdKXNJM8IrvXUtTEzqb2HjhL+FX6RiMjd
         jh2uQlaHCZruuIaz31fg50bKTPtzDugjnlOMKIo0sZBaZU+Kw32ccnazugSIRhBngfxY
         QzkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from;
        bh=vXpMxdNKL/25Af49MoEOXFaWaOdKlZdOw/YJVtAdqmE=;
        b=jAPeL5cL3tl/7C/RtDQdayLLek9j+5NQkyR1enn9nljiynsh6ODrMyibKQwHdtRIVy
         K3nPjk+Q6pTd2yqnnUoRSmyYBy4w9Gk3C3JpmTn99GLEDHgdm6I110lqBain3k3Yz9dV
         mvfzocTNrRwaf8kn8QVKqX+OlYmi6GTGujqZVliqE6Cghg/+kCxRrO0YgSSFHnKFZQjf
         Xo61XTx1uZm/tQB+yPB6zB95IusX/+rDSdpocyoGkIVN8C8FqlWA8i5TlTIPxn7yXH8F
         Xuj9p71R6ktzOOmTPchRQvQcYjFP0OKVOu89t7PS1fTn5TjK5d18xqaDnso8DmPjUZPm
         7pvg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 140.211.166.183 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (smtp.gentoo.org. [140.211.166.183])
        by mx.google.com with ESMTPS id r15si350163pjo.90.2021.03.10.12.56.09
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 12:56:09 -0800 (PST)
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
Message-ID: <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
Date: Wed, 10 Mar 2021 21:56:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210309155046.GA176674@rowland.harvard.edu>
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

Am 09.03.21 um 16:50 schrieb Alan Stern:
> On Mon, Mar 08, 2021 at 10:59:48PM +0100, Matthias Schwarzott wrote:
>> Am 07.03.21 um 17:58 schrieb Alan Stern:
> 
>>> Okay.  Can you collect a usbmon trace showing the events leading up to
>>> and including a disconnection?
>>>
>> The easiest reproducer is by calling sync while having a file/the device
>> open (and keeping it open afterwards).
>>
>> 1. I recorded usbmon trace like this:
>> # cat /sys/kernel/debug/usb/usbmon/3u >
>> /tmp/connect-python-sync-disconnect-usbmon.out
>>
>> 2. Connect Kindle device
>>
>> 3. Then trigger sync with python:
>> # python -c "import time; import os; f = open('/dev/sde', 'r+b');
>> time.sleep(1); os.fsync(f); time.sleep(5)"
>>
>> 4. After 2 seconds Kindle disconnects (does no longer show USB-Mode screen).
>>
>> 5. Ctrl+c the recording
>>
>> When the final sleep in the python-command is missing, the Kindle does not
>> disconnect.
>>
>>> Alan Stern
>>>
>>> PS: I suspect the SYNCHRONIZE CACHE commands are correlated with the
>>> disconnections but don't cause them.  That is, I suspect the
>>> disconnections happen when the device has been idle -- and generally the
>>> host computer sends a SYNCHRONIZE CACHE command before idling a
>>> removable drive.
>>>
>>
>> I cannot read the usbmon trace, but wireshark displayed a command "SCSI:
>> Prevent/Allow Medium Removal LUN: 0x00  ALLOW" when closing the file.
>> So I suspect this command also counts as activity (!idle).
> 
> Here is the revelant part of the usbmon trace.  The second value on each
> line is a timestamp in microseconds.
> 
>> ffff88814e50d0c0 2440334800 S Bo:3:039:1 -115 31 = 55534243 79000000 00000000 00000600 00000000 00000000 00000000 000000
>> ffff88814e50d0c0 2440334822 C Bo:3:039:1 0 31 >
>> ffff88814e50d0c0 2440334824 S Bi:3:039:1 -115 13 <
>> ffff88814e50d0c0 2440334909 C Bi:3:039:1 0 13 = 55534253 79000000 00000000 00
> 
> That is a TEST UNIT READY command, showing normal status.
> 
>> ffff88814e50d0c0 2440334922 S Bo:3:039:1 -115 31 = 55534243 7a000000 00000000 0000061e 00000001 00000000 00000000 000000
>> ffff88814e50d0c0 2440334949 C Bo:3:039:1 0 31 >
>> ffff88814e50d0c0 2440334951 S Bi:3:039:1 -115 13 <
>> ffff88814e50d0c0 2440335817 C Bi:3:039:1 0 13 = 55534253 7a000000 00000000 00
> 
> That is a PREVENT MEDIUM REMOVAL command, sent when the device file was
> opened by the Python program.
> 
>> ffff88814e50d0c0 2441336674 S Bo:3:039:1 -115 31 = 55534243 7b000000 00000000 00000a35 00000000 00000000 00000000 000000
>> ffff88814e50d0c0 2441336697 C Bo:3:039:1 0 31 >
>> ffff88814e50d0c0 2441336699 S Bi:3:039:1 -115 13 <
>> ffff88814e50d0c0 2441336911 C Bi:3:039:1 0 13 = 55534253 7b000000 00000000 00
> 
> That is the SYNCHRONIZE CACHE command.  Notice that the timestamp shows
> it occurred one second after the PREVENT MEDIUM REMOVAL.
> 
>> ffff88814e50d0c0 2442346649 S Bo:3:039:1 -115 31 = 55534243 7c000000 00000000 00000600 00000000 00000000 00000000 000000
>> ffff88814e50d0c0 2442346700 C Bo:3:039:1 0 31 >
>> ffff88814e50d0c0 2442346702 S Bi:3:039:1 -115 13 <
>> ffff88814e50d0c0 2442346799 C Bi:3:039:1 0 13 = 55534253 7c000000 00000000 00
> 
> One second later, a normal TEST UNIT READY.
> 
>> ffff88814e50d0c0 2444394684 S Bo:3:039:1 -115 31 = 55534243 7d000000 00000000 00000600 00000000 00000000 00000000 000000
>> ffff88814e50d0c0 2444394713 C Bo:3:039:1 0 31 >
>> ffff88814e50d0c0 2444394720 S Bi:3:039:1 -115 13 <
>> ffff88814e50d0c0 2444394804 C Bi:3:039:1 0 13 = 55534253 7d000000 00000000 01
>> ffff88814e50d0c0 2444394821 S Bo:3:039:1 -115 31 = 55534243 7e000000 12000000 80000603 00000012 00000000 00000000 000000
>> ffff88814e50d0c0 2444394866 C Bo:3:039:1 0 31 >
>> ffff88822c917540 2444394928 S Bi:3:039:1 -115 18 <
>> ffff88822c917540 2444395673 C Bi:3:039:1 0 18 = 70000200 0000000a 00000000 3a000000 0000
>> ffff88814e50d0c0 2444395696 S Bi:3:039:1 -115 13 <
>> ffff88814e50d0c0 2444395723 C Bi:3:039:1 0 13 = 55534253 7e000000 00000000 00
> 
> Two seconds later, another TEST UNIT READY.  This one returned a failure
> status, with an error code saying that the medium is not present (in
> spite of the fact that medium removal was supposed to be prevented).
> 
> The usbmon trace contains six more TEST UNIT READY commands, sent in
> quick succession, all getting the same failure result.  Notably, it does
> not show any sort of disconnection.  The final timestamp in the trace is
> 2446328158, which is just five seconds after the SYNCHRONIZE CACHE
> command was sent -- there's no way to tell if anything happened after
> that.
> 
> Maybe there's something else going on under Windows that we're not aware
> of.  The only significant different I can see between this trace and the
> short Windows trace in your original email is the time interval between
> TEST UNIT READY commands; here it is two seconds but with Windows it was
> one second.  You can change the interval by writing to
> 
> 	/sys/block/sde/events_poll_msecs
> 
> What happens if you set the value to 1000 before running the test?
> 
I tested different values. At 1000 it still disconnects. At lower values 
it no longer does this.
I tested 200 up to 900. Even 900 ms is good enough to keep it connected.

Btw. it is not a USB disconnect, but it just seems to plays medium ejected.

Out of interest I called "sg_start -v -l /dev/sde" after one of the 
failing experiments. That made the Kindle go back to connected state.

To me the above experiments show that enough TEST UNIT READY commands 
are needed in the 2 s after a SYNCHRONIZE CACHE.

> Also, the usbmon trace shows that my guess about power management and
> device disconnections was completely wrong.  The bus does not get
> suspended and the Kindle does not disconnect, even though it seems to
> become unusable.
> 

Regards
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/dfd2b281-3beb-9869-37b6-8bd48a6cf40f%40gentoo.org.
