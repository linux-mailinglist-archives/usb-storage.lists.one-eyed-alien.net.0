Return-Path: <usb-storage+bncBD4ONGFER4PBBW7Z332QKGQEPRFPKTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1E1CC974
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 10:35:40 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id t9sf6133336pfq.14
        for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 01:35:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589099739; cv=pass;
        d=google.com; s=arc-20160816;
        b=ngtqehCmwkVKX9EyBcmhdtXrUu09x3dFKXo+W3HIuAjxnlOnUEOTWEOpZcq7XcQGEf
         azazulXTaNs0i0vSwL1dfdXTJeg0D4vr95QaacqhyFYy8U38iQX70a8ORqau/plmQvM/
         BZa7ueXn8EpRLB9MyJuSX3qoBEHZZ7Kq2avCzfVGiVmQlHZhT1RQVxahDtv7DOH/2oD0
         qMOn5AoYChwGyTX+eI8JuwALsR1ykZ08YeSwQ81aF8YubXneU8TdI2yMd54kq2c581F4
         BXmk+dN8KoppzsgVm24Cs51J9ftKMS2DKj0I5RBasXZrlkVBpIg+eoU23wSpFZXsHSrq
         YboA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=kyw5WqhC5m1gyEMsEdX4t0nVeXSpC7uRZ4zj0pCvGU8=;
        b=B7Gdp24BuQ1ziSu7GaLLQSs8sCswcDKnWcBNfFGbThl2vi7rgt9C9ROpd1VvVEpxbQ
         h2qPiud3Z5gRJBX5GdFCQjeq+7dh0tkc8pR/u/NTEVUVw75VbnaYGpkLcc8Z5IObEU45
         /xQdKXRHgobqbTFBsUfGgc3NbIkuPjdkL+VfSoq4LTYKrYgEnudjfONp+Utd3t3WT8ct
         awtAtHzdjqv3X+r/UFSEcsaDD3MszEVf7QNxtmL4uiKDy1xfXqnLmuAvyI6IMuusVdow
         gFD1LlCD1Y8YyWI4nb6CGzrU63uxmpheQd56mGg61NtNAzSpGgmnOwB0c751COVvN0Uv
         6kkg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eeDOtH1x;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kyw5WqhC5m1gyEMsEdX4t0nVeXSpC7uRZ4zj0pCvGU8=;
        b=S6GXOHnngED6M2aMnBpVA1nn0/b5yN4a9GVWaEXVH7KT0ByuMU+HQ008rrZDEd1a9k
         PcakV6hEMPJGqdIxEomL9mUIoOaEBCqhVmyWvIHOVfB/8067BKVD08gKBiaYpA50i9r4
         aJf3EMFtwo+IR7sCoIlUx/7xauI/+R7jnciv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kyw5WqhC5m1gyEMsEdX4t0nVeXSpC7uRZ4zj0pCvGU8=;
        b=gr0q6z1hNIz+IXLa0ZeKvWpvAorngX0Vdi+6GRJccmooza56oV8wT7opX6wNA473Ss
         ISP/EW5fUkxddk8naVpoC//fG0Y0JliE8C+tH45Dk6oYm9ggNl2UZiPKl9mcZ4XJZ/wk
         fr/h2758fS+tXdC2BpgfU2ajE9x0iJRw/xRuYOdtPU06bDEgG/CHutb5tIqDTCkrX2r+
         33IDsATIroEv5X4hJKjRg24lvS5s7kdVsDrZwaI4PeEQrpevRmDTiLo9VHR3OCGzQioU
         FJ7eoZiEjNOPXwsTw5/E9xdaEEuXKjnsvkwyYwGGZEWgM9p5dGGGkYlotYyEucwY9jnj
         InMA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuZHgTEZFm8fzYda2CANaUlgm3uNMyk6KKa1fFYTGAq0oZiIoHVC
	fDaHtJFDlJsgzv1Upqh108ME/g==
X-Google-Smtp-Source: APiQypIDLZfAguD0UyMC6TmLAzEm+N65MYHSWY5Yz76N+5vCldWttasyf6mqsxwdAUos240vsHCMVQ==
X-Received: by 2002:a62:343:: with SMTP id 64mr11272351pfd.47.1589099739190;
        Sun, 10 May 2020 01:35:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:1657:: with SMTP id 84ls3648805pfw.7.gmail; Sun, 10 May
 2020 01:35:38 -0700 (PDT)
X-Received: by 2002:a63:fc1d:: with SMTP id j29mr8065687pgi.131.1589099738686;
        Sun, 10 May 2020 01:35:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589099738; cv=none;
        d=google.com; s=arc-20160816;
        b=pPWwS0bzftd2eur2OeGyOmHj2mj/0boKk3v8wHEms3BMN2VusOCjNqWqmI+/oMzHYS
         uY8wnWD/8SxS+bVlYbY6Q4ivjJMnN8hBQQRtvRjZN4U/7M+tvASu0lzWg9vpGo0kF1cY
         RFh5rdZxo8Hqwq4sJs8F5hXTgFkdZtcU4yOZc17AuD3lLjixa8m6v7+vHFIDrMzZG3k5
         kZ3YJMyIpFG79QmPSkx8cfAG/Wz2usOqdAU1I6Gv4JdeSPTlZ3H+NtphpoGpUsRw48or
         Z0OmryVBl8xRTEgFtiRSAjoeF/9RogRS9Om2uF6URZW0Je98LkAkRfEshqfAR2gcGVf8
         7gYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=7agiBsUJ0WJpTqY/Qk8WKBAW1zaA6qAMgzq/5zf2raI=;
        b=cmssWfBXqnFSF4oqcuD0iA+NHgHPCH5YSXAli3TFNCFs9tQ8dw8fI6/XWllIMoRLEB
         QuUfxEcS3iW2uwGMGK6BFMf3gToHjOrA4LvtVCeQp1PpXeTa3RWt4G/GKiBKQUEtq4iT
         YHQ0qN0eNLa+6ZW46/YcTevOxMkpU0XaXxAKpEkEVmzFuedxEIz15Pbnf3cDKSxyFYoy
         Ch/2kcL801DtDDH3aM5hd9EiiMd8RLH4mTgjf3ePbqNvNsup8+OifA2j0Ui0bQsbhIaM
         KO8peSTgTq3RDFQxwwf1alqjMlAFS4Jyx8eBHM+RYf5MMb3hQDVCxtxdMYQ/3kuBohMB
         MBjw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eeDOtH1x;
       spf=pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dioput12@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id c15sor4291112pgj.29.2020.05.10.01.35.38
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 10 May 2020 01:35:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dioput12@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:5642:: with SMTP id g2mr9755057pgm.211.1589099738277;
        Sun, 10 May 2020 01:35:38 -0700 (PDT)
Received: from ASMDT.1 ([114.125.245.237])
        by smtp.gmail.com with ESMTPSA id s76sm5236338pgc.85.2020.05.10.01.35.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 May 2020 01:35:37 -0700 (PDT)
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
 <20200510054717.GA3365021@kroah.com>
 <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
 <20200510065416.GA3434442@kroah.com>
 <e409bbfe-c446-2ba3-423d-c6e198abef33@gmail.com>
 <20200510073258.GA3474912@kroah.com>
From: Dio Putra <dioput12@gmail.com>
Message-ID: <6dcbc78c-8c2f-e620-822b-7e777144d4ae@gmail.com>
Date: Sun, 10 May 2020 15:35:34 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200510073258.GA3474912@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: dioput12@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eeDOtH1x;       spf=pass
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

On 5/10/20 2:32 PM, Greg KH wrote:
> On Sun, May 10, 2020 at 02:10:04PM +0700, Dio Putra wrote:
>> On 5/10/20 1:54 PM, Greg KH wrote:
>>> On Sun, May 10, 2020 at 01:48:24PM +0700, Dio Putra wrote:
>>>> On 5/10/20 12:47 PM, Greg KH wrote:
>>>>> On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
>>>>>> Hi, it's first time for me to report user-space breakage in here, so
>>>>>> i'm begging your pardon.
>>>>>>
>>>>>> I want to report that Linux 5.4 breaking my USB mount workflow due
>>>>>> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
>>>>>> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):
>>>>>
>>>>> <snip>
>>>>>
>>>>> Sorry, but what actually changed that you can see in the logs?
>>>> Sorry, what do you mean? The dmesg log or the kernel changelogs?
>>>
>>> Either, your message made them pretty impossible to compare with all of
>>> the line-wrapping :(
>>>
>> I'm so sorry for first message mess, because that message has been sent by
>> Gmail Website. Can I send my logs as attachment? I try to convenient everyone
>> here. ( FYI, I just switched to Thunderbird with these settings:
>> https://www.kernel.org/doc/html/v4.12/process/email-clients.html#thunderbird-gui ) 
> 
> Sure, attachments work, but better yet, if you can show the difference
> in a few lines that is much nicer than having to dig through large
> numbers of log files.
> 
Okay, I'll attach long messages and trim it as far as I can.

>>>>> What functionality broke?  What used to work that no longer does work?
>>>>>
>>>> Yes, it supposed that just work and kernel could talk with udev, not just handled by the kernel.
>>>
>>> I don't understand, what functionality changed?  What exactly used to
>>> work that no longer does?
>> linux-5.4 has been never called the udev dependencies whereas
>> linux-4.4 will call any udev dependencies if necessary, that's the problem.
> 
> I do not understand what exactly you mean by "call udev dependencies".
> 
> udev is used to create symlinks and set user/group permissions on device
> nodes in /dev/ which is created by devtmpfs.  What exactly is not
> happening in your /dev/ with the move to a newer kernel?
> 
Would I send my dmesg log with "udev.log-priority=debug" as attachment then?

>>> Did you change anything else other than the kernel on your system?  Did
>>> you change to a newer version of udev/systemd or anything else?
>>>
>> I'm using eudev-master from their official mirror github:
>> https://github.com/gentoo/eudev
> 
> Have you contacted the eudev developers to see if something different
> needs to be set in your kernel when moving 4 years in kernel development
> forward?  Are you sure you have all the correct config options enabled?
> 
It's my bad not to contact the eudev developers first. However I'm not quite
sure to contact the eudev developers would solve the problem, but CMIIW.

> Why such a huge leap forward all at once, how about going from 4.4.y to
> 4.9.y and then 4.14.y and then 5.4.y?  That might help narrow things
> down a bit easier.
> 
Unfortunately I need to think twice due almost ran out of electricity
here every time I power on my laptop for long time. So maybe I can't.

But if these steps are necessary, I'll think solution later.
> thanks,
> 
> greg k-h
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6dcbc78c-8c2f-e620-822b-7e777144d4ae%40gmail.com.
