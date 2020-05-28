Return-Path: <usb-storage+bncBD33JHUPQIDBBJ5GYD3AKGQEFGFFU6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id EFABD1E6B3C
	for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 21:38:16 +0200 (CEST)
Received: by mail-pl1-x645.google.com with SMTP id y1sf123325plt.20
        for <lists+usb-storage@lfdr.de>; Thu, 28 May 2020 12:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590694695; cv=pass;
        d=google.com; s=arc-20160816;
        b=I9TjVLEmDnlCCSirq5uQgRfyznCJqSQTaFBK99K8HRe4LiM4SbzlIt30s+j3sKyied
         ipCS1a5XDx5NWJHrHEv5JPLYBDi8OAGoIJ8CuA3uotzpN2vpjkim62Xc1Yu6vIYJ4Vmk
         UXoPdt9aVNmePIegLjwQXizWGMJgrlwoSRZsp9i/DRn2ojbNGq8BntbrUQ8iBGZ7ARfr
         Pb/Upi9q1A0k3QEBzYPeEO3rxww9PyQH3TiQ3Oz1pNsH9TWhtfUz5U6QFP7N4LzyfpSK
         rYwoCoRYM/zswtEq8KQmM42LKZtaG2pPcuPWSY7YqVnj1gH7kQHO7a7noAm4l4ByBKOi
         9SGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=4mBKbYsBo7bompRbcW9USN9lzqZ/CDvVXOfvxuDaJ/I=;
        b=CncwSCeGsOvqkZnek6BqRpNgNLRIeh4SaS5Y5ltIAF3Ql54PxQy2BaC+pftDp/jDDw
         LuwtBffYmifydX12w+cyGH645hGr2DQP+bgUmdYB6jqRYz7tYm0YUHfrBFKd2D0jMjRI
         q0d1an47De0yzgyIOATvBLGkztzRwhbtBP51QnidktfrqP7v1yorateICQW1Dvw0F5yI
         SOpFOC0mwmvx4a4tEjYAg2kDrwpoKaYcOHy+JT9NYLneoQE8KFAmiB1nu7Jo6cZpVQVf
         x/xBGBawkCX8hoQPiaHvzLW35ogrO7VjH95dpw9hSoWWyI1Q63xYfrODlpE3B5q1EP9i
         qCYA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=grjP1Wj6;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4mBKbYsBo7bompRbcW9USN9lzqZ/CDvVXOfvxuDaJ/I=;
        b=Tpv8JHt+Ckkhs+/EFFLbq2VjpXaQOt6nj/BWn5Fp8gr1dC2PvzTNz2aZc6OGXxSQOl
         Zrx982bJD3IZZGLwwaS7IOM44V8YTXBQy1zXvKBVUfiM5b1LpoGuLIcx31O3l6nYJlrh
         BTPaQ7pE8IZanKwA9YQNkmoqA17GaOKdnbmZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4mBKbYsBo7bompRbcW9USN9lzqZ/CDvVXOfvxuDaJ/I=;
        b=uci0vmTJwGymiC7ULxE2uPEo32YcULlMPq/qz844b16UbA6fCiX4KHVAHoY9lrAK1B
         /1/2rVcEw/fibAY/TX9mcdf1BQIpGZQw67PNY/JpS2m4dUJRSFYqIQZOcoHwhJSdBKFh
         tnff3yhQ8cxKKW6kmUelnMTe98O6ndd7kBYjcsu3LX7bb8vIY/d4ysXoiiPet5npBUOa
         T+m5uuELWFtDfH74blP4abEgy8pvXvqsDtjNHHQ1qunWWdJK9WVhNmLbAGjIwDmLbaCb
         76IihVm73e7DEPY8xDLZ6ng2UL/k5I17vXkb4Oegv7Drs4RFXZiqaEC3dao0JLgF5LCf
         aWew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532GDsykmFQNpu4HbEHwV9zpXwG3zoYkethaOCgbQVF125W5MH2V
	20AAUoV3ImbwRdW73N1astMapQ==
X-Google-Smtp-Source: ABdhPJxcaQWUORIho1qfEXeC+2mjtERwrrrWopQIogzSHPsRtkpDQD3X+R0WQtQmHTS7X2Se15tJIQ==
X-Received: by 2002:a17:902:cb09:: with SMTP id c9mr5000916ply.95.1590694695621;
        Thu, 28 May 2020 12:38:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:4f04:: with SMTP id p4ls1453579pjh.3.canary-gmail;
 Thu, 28 May 2020 12:38:15 -0700 (PDT)
X-Received: by 2002:a17:902:8218:: with SMTP id x24mr5170008pln.150.1590694694931;
        Thu, 28 May 2020 12:38:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590694694; cv=none;
        d=google.com; s=arc-20160816;
        b=acptI9+8kOOqJ+BV1CGGB4xR0ERVvx/gSDSqvkgTXwYkOkhMgfqGOc+FDmgPT8cMbv
         lei8sWmCN0n1XVe6IZimIXicobc5VaAidGRbl8PDOItda0kygwPB/NpBHq5ch8Zf3Zhm
         ebb/51TGLIrPZtROskI3yL3KSuiEqzM6GyDgDVR5S26Qk/g0xEWXjJ29wjFc3X5XQ6zx
         eBHlULcMChXeD1QD0TpuXfhDteacqI2Yj5rFJyYTPlI7rGNvyzCJAOeQGPYDwy9PKR4g
         3GYv9DxaVdUjjvRoj0CMpUWkeVNXEdt2zkGUFvyBhtif7648vc3v4suPkQodk/UR+0QW
         poxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from
         :dkim-signature;
        bh=x2b+bzfGLvSRxKB/48VDupWA63rgdWr9tfxfFp5JgY8=;
        b=Q97t5U8YxbDhFTKHEIlU5yv95j6aBlczcHAtV1WEcFwidpnwwZWCACvrUNAM8b8wv9
         70ZPLawoHB0I48H5IXkd0099UlrPoMuJi6qiJeXwtdXmu6FyxgyoMMFkIdMmoPU8Ifsf
         PizZ8xNEQs9Qv8C4/X9rPzpmkzv10NC78F0Y3DjeRENIqK9MwJEGI+lE5Jn2l4mU9GwY
         VB/tVJCrY+1AN2Cn+RXZ3qjP/971sCGwkrbegy6r1t//D5DY1vAtAk+2VZUMMqhoSk2+
         uyG668gH5unMkzmr6agV5Vzg+WoKdquSobhHvw24wA5roq6mjaoyv9rBfPoC+wzGtLcP
         9ZRw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@codeweavers.com header.s=6377696661 header.b=grjP1Wj6;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
Received: from mail.codeweavers.com (mail.codeweavers.com. [50.203.203.244])
        by mx.google.com with ESMTPS id s21si5668926pgh.85.2020.05.28.12.38.14
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 May 2020 12:38:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of zfigura@codeweavers.com designates 50.203.203.244 as permitted sender) client-ip=50.203.203.244;
Received: from [64.191.7.9] (helo=[192.168.1.115])
	by mail.codeweavers.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <zfigura@codeweavers.com>)
	id 1jeOM0-0007gN-AL; Thu, 28 May 2020 14:38:13 -0500
From: Zebediah Figura <zfigura@codeweavers.com>
Subject: [usb-storage] Re: Bug 207877: ASMedia drive (174c:55aa) hangs in
 ioctl CDROM_DRIVE_STATUS when mounting a DVD
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
References: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
 <20200528075440.GA2881385@kroah.com>
 <465eaae3-fa60-f37e-1d62-c52236720798@codeweavers.com>
 <20200528160420.GA14188@rowland.harvard.edu>
 <232b68f8-9a5c-89fd-2e12-bf63f49dbe38@codeweavers.com>
 <20200528170509.GC14188@rowland.harvard.edu>
Message-ID: <cb5371de-984f-bdf3-4cfe-a7343998515d@codeweavers.com>
Date: Thu, 28 May 2020 14:27:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200528170509.GC14188@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Spam-Score: -26.0
X-Spam-Report: Spam detection software, running on the system "mail.codeweavers.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 5/28/20 12:05 PM, Alan Stern wrote: >> Thanks, I've attached
    a usbmon trace to the bug. It seems the kernel submits >> a bulk input transfer
    that never receives a response. I hope my drive isn't >> [...] 
 
 Content analysis details:   (-26.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  -20 USER_IN_WHITELIST      From: address is in the user's white-list
 -6.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -0.5 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.5 AWL                    AWL: Adjusted score from AWL reputation of From: address
X-Original-Sender: zfigura@codeweavers.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@codeweavers.com header.s=6377696661 header.b=grjP1Wj6;
       spf=pass (google.com: domain of zfigura@codeweavers.com designates
 50.203.203.244 as permitted sender) smtp.mailfrom=zfigura@codeweavers.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=codeweavers.com
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

On 5/28/20 12:05 PM, Alan Stern wrote:
>> Thanks, I've attached a usbmon trace to the bug. It seems the kernel submits
>> a bulk input transfer that never receives a response. I hope my drive isn't
>> broken...
> 
> Did you wait for thirty seconds after that final bulk input transfer
> started?  It should have been aborted at that point, just like the two
> previous transfer attempts.  There might be a bad sector on the disc you
> were trying to read; all three attempts seem to have failed at the same
> place.

Yes, in fact I waited for several minutes. The transfer seems never to 
have been aborted.

> I get the impression that the SCSI error handler may have tried to reset
> the device without first aborting the current transfer.  But it's not
> easy to tell if that's what really happened.  You might be able to get
> more information by enabling CONFIG_USB_STORAGE_DEBUG and rebuilding the
> usb-storage driver, or by turning on SCSI debugging.

I've attached a kernel log with CONFIG_USB_STORAGE_DEBUG to the bug 
report. I'm not able to properly interpret the results, but I do see 
"device_reset called" as the last USB/SCSI-related message without any 
nearby mention of cancellation...?

The backtrace looks different, though.

With respect to SCSI debugging, the best instructions I was able to find 
directed me to try:

hazel@watership:~$ cat /proc/scsi/sg/debug
max_active_device=2  def_reserved_size=32768

while the hang was taking place. If there's more useful debugging I can 
do, I'll need pointers. I did enable CONFIG_SCSI_LOGGING in the above build.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cb5371de-984f-bdf3-4cfe-a7343998515d%40codeweavers.com.
