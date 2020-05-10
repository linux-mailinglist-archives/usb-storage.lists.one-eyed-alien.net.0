Return-Path: <usb-storage+bncBD4ONGFER4PBBZX4372QKGQESBKRYZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FE61CCB4E
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 15:15:20 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id q4sf5246377pls.0
        for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 06:15:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589116519; cv=pass;
        d=google.com; s=arc-20160816;
        b=mbtpUX4wPY32cjdAHGGzVbN9XDbUAqW9IzMSr8xzvwq9eHxPNR90mDhpj4kLVawm4Q
         j0/xP/rsW1D4F9cioHyehaj2k1p0hS64owY+aA6a36RRjXbm0ypQErj5TvV0ZEPBa0Un
         zuArKjvVJneCRiC5Span+pWFtsNH2fOh7VEiUoR45LqzZJDJ7fKpS9rWR+PBz7A4MAjT
         MJcHyPjwPzcpkuX1vp1ozd0SPYJstqMg5jJYsfK8Vy0UP0kcT/OF60AEbmDGqenD6aPc
         FDjTHBJTjdr48KOm2z5AA9LBqQLOR9w5wvaVhKwYHomTL8fH8X01yNBpCW3y+5EXrUPz
         CWXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=zmO1kxBVHKeMnAsRAXIqy8CInEKnK/xToMAZEd77hQs=;
        b=StSVh6zL/nFFBfdf8frg7gtEnUKMZuo/1alVI0a0DzSRm4YELp6QqTWU2GoL+IsHf1
         KmD8YyhrUiJZAg3F2Wv8Q44SOLw3rMLVFbAcG4aKO9lB89dU4qvxOBLgSXykMB1Rmf1I
         15hJueG4WZUnCTjUG2xBzx+bPNpTeGwZYM7idqyCzFZeCpgd44uKOIaiEtBH4+X/DzQT
         roMFSUixFP9WBBctir1hOEXXubvs30gyK6oMfv86Gj+IEqw5srhAulmeegr61FK/it+f
         JiDolJ980QNb6cx8y7GWnE9ep1xJqbaG9xmTTRopSSXC3nFXD++QjTA+AWTxgJKUzYw5
         2q1w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOOGBNmH;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zmO1kxBVHKeMnAsRAXIqy8CInEKnK/xToMAZEd77hQs=;
        b=ZG7JvaYWeKHj+J5Su67TUmxGvPC7peERmI6XkkXqMgqObD8odGFX947haU0H7FdA8X
         GYRcixc75ecpvKcKbmwHv0DZKGZSQ3VGC2JgfrpCnO/GVxrT/0Ku9R5lW1gHWOF2pqq2
         FbjojXLUsXhlNTryZbpaWdpUolsP7nPXBuumg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zmO1kxBVHKeMnAsRAXIqy8CInEKnK/xToMAZEd77hQs=;
        b=n1Qi+cCuFhFJ1b/Yqky+vKlCzfeMqWKS9B+26MO4n0kSWgAmxMIA3RNbWn6Kp12L/o
         R38s3Ppf5FSjyhC2cuqLgb/zoaXgNx0GOjyC7aTZYhoPUABbGNzae2Fsf9RTBjtvHpKK
         gJ0Kd5M8aE7278VkjoJhBOIQLd8/+EaurmiehvUSJIkJIFSoKpvVe2HLw67MNT0ICSzr
         E0FWWXAWmzsY2maOxBA5M02iwkngxuOo4Tv75rY+WXPbSwJRYvyNZG83DViN5kDsvvVN
         YJcmUgipBTLVyPWVgipLR/JG/UsPPxcv11bt7PJAUVCZy7G64c4yp8aaZ0xZ2HXxIoWY
         hZNA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuaAM5LgvebvtNIiuprX60zNqqAFMAv4JX34lqy6tuSR52iHbfU0
	YcJjfXfpkOsNkoxbiGT/Ms7K0w==
X-Google-Smtp-Source: APiQypL1rVcf23087obei5a0oG84aGHYiM05V/WrxUwFq8cN2ms3nKxHbKwOjOPneZj2ISQ+MmDhhQ==
X-Received: by 2002:a17:90a:d192:: with SMTP id fu18mr16015647pjb.98.1589116519088;
        Sun, 10 May 2020 06:15:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:370c:: with SMTP id u12ls15006793pjb.2.gmail; Sun,
 10 May 2020 06:15:18 -0700 (PDT)
X-Received: by 2002:a17:90a:9b82:: with SMTP id g2mr17417479pjp.72.1589116518352;
        Sun, 10 May 2020 06:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589116518; cv=none;
        d=google.com; s=arc-20160816;
        b=l8PtDvs4V4aMBo7BpfwJnRWiqCp4ZyRfyqZSpzjVyM8o5OgMHHJyxacX1uEzy4rTn/
         ubOQUWRy2QD7gUHiIiycO8OcuFq72V7eFQGvVJHeeTcpRes/VaEXJMGWZmtb+rh9dkgu
         BNymNWsLYVPlHfY9oC0B/e30ax5+El68HJg945cBnE4pX5S4v1+7PhjCKVlO68hqsU8U
         DqBzdUto8hfOHG3IcNs2L9lvNlcGV0tAGiO1iUaolXjKshc7QORu+S2f/2EG2FTA0lAc
         LFKAtVFIoYjR7KrRkQjQTTrcykz+4/WAtzDwOko3ULSvjZJPxIzGQEkPBam7b8nRGMm/
         Ultw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=Ixpwz+CZUCzdVL4WIaof0tEN90fPL/+PWTbROOL+Yio=;
        b=hOdFV05bCLTPb1kHLWbFj/SdQHaPvB3UheqUGS4+dNpF3sSbqRXBfvFypmHc7WeNIF
         puYaL1UwNIl0XKBYnlfUDSiQ05qAmNSwszEFpzMM/mkYDokGWAlIxks9PCG4yxctpOqL
         fHqg33Vz47uwFDUnhleKjxhQlRLsbowZIirRE2z8u5JoiJ6EAVjgNVfS/ZFMUsOWWxDV
         eIksQF9tG5g/cNJkSSr3W4kwHzI29DGPMx5dIdLBuML1zPCdlsSN9DnqAXYCdthik80m
         fOJNnzjA9H0ggWaXyu02W3KChdr07MhkWKyeIFSAjrps7KiEh0Ri++hMONOm5LH1NmTs
         CDdQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uOOGBNmH;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id s17sor9836646plq.2.2020.05.10.06.15.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 10 May 2020 06:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:7082:: with SMTP id z2mr10566383plk.317.1589116517963;
        Sun, 10 May 2020 06:15:17 -0700 (PDT)
Received: from ASMDT.1 ([202.67.42.2])
        by smtp.gmail.com with ESMTPSA id j14sm7498649pjm.27.2020.05.10.06.15.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 May 2020 06:15:17 -0700 (PDT)
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
From: Dio Putra <dioput12@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: oneukum@suse.com, linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
 <20200510054717.GA3365021@kroah.com>
 <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
 <20200510065416.GA3434442@kroah.com>
 <e409bbfe-c446-2ba3-423d-c6e198abef33@gmail.com>
 <20200510073258.GA3474912@kroah.com>
 <6dcbc78c-8c2f-e620-822b-7e777144d4ae@gmail.com>
 <20200510084820.GA3598083@kroah.com>
 <80d4f4d9-91be-b7e8-1f64-13c2fe74f496@gmail.com>
Message-ID: <3b107771-550f-8ca1-d05a-4f6c2ef1920a@gmail.com>
Date: Sun, 10 May 2020 20:15:08 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <80d4f4d9-91be-b7e8-1f64-13c2fe74f496@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: dioput12@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uOOGBNmH;       spf=pass
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

On 5/10/20 4:48 PM, Dio Putra wrote:
> On 5/10/20 3:48 PM, Greg KH wrote:
>> On Sun, May 10, 2020 at 03:35:34PM +0700, Dio Putra wrote:
>>> On 5/10/20 2:32 PM, Greg KH wrote:
>>>> On Sun, May 10, 2020 at 02:10:04PM +0700, Dio Putra wrote:
>>>>> On 5/10/20 1:54 PM, Greg KH wrote:
>>>>>> On Sun, May 10, 2020 at 01:48:24PM +0700, Dio Putra wrote:
>>>>>>> On 5/10/20 12:47 PM, Greg KH wrote:
>>>>>>>> On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
>>>>>>>>> Hi, it's first time for me to report user-space breakage in here, so
>>>>>>>>> i'm begging your pardon.
>>>>>>>>>
>>>>>>>>> I want to report that Linux 5.4 breaking my USB mount workflow due
>>>>>>>>> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
>>>>>>>>> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):
>>>>>>>>
>>>>>>>> <snip>
>>>>>>>>
>>>>>>>> Sorry, but what actually changed that you can see in the logs?
>>>>>>> Sorry, what do you mean? The dmesg log or the kernel changelogs?
>>>>>>
>>>>>> Either, your message made them pretty impossible to compare with all of
>>>>>> the line-wrapping :(
>>>>>>
>>>>> I'm so sorry for first message mess, because that message has been sent by
>>>>> Gmail Website. Can I send my logs as attachment? I try to convenient everyone
>>>>> here. ( FYI, I just switched to Thunderbird with these settings:
>>>>> https://www.kernel.org/doc/html/v4.12/process/email-clients.html#thunderbird-gui )
>>>>
>>>> Sure, attachments work, but better yet, if you can show the difference
>>>> in a few lines that is much nicer than having to dig through large
>>>> numbers of log files.
>>>>
>>> Okay, I'll attach long messages and trim it as far as I can.
>>
>> Again, I really do not understand what exactly is "not working".
>>
>> Please explain that when you send the new log messages.
>>
> Okay, here's compilation of "dmesg | grep -i udev && udevadm
> monitor && lsblk" on linux-4.4.221 vs linux-5.4.39. You can check
> my attachment here because I can't explain it by words (I'm not
> english native speaker anyway, which makes it so difficult to
> explain it for me).
> 
>>>>>>>> What functionality broke?  What used to work that no longer does work?
>>>>>>>>
>>>>>>> Yes, it supposed that just work and kernel could talk with udev, not just handled by the kernel.
>>>>>>
>>>>>> I don't understand, what functionality changed?  What exactly used to
>>>>>> work that no longer does?
>>>>> linux-5.4 has been never called the udev dependencies whereas
>>>>> linux-4.4 will call any udev dependencies if necessary, that's the problem.
>>>>
>>>> I do not understand what exactly you mean by "call udev dependencies".
>>>>
>>>> udev is used to create symlinks and set user/group permissions on device
>>>> nodes in /dev/ which is created by devtmpfs.  What exactly is not
>>>> happening in your /dev/ with the move to a newer kernel?
>>>>
>>> Would I send my dmesg log with "udev.log-priority=debug" as attachment then?
>>>
>>>>>> Did you change anything else other than the kernel on your system?  Did
>>>>>> you change to a newer version of udev/systemd or anything else?
>>>>>>
>>>>> I'm using eudev-master from their official mirror github:
>>>>> https://github.com/gentoo/eudev
>>>>
>>>> Have you contacted the eudev developers to see if something different
>>>> needs to be set in your kernel when moving 4 years in kernel development
>>>> forward?  Are you sure you have all the correct config options enabled?
>>>>
>>> It's my bad not to contact the eudev developers first. However I'm not quite
>>> sure to contact the eudev developers would solve the problem, but CMIIW.
>>>
>>>> Why such a huge leap forward all at once, how about going from 4.4.y to
>>>> 4.9.y and then 4.14.y and then 5.4.y?  That might help narrow things
>>>> down a bit easier.
>>>>
>>> Unfortunately I need to think twice due almost ran out of electricity
>>> here every time I power on my laptop for long time. So maybe I can't.
>>>
>>> But if these steps are necessary, I'll think solution later.
>>
>> Why would it take a long time to do this type of change?
>>
> It's a weak machine, it took appropriately 2 hours to just compiling
> linux kernel. I need to think twice too because electricity is expensive here.
>
After deep digging into /dev/ folder, indeed some important file has 
been deleted after restart on Slackware.

On behalf from myself for linux-kernel community, I'm really sorry for 
causing these noise. Thank you Greg and all for the hints.
>> thanks,
>>
>> greg k-h
>>
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3b107771-550f-8ca1-d05a-4f6c2ef1920a%40gmail.com.
