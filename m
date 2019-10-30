Return-Path: <usb-storage+bncBD3JNNMDTMEBBQGW43WQKGQEO5RU4VQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C809E9ED0
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 16:24:49 +0100 (CET)
Received: by mail-pg1-x547.google.com with SMTP id r24sf1826401pgj.17
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 08:24:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572449088; cv=pass;
        d=google.com; s=arc-20160816;
        b=opkqHHpVDgLTT7xtC5BKnBa3yzWypDpCnZCpprASKKEsJJY13B3n/AWzjC/So3KbDk
         ezPf7NEhkxYT3lBdYcxysKQHEPgy16vHzM1nEbGAjUwIJ9MGuSorYRNcRQPz30ln+emW
         jW8YbsMJOPz2KqEAWuMPBcNVlJTPbBckMwa4QZ9Fl5bpLB980AhWxX1mMVCb4ba0PLFC
         UpS0zmSJQD1uzgJpHPM3l+pcmsEfP7/kebQQpCOs1/gfo10SDc9EzmIyGEN2HsuXhBY8
         6gV+WBd2fx/qOo2TSV9LHfpl6qLjyDV8hWP0ZtCnE0LRU3zQkFyYPy0QdaTM5BcqnYra
         24+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ZNl7jUlbE3kw2dAuPst3JWc+hoyTQ4Ecjl6fG2wCMRI=;
        b=ocMzSYQYSo/wmpb0XPloSRR4KJvu0kzxzNN0ZhT/nazfomuQJlmQwRNuQlWXHWWu4k
         WVR1DAaqNxnl0z6v8RqZs8G8CV95WkfaoT7QLbINxsNuJ99sz1tz+Q4oK4OIr5mzCFwE
         KBmQv5B+5XziVJDWwH0KT8kL3sALUwKqCznhgLpguS4YPcuE6/tvFORighCgheB3xvkl
         j6El7SN72cCV4IDGt0xo/h7jdGv+Cp8rMo9Ml3JBVyBIH/WrmRoxct+8CRCFEoxGpL81
         Iql1pi7WaFOWDsvxzct/atrT0nShwrbTLXw6PcxcZrEBRlpAFc5n3+uLxSTuTKVPlpoB
         0B2w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZNl7jUlbE3kw2dAuPst3JWc+hoyTQ4Ecjl6fG2wCMRI=;
        b=T6jLOizuAwFKffeddgsoyiRohEk1HVOfqMfAyIfXEFQPMPNbWRY8T/8H7SVvaYmxUf
         OJ/ttuVExiDaailpEJ8TxJpA/itLJm5irBQxDPJdfqVjsrMDjZpzd1SzckxHuT/AqUZq
         yN2+WSbZ5RmOv4DgmOzqTu7xKAmuDIDmfG8/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZNl7jUlbE3kw2dAuPst3JWc+hoyTQ4Ecjl6fG2wCMRI=;
        b=grn9jp/CpNZY1beeoI/PSqc7dQKso4ljTiqalngJqPZe4mjH9TAoKvg2d8KeVuuu5x
         Qr1GPpmCHmxl68C1GEBYfk4/FCXYgl2IuqGlyZUrON2XHtaIzIaKKdmUKLwbSTjQchsV
         7OimratUWqun2AqsFSIqf5GhzsUVTJrn4vDXBNR5CGAbDjUpenu2CFjkE/5nGjBMWhIA
         eUqzQQdQo5WzP5zlky1DBSgWLblejPJtX054k4DlyEzyKKKt+ayT/yl9dIf1wD0/EIRE
         AFUoKMuyqZuah/q2UYx4AWy3zbXBHK+uZRsaYvOjGSH3RVPpkxtTqg79Ir4mnUg2RjZ7
         KeAw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUjglqQuec2zAd7ppdJKOkv1cv7D8K6GomO5HJX8scTmTDwvCym
	uhRmajY1ugi0gLNacjcQiVlXnA==
X-Google-Smtp-Source: APXvYqzhIsX6Px3h9SsGF+HAg0nuMFkA5gbyeS3du8TVYacD7CzXMF8DVwfmOThlcrf9fEoxlPRqfA==
X-Received: by 2002:a17:90a:2326:: with SMTP id f35mr14965737pje.134.1572449088144;
        Wed, 30 Oct 2019 08:24:48 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:3687:: with SMTP id d129ls7908530pfa.13.gmail; Wed, 30
 Oct 2019 08:24:47 -0700 (PDT)
X-Received: by 2002:a62:6481:: with SMTP id y123mr7194254pfb.181.1572449087599;
        Wed, 30 Oct 2019 08:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572449087; cv=none;
        d=google.com; s=arc-20160816;
        b=fM64lhaY1ANblMdKXf4eAJWfiuYsmyvvn6qRRr9aW+i4sy2eWuliMCaRvCV/x3XdVC
         PuRyHbJGUUd8IlosuGHYepelfvuO2zQ6QJJzaw54HBCazx9+tjFVlr91EuYNfYWbPCE+
         jp02E1e7Bo5mzWceLLv5sh+PPBEDcZWRBMf6t+ifmTyrsXX8DGv0qpQrhfQw6E5YB4AK
         AHdGcvdO3T7w4YtwLmlkSe8OaTDOLAushuM4rBt4JAoTUh/PfG18dC/55gGLvfOn0PpW
         kb7/8oRhBpPjgFuUJ4pA9waHYfNRMvaT24xre/Y+oDlK8F2JZYXooiPSJk3z241CKnLu
         AeZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=5XiSSALIT9IX4x1ndYfnfB6J+j/tWSdimFbCRBrwIbY=;
        b=Ga8qxMc7olRYgOZyTr/cI8oyBbpA6txqIjCSvsMvqfDBomEUH6af01zsO7cAM1+4BS
         rQeIv5WL0rG4abBPOc0HogmJ6fFAtYpBWU7mf13lBgXIGPM6WJcYirdrHxU2EBalx8CD
         tT2FNmfveK/vMm4cfugq57h3CPYRPD7HUoGMpk27nSkWfLT4oHnIjq00MnMzF+3tnjvQ
         svDAIYei+fvEggEGty041dX87oje03IjcQ29ogb7F5+LHCucjE24RZMbLc/DhaRQK6vc
         kFC4ZmDdpAlZ2+8InpOjjkt8wEb2+yqDUacbhd7oXNwb3MjwB2eM1i67ITvqW3keoMgc
         2QDg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id l7sor3160705plt.42.2019.10.30.08.24.47
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 30 Oct 2019 08:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:467:: with SMTP id 94mr560995ple.115.1572449087207;
        Wed, 30 Oct 2019 08:24:47 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
        by smtp.gmail.com with ESMTPSA id c66sm334633pfb.25.2019.10.30.08.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 08:24:46 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Hannes Reinecke <hare@suse.de>, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-scsi@vger.kernel.org, "Martin K . Petersen"
 <martin.petersen@oracle.com>, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern
 <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
 <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
 <4ee551d0-27a6-b516-ade0-d477fd93bad8@suse.de>
 <d0899d02-ecb2-7f0b-3d0a-c818a0ec6ceb@acm.org>
 <571b5f9a-f151-30fb-5720-d7d47a4ef1d7@suse.de>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <cd135991-d5fb-770c-d5dc-d7658222785b@acm.org>
Date: Wed, 30 Oct 2019 08:24:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <571b5f9a-f151-30fb-5720-d7d47a4ef1d7@suse.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 10/30/19 8:18 AM, Hannes Reinecke wrote:
> On 10/30/19 4:12 PM, Bart Van Assche wrote:
>> I do not agree that reporting a residual overflow by calling 
>> scsi_set_resid(..., 0) is acceptable. For reads a residual overflow 
>> means that the length specified in the CDB (scsi_bufflen()) exceeds 
>> the data buffer size (length of scsi_sglist()). I think it's dangerous 
>> to report to the block layer that such requests completed successfully 
>> and with residual zero.
>>
> But that is an error on submission, and should be aborted before it even 
> got send to the drive.

If such a bug ever gets introduced in the SCSI core, I think that SCSI 
target code should detect and report it. If the SCSI core receives a 
response with a residual overflow it can then take appropriate action, 
e.g. call WARN_ON_ONCE().

Users of sg_raw can trigger the residual overflow case easily.

> However, this does not relate to the residual, which is handled after 
> the command completes (and which sparked this entire thread ...).

I'm still waiting for an answer to my question of how SCSI LLDs are 
expected to report a residual overflow to the SCSI core.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/cd135991-d5fb-770c-d5dc-d7658222785b%40acm.org.
