Return-Path: <usb-storage+bncBDNM5HFD6YCBBC4DYGBAMGQEANMRO3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F3233CD47
	for <lists+usb-storage@lfdr.de>; Tue, 16 Mar 2021 06:26:37 +0100 (CET)
Received: by mail-pf1-x448.google.com with SMTP id b21sf16842134pfo.0
        for <lists+usb-storage@lfdr.de>; Mon, 15 Mar 2021 22:26:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615872396; cv=pass;
        d=google.com; s=arc-20160816;
        b=PZoEcsO7K5ZElbFGGbivD42xYl14nVTRbJUp6WYg7YpIokKA+gSER0PDJhPPSOdSLk
         6ChauwrblSunYN68eRdQ7xhHEuok7Gxkjz0aJNFcbZamTzLhAbXwhl+fyxROTvSlabkb
         bkZFvLSgS3KCXD0AOuEvs6gq1PTaLqIMb7YhMCu73ifPOx8CrlKMs5ta+O7j4gQxYwiA
         Fs8LFv+igIJd2VGqGBiWR12aZb7Izz+Z37bajk1w/03PTuFpKe/Jp3UvaQX5A7tSXMyy
         A1cxd2FB4NrKKQEwb4jOjAE8RcyyTCijw6Q+h11JVLTiT1Bn70qS8fHKyYZrins4VZ6V
         Yv3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:references:cc:to
         :from:sender:dkim-signature;
        bh=jTAGC3EtNW5hpsZWtg5d68cYXsj9uAdMkQYR3aO/YHg=;
        b=s5s3b4v7N/JMwFnELzdT6oIVs7x7X+izy53eXm5uiKzOtHA1z2XibbMDB8z5YN/Jyt
         Wqac6mL7exYblkQURy7U/dOXldlCSELbpk5COyudlv7l9GBMro1K9gRaP/nwsmAe9VJn
         PrI56C5Bca9gxnOo+kQpnbwq01gMeNfpXorwJ4tuKfs2Pn1UDVKFTyLGK6EQstfyQz1a
         EszVUcg2gNZXHg+ilcY6nqfzEAJLizGqUXwB+HPIh1bkXp3/ZKtE4GXq/GSMIJlmnRJx
         m5QyTxbOq2Mp2JggfJY533Lx8OXNlScpEXeAVTYeZByoaoby9sKN3tPDZZS0Lde1FxHC
         fnNA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:references:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jTAGC3EtNW5hpsZWtg5d68cYXsj9uAdMkQYR3aO/YHg=;
        b=VXikdKXKZSXIZU56uHz+P620TIfpGO3BZp8HkALU6bWCRGIXGKm4Co09rULOTgN2Ff
         ndMvqrQhjcA0nLM40BO4A/DYesN2inNkNdtq5SVpeFZPn9S/PpaHrir7uW9fTdLpG2QQ
         2L8qFiW4+S53DnT2zbDiJo60QJVFzxIh4tc54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jTAGC3EtNW5hpsZWtg5d68cYXsj9uAdMkQYR3aO/YHg=;
        b=AKfRSpwAKzSdzYDrNlGGoIa/fDFA5FMHbhQonnwgxHVW4IR6R3cOCDo6veSGQCqplo
         3IXlI2ybqWld7GoxkH/FjGvuyyCzO68PmSTJ8dTYDs3W5B6sqsVWKy7ANnqa5KKCbs/c
         E09bRAdg0szzr+iCO7NSMpzU0zyHed283ti0LI/Dc4Wk/S/LzX+0eRaRCu/H7AOtwmfL
         lBFTXRdoKwHEpf/sYPwdl6hFdjYJWMI/FQsJK1/QMY35xCie05S5zjLwZP3aZ2sREnCH
         NIneGp9h8fCh+phv3TsQdJ/wvHBtQxe1ORJ2okHQs/bxIHH1IpvTyqdB2R1unO9q6JrA
         kaJw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531l8oX6C5DLpRKHvE/M7PDFiN1PW0bsSbkTLsjA1zLA2C9oqKIj
	o2Jes3OWlOqfdBFuf2tmcClZGg==
X-Google-Smtp-Source: ABdhPJysSlMBGMD9Qun2A3sDVrACDflzQsIJ7gGYwCuYyB2Co1w63apwCIsmXHdaElmR2bIi9tikqg==
X-Received: by 2002:a17:90a:7e8b:: with SMTP id j11mr2972556pjl.11.1615872396213;
        Mon, 15 Mar 2021 22:26:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:6256:: with SMTP id q22ls7060724pgv.2.gmail; Mon, 15 Mar
 2021 22:26:35 -0700 (PDT)
X-Received: by 2002:a63:1150:: with SMTP id 16mr2391490pgr.212.1615872395232;
        Mon, 15 Mar 2021 22:26:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615872395; cv=none;
        d=google.com; s=arc-20160816;
        b=0USBFrR3EKSS/9nowHiNl2qmf8oACGl/kjuCvfGBg37J3PxOPHPSlGeRoWFPGkW7Ax
         KCL7/SL+oD9/0Kvn6aEwaungK095mTYA5NnTHL+/T6/XTAuRbkB8AFFHgEsJSwJLrRX0
         SBErbYn35fJXGkK3NaU80J4z6+L+0h2RpvpTomc+U6CLMXu6Xgvu6Qy2WmXVXPMFlru7
         Zz+TQGUdRDFuRTuh+83BWXJ7QoAjlEQsWMnedzwuQrCcmrhTo/eN9usUbweF0dpJ/8/H
         njBHQ2+E69hytVx8n2jD7XpmZnjMK+q4nzc2Orag/VJ+4YerRHfaOjzvuS+v7l0hRIXY
         63fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:references:cc:to:from;
        bh=rearh9lVTya/oMocuvsF5Xbq9scsfc72HZQtwicw9ao=;
        b=zit0JY6yRX1ZN4LcYldyBQITZUD7zQcEiHASl/MLLR8i9wc4FS8C7fPu3ecN5BB4ic
         mh5A7gHs/SLqVmP32u3tKD4zk3oBf6Cdmnk/3uzhKXxITn/0zQVuUDJJHIBexQVprL11
         MrXsOV2GaYO1OULJ2tPIxRFs+ZksDk2Wt4P+sd+jswfvk9Rr7ZbwVJvA/aSeulOfZFsn
         qZCWiAbJ1SGnozrbpei/51LL0fARW+nOKRCh7Ee+/7wutfjcCOvHlVW5FreRbUfQJxE0
         gHEE+bqXqQ6r22L6GYQVNGVX1BeZDVdSea3R0ZNz4tOZ6GwnTm5mFzO+DtgLsDDSA2qu
         0XEw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (mail.gentoo.org. [2001:470:ea4a:1:5054:ff:fec7:86e4])
        by mx.google.com with ESMTPS id g24si2128159pji.108.2021.03.15.22.26.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 22:26:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) client-ip=2001:470:ea4a:1:5054:ff:fec7:86e4;
From: Matthias Schwarzott <zzam@gentoo.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 hirofumi@mail.parknet.co.jp, Lennart Poettering <lennart@poettering.net>,
 systemd-devel@lists.freedesktop.org
References: <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
 <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
 <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
Subject: Re: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
Date: Tue, 16 Mar 2021 06:26:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210311143912.GA257360@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
X-Original-Sender: zzam@gentoo.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as
 permitted sender) smtp.mailfrom=zzam@gentoo.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=gentoo.org
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

Am 11.03.21 um 15:39 schrieb Alan Stern:
> On Thu, Mar 11, 2021 at 07:05:00AM +0100, Matthias Schwarzott wrote:
>> Am 10.03.21 um 22:46 schrieb Alan Stern:
>>> On Wed, Mar 10, 2021 at 09:56:04PM +0100, Matthias Schwarzott wrote:
>>>>> What happens if you set the value to 1000 before running the test?
>>>>>
>>>> I tested different values. At 1000 it still disconnects. At lower values it
>>>> no longer does this.
>>>> I tested 200 up to 900. Even 900 ms is good enough to keep it connected.
>>>>
>>>> Btw. it is not a USB disconnect, but it just seems to plays medium ejected.
>>>>
>>>> Out of interest I called "sg_start -v -l /dev/sde" after one of the failing
>>>> experiments. That made the Kindle go back to connected state.
>>>>
>>>> To me the above experiments show that enough TEST UNIT READY commands are
>>>> needed in the 2 s after a SYNCHRONIZE CACHE.
>>>
>>> So you have found the solution to your problem.  Congratulations!
>>>
>> Thank you for your support.
>>
>> For longterm I think it should work automatically.
>> Some options I can think of (ordered by my preference):
>>
>> 1. Kernel sends one or more TEST UNIT READY commands after every SYNCHRONIZE
>> CACHE to a Kindle device. Regardless of triggered by kernel or by some user
>> code via ioctl.
>>
>> 2. Kernel automatically chooses a low enough value for events_poll_msecs if
>> it detects kindle.
>>
>> 3. udev rule is added that matches the Kindle and sets events_poll_msecs.
>>    3a) SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk",
>> ATTRS{product}=="Amazon Kindle", ATTR{events_poll_msecs}="900"
>>
>>    3b) SUBSYSTEM=="block", ACTION=="add", ENV{DEVTYPE}=="disk",
>> ATTRS{idVendor}=="1949", ATTRS{idProduct}=="0004",
>> ATTR{events_poll_msecs}="900"
>>
>> 4. Kernel sends one or more TEST UNIT READY commands after every SYNCHRONIZE
>> CACHE to a device (without matching).
>>
>>
>> I guess options 1 and 2 require a new entry in unusual_devs together with a
>> (new?) quirk.
> 
> It's not that simple.  usb-storage does not create SCSI commands; it
> merely sends commands that it receives from other parts of the kernel.
> 
>> Option 3 requires to get a new rule into udev.
>> And option 4 is ugly as it changes behaviour for usb-storage or scsi disk
>> device.
>>
>> I would prefer option 1 or 2.
> 
> I prefer option 3, although 2 would be acceptable in a pinch.  The main
> reason is because 3 is the only option that doesn't involve changing the
> kernel.  It's probably much easier to change a udev script.  (For
> example, that's something any user can quickly do themselves.)
> 
>> Do you know how high the overhead of having more TEST UNIT READY commands
>> is? (=How much better option 1 is compared to option 2?)
> 
> Options 1 and 4 would be rather difficult to implement.  2 and 3 are a
> lot simpler.
> 
> The overhead of TEST UNIT READY is pretty small.  You can get an idea
> for yourself by looking at the timestamps in the annotated extract of
> the usbmon log that I sent back to you.
> 

I implemented solution 3b. This is the pullrequest for udev (systemd 
repository):

	https://github.com/systemd/systemd/pull/19002

Now Lennart asks if udev is the best place for such hacks/work-arounds?

Well, I implemented it as suggested by Alan (see above). This was the 
simplest of the considered alternatives. Different quirks in kernel has 
been considered, but are more effort to be implemented.

Regards
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/f2acfeef-a81a-d7c0-90a8-b290a18cb742%40gentoo.org.
