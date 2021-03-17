Return-Path: <usb-storage+bncBDNM5HFD6YCBBSEFZGBAMGQE3MRG3HY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x546.google.com (mail-pg1-x546.google.com [IPv6:2607:f8b0:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C4433F79E
	for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 18:56:26 +0100 (CET)
Received: by mail-pg1-x546.google.com with SMTP id h8sf7918171pgd.8
        for <lists+usb-storage@lfdr.de>; Wed, 17 Mar 2021 10:56:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616003784; cv=pass;
        d=google.com; s=arc-20160816;
        b=M+UV3QwpC/QX7ijA7iy91GqYQ2rYadOXKHGfKGvV/MxgRlFUoVNs7Mu0y4QKuVhXlH
         N6F5Xp1/qLHS8L5RxoVn0A3Lz8fiiEAqkHigvSsrFfZHE9SqyFZtJXPRnlhHCwblBcZ6
         pU56q/hjZTjoYW8L60PgpLvAKXnDR+O0SJNODkCEyBcLwmBsO8p7bk3e4FAIg1t+ckDs
         XXeu7ssajiGr8x3Pgg0pzKRY/Nr0aZAfweG7DNyIshc4ekfyvfLkIAD4b9/hRTNjeSTw
         0bry9sO7LZEg9ZE+TCWufH+mYee8SaCd8a6ldHwaR1eSQ8h+9B/ifeJbf8Wowgsg2BZL
         DK+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:references:cc:to
         :from:sender:dkim-signature;
        bh=S69/x2k4u3GnYwKyTZ5jlH9IY5z9DHru51tkFBVrz7A=;
        b=K8yRK3jg98Gc3RUvtTMarWadknii3sOPIgMfRoF3YKRXQlPY0gWrHoLszwL7oiVUH/
         daRXo4cW1OTnG/6jc3v727Tagw/s4l08jEqWSXCWBvud89izfq4b/xANqbYQVVnz5RvV
         A2DyxHV30r6AJ9SAGuZwHxwdiBiPf18fzq3hRmmxfMkdiA54tmZ/joYWcxq91vi5bywr
         /ogJvISqM5js+aGg8Rq6u1M3ERv++ok241kF4ms+Q6QS9gXpDkAQdbjp39hCL1WwkV6r
         +uiI2AiaOO0C0/t16kKDgYFV7SwPUuhOkwsXjwnkj2ep1UUj08Q1EOBTifWdwyxaND/9
         1jZA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:references:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S69/x2k4u3GnYwKyTZ5jlH9IY5z9DHru51tkFBVrz7A=;
        b=gNWGpPdbGajeKencMBAvMvEnGYjZK8xVxQMDz0GrlhRrMto8SXpQOTzy5NI4u4I1nD
         2TXNqRFFMi2IsJT4WvpFMtcTnQ7iCe0EVWtwWahbVUPPX5jc3R/BXW+TT3zfr+WQEYii
         49xeSKqQb+tKZKwfXEo3ckHiiGUc4MEYo+kH4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:references:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S69/x2k4u3GnYwKyTZ5jlH9IY5z9DHru51tkFBVrz7A=;
        b=jTWGEac/Xu8aKVYL7NtdlkNpDFNT8tPHmyKvQdpPEgGaB1FyoNsdWa7Hfdr+3WfY8y
         m0DwbUSzxFtsx9VrrSuVndwRogKd34c1meRpYsrkCiQMNq6pyOw4D+PxxcbGSUVcn//z
         rt5hKzdTaZkxvNS8Q8Wk+ntc6kYYTIrNkgYCwgHrtEfNRBrO3EHy36/bz4gZf5OvGMUO
         qWps8EZv7ZEQ+M9MTvHMNyZoxj/30fFj8LIGQVnKcRyG84cn6FjKg+D7nFX2DVdKIv+2
         +LhH7wNzsP5qDRzyDWQhAW6xiyrSzj7v+znvL5nAOSpvUHATgEgQVQDh2FmdTFqfGmdn
         z0Yg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531Nce8KZ3gO0J4WRRSEWesOOZLC792wsPIvsElZLBr+3J6SfeOO
	CDFkYxffLMRdkKl9IR+efexVTQ==
X-Google-Smtp-Source: ABdhPJxYlem6TLtTq8rmJv5npkb3JBBuWOY2g9ILp95H1fwTpPIkEzb5YoZfFEY9sKymUh30eVk/sQ==
X-Received: by 2002:a17:90a:c210:: with SMTP id e16mr44234pjt.92.1616003784784;
        Wed, 17 Mar 2021 10:56:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:7f10:: with SMTP id a16ls9586101pfd.7.gmail; Wed, 17 Mar
 2021 10:56:24 -0700 (PDT)
X-Received: by 2002:a65:4887:: with SMTP id n7mr3591998pgs.14.1616003783897;
        Wed, 17 Mar 2021 10:56:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616003783; cv=none;
        d=google.com; s=arc-20160816;
        b=PKqbxXZscu1ljNvHoXoPQOpaHJJLI0dWF0gtvZ8K1YrA4i3pK7yTPP7HIxqui7GIA4
         y3zTdjkIo3kjLi2AZzLt21jdCv0ilop4My+yoPt91DytP7t8dbHPLuuPYOxt/2f3BAzE
         OFVzWoE4ZwHFElrLzmQPFePo4a0ufE/wjbp2pxpj3lOiC6F5Ex0vcLoyWfQClicjtfvh
         fZOKSZ9F7jepDWQdHpuCx7qlgLDrtLw17XUff+ZevpwT6Eynei9uT8XU/tlv+ItIMKe5
         JpNCzSJsvFdr3xU9eDvTdrJ7IZeAcer1I8Qb85aT2vaSDA1ALQ5wPWMsifK8rzL0dxUL
         zwSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:references:cc:to:from;
        bh=dEJayFTvjbWQt+zH+wP7bTntosht7HUNOtwNqeQm38s=;
        b=Unt+hS1wjfuKVdbdNrLdsN3FYWqL7o/cCFADTd1sgVJTXVlFkE6A3jSkWfxBimK3o0
         XdvuneUiWcHjxvjyogzW/S1/jwxBL4yFdh5bQq/fWWhqUpo5Khu3nxQsx1StouBg2QDW
         NXCL7PQ7FKdd8m0zvKge+GEpfOzAxD0/H7hGb3fBqaVNcFNEajG3jXdUsq42QggjR2Ca
         9e0f473LsVenZitrnZc9C6MAKnd5KpR1DO6ntWZ+J5ZkOZcxSVkEPWzaZ9oVs4VDu8Fe
         7JJcECAtkxUF5wlMFm1VkTa2qop/4PrRWKnd49qqK1vlhrATGIiz2kGLN/1mR9xIpsaH
         LXaw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) smtp.mailfrom=zzam@gentoo.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gentoo.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org. [2001:470:ea4a:1:5054:ff:fec7:86e4])
        by mx.google.com with ESMTPS id f6si26245248pgd.139.2021.03.17.10.56.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Mar 2021 10:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of zzam@gentoo.org designates 2001:470:ea4a:1:5054:ff:fec7:86e4 as permitted sender) client-ip=2001:470:ea4a:1:5054:ff:fec7:86e4;
From: Matthias Schwarzott <zzam@gentoo.org>
To: Alan Stern <stern@rowland.harvard.edu>,
 Hans de Goede <hdegoede@redhat.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
References: <20210309155046.GA176674@rowland.harvard.edu>
 <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
Subject: Re: [systemd-devel] [usb-storage] Re: Amazon Kindle disconnect after
 Synchronize Cache
Message-ID: <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
Date: Wed, 17 Mar 2021 18:56:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210317151746.GB488655@rowland.harvard.edu>
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

Am 17.03.21 um 16:17 schrieb Alan Stern:
> On Wed, Mar 17, 2021 at 01:21:50PM +0100, Hans de Goede wrote:
>> Hi,
>>
>> On 3/16/21 6:04 PM, Alan Stern wrote:
>>> I think it would be mildly better, but not a whole lot.  Since the
>>> Kindle describes itself as having removable media, the kernel normally
>>> probes it periodically to make sure the media remains present.  The
>>> default probing interval is 2 seconds.  Reducing it to 0.9 seconds
>>> doesn't represent an exorbitant additional load IMO -- especially since
>>> Kindles don't tend to spend huge amounts of time connected to computers.
>>
>> Ah, I did not know that the default polling interval was that low(ish),
>> given that the default indeed is already that low, then changing it to
>> 0.8 seconds would not be a big change.  And we probably have a lot of
>> lower hanging fruit for unnecessary wakeups then that.
> 
> So we need to make a decision: Should the patch be merged, or should we
> punt the issue to userspace tools?
> 
> On the plus side, the patch is rather small and non-invasive (although
> it does allocate the last remaining bit in the 32-bit fflags field).
> There's also the advantage of sending the extra command only when it is
> needed, as opposed to increasing the overall frequency of TUR polling.
> 
> Any opinions?

I would vote to do in kernel as that is a cleaner solution:

1. It will work out of the box.
2. It only sends one extra command when needed.
3. It makes the block-device not break if user-space adjusts the poll 
interval to higher values.

Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/5f8c0755-0884-f505-c4e8-3a5e89001d58%40gentoo.org.
