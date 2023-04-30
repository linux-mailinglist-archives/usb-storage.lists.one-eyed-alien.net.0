Return-Path: <usb-storage+bncBD3JNNMDTMEBBY4HXORAMGQE63QK7DQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 503146F2A7B
	for <lists+usb-storage@lfdr.de>; Sun, 30 Apr 2023 21:39:17 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id d9443c01a7336-1a685dfa3f2sf18249175ad.1
        for <lists+usb-storage@lfdr.de>; Sun, 30 Apr 2023 12:39:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682883555; cv=pass;
        d=google.com; s=arc-20160816;
        b=w8XNp11bdsCPOgSHICNFYs7ArlWsfGMmpDYmo5p7m3MUIo+PwHc//t1467hyJ6T+v9
         BTClryr676xIfFrGOwCort/bgPmsEbsUAYeQULrZNMmo3iuWfMByr5xF66NrJW5LGcl1
         cgBUeejyOhODpJTG1hhWfkda+ib4Z+aym3EwVyyLQWyKWKdzcC4fCXLXdUgQJuAcEu7K
         aw69n8GPbXEineEDIvbJ8cXDJD15o01wmayKDua3Xhf5hqOASz7DEFQ1L0OBRTDQvDvi
         lWNtEs/HmOlhUuQB5AVf3iOKX4ZFXpELd9ndvfGMr3BaFLwakeoXNXRy3xU2hHDvx/BD
         kNMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=pN+Bmq+F4lbZdiugKWzDw/Sk7F+VWqHIlS6lvDRU+xg=;
        b=aawjKj8S1YEvq1CfQnrSYITOKuVgooWuU+kl9PbIx+XiELNy5fwbR4ECiiPcEmwLSe
         qCHP6BOjew9T4MtcUwcfT+AyPF2o3IT6dfahSMg0f7Fn5MvU0de4k58W0s0IzUIGJK9j
         xurIChydW8wEx+m6PgnlU1NiBjLQ6inGlmdiC+5AX1iXzpIO3x1ublYVdBkREfKYelj3
         GAq+IhtPL8AubSPVftzHv9UX/XvB+XHAfq19ljfwK47Gii+c+1Jm+X3onVezsHpeLZcZ
         caoeDBPEOnI9/hXPpf8fQ1C6rp1kBDi/8pHEYwL3AO7AXczCl+Ib7mo3ZyMfAsmFwYTt
         K0QQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1682883555; x=1685475555;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=pN+Bmq+F4lbZdiugKWzDw/Sk7F+VWqHIlS6lvDRU+xg=;
        b=N6eiMZ8iMyiJyKYMu9MmsyBVeORnfhUEkrU62ubb8sSb6FFWeCJGSny5xJP7tx6VnB
         p7A7IEms4mOAkr8dvTZJpC2PTatSaOLUbYVc+vkZu48ZM0FvzWgjGJ6ryMVpZnR1fN7U
         3MYlvnVwJPQUFVMuIrR4+kE78lD8OnfBNP5YE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682883555; x=1685475555;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pN+Bmq+F4lbZdiugKWzDw/Sk7F+VWqHIlS6lvDRU+xg=;
        b=fdnEwBiFwog1My8eK5bAf9izbxVHYen081OfccOu7c+gu8J/Qa7D6naLxiKrUgjPZ1
         5tlGAI2+ObiDr2r9NFzMXbji8EXCG+4icH0FL5jsG6IQsIE0IPpQyLpkgyC59QUhfQwa
         uG7/O9iv1PCw9Dxxf2+rmLoretHbVIXaSGT8fLrkonE4lZohsAmw+IQPzptfiz/vT0Wk
         Voi4H294E7Rzs7G1oWBamJgt6GZuIQDUfdZyNtOxduqLZkucK9uCnaBuwE5vXlspwRUF
         bNLHLSr6cXlVig5trRbwDpEQKfNY6YpUZdh/VPSlvTaaHx6dhjYXD/lb6+XD4ilrQrjT
         XScA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDyK2M8RqWsZ7wf26jtbSNaujpusMV1XvoOewoDko9vhvkZe/ZoV
	/nEnmIbISEHmX6c5CeHap9KuYg==
X-Google-Smtp-Source: ACHHUZ5kLSku+P2Xrn5xDL5ERgqQSMq/uA/Akk4CUnFIyAqfae3Vkz9QYmexjIp7Dc1ID0zJ/ntzpA==
X-Received: by 2002:a17:902:ce8a:b0:1a6:c2a8:3c22 with SMTP id f10-20020a170902ce8a00b001a6c2a83c22mr3708075plg.9.1682883555544;
        Sun, 30 Apr 2023 12:39:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:f693:b0:19c:b3c9:49d5 with SMTP id
 l19-20020a170902f69300b0019cb3c949d5ls9329001plg.6.-pod-prod-gmail; Sun, 30
 Apr 2023 12:39:14 -0700 (PDT)
X-Received: by 2002:a17:90b:3742:b0:24d:fedf:688a with SMTP id ne2-20020a17090b374200b0024dfedf688amr1269227pjb.24.1682883554438;
        Sun, 30 Apr 2023 12:39:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1682883554; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9LAtBCQLuPF1uFFU4yKnnvnAWfolRNsdDuIjEclVCzz2sram/DXQDvK3MirjmfHEm
         L0iCqeAfytEhRsNXR3Mc8vrumXTAZxqhqS3oH+eBI8Li6ttV3G+K+BZBZVC4fTqNZOpi
         sSgPe55duMIsucYwfCiE6ObIEuekQJO0u9jegT30kjL/Xg5+tECbsAUoFjnvpkk5WO9n
         tiZsNOqGH99JubAhzglizVwEDhFa3hbqKzm4SDr+fIf4oxxAVpmc3wQxanqJhkH3OIbm
         8rs1OfmqTHgyjwHelyNvXpImv5vBvIdlIXqQZs9W46TwYmCf5hWvX5UhYHYLoN4yGu7o
         OYPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=0MUOiR0NK0TNr+Y5AvgEYruL6TTgFuBbHWzDVlAEZz8=;
        b=iJSN/iE2+BMZ+qxp4zD1OyhLp2IatmnQUg+yRUY7hY0+LyXpcivUv5KLDdupDudcvp
         tQ4rC6aRF7j33nC8DyK0MyO/qEwrCd9ETMUXhvdiS2beMIrSHzGUbI0h28mxLxis+J43
         GBxi6l/lLjgakyoVMquk2tcdxKjlMpzOT9JLMO4Vvj70fw7RxCVXAxAvJHpr9T9LjJf8
         mK6H7fQZGdVTjln6Pci0TVMJPmmvTDChgqYPJBrRyPBUJJUkx4+axPzjLSTh9EZ+uaOx
         UcO1xETHV755NJ+JSA4B3zJ36WRrOcf3nr8Lyh2Ug3kBrMazkJMzg3402YBVZgkwsrjM
         8Rqg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id n6-20020a17090a2fc600b0024df3fbd1d1sor686864pjm.39.2023.04.30.12.39.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 30 Apr 2023 12:39:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6a20:8403:b0:f6:d60d:dbc2 with SMTP id c3-20020a056a20840300b000f6d60ddbc2mr14853090pzd.28.1682883553953;
        Sun, 30 Apr 2023 12:39:13 -0700 (PDT)
Received: from [192.168.3.219] ([98.51.102.78])
        by smtp.gmail.com with ESMTPSA id s18-20020a056a00195200b0063b96574b8bsm18593068pfk.220.2023.04.30.12.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Apr 2023 12:39:13 -0700 (PDT)
Message-ID: <e9165662-7af2-0540-f823-56a5f051620f@acm.org>
Date: Sun, 30 Apr 2023 12:39:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>, Maxime Bizon <mbizon@freebox.fr>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-scsi@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=acm.org
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

On 4/26/23 12:20, Alan Stern wrote:
>> This patch fixes the issue, not sure if it's correct:
>>
>> --- a/drivers/usb/storage/scsiglue.c
>> +++ b/drivers/usb/storage/scsiglue.c
>> @@ -455,6 +455,9 @@ static int device_reset(struct scsi_cmnd *srb)
>>   
>>          usb_stor_dbg(us, "%s called\n", __func__);
>>   
>> +       if (us->srb == srb)
>> +               command_abort(srb);
>> +
>>          /* lock the device pointers and do the reset */
>>          mutex_lock(&(us->dev_mutex));
>>          result = us->transport_reset(us);
> 
> Maybe...  But it would be better to check first whether the SCSI core is
> supposed to be reusing an active srb in this way.
> 
> Martin, can tell us what is supposed to happen here?  Is the
> eh_device_reset_handler routine supposed to be called with a scsi_cmnd
> for a currently active command?

Hi Alan,

I'm not aware of any other .eh_device_reset_handler implementation that 
aborts the command that is passed to this callback before it aborts 
other SCSI commands. However, I'm not aware of an equivalent of 
us_data.dev_mutex in other SCSI LLDs either. Maybe this deadlock is 
specific to the USB storage handler?

Martin, feel free to correct me if I got anything wrong.

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e9165662-7af2-0540-f823-56a5f051620f%40acm.org.
