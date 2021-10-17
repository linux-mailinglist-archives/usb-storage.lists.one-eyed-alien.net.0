Return-Path: <usb-storage+bncBD3JNNMDTMEBBJMPV2FQMGQEXIN62QQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 2753E43062E
	for <lists+usb-storage@lfdr.de>; Sun, 17 Oct 2021 04:17:11 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id d187-20020a6236c4000000b0044cf291bfebsf7287850pfa.10
        for <lists+usb-storage@lfdr.de>; Sat, 16 Oct 2021 19:17:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634437029; cv=pass;
        d=google.com; s=arc-20160816;
        b=k/dK+gKjV5jj7afFHZ0C0sBBD3j3TQlaI7qobkXR+4ZPUu1pKAga+8eBAFutiJbDiR
         iQfH+6fSHoGsL6WbiUSMtc4Iyxm7Nq/bJmjZPcFy1KH0P1eJ9+AfvzVSFnaTGRgwXpfr
         s+HItAeEgmlM706CIiwA7Emnq2d6NX4zMIunnHzWIR/tjVrMUckKaiCjY5ma3HxpP0UO
         Uwz8UsXCsOH1T+OkI5PG4zRHFRDFsnFJELw9OuHzIPcNQ/f19t6N+eQ+i9A0Jx/5r8ZL
         gNS1jfQKyQC/MtqpcrRwwd+kkRGsO9NML+ys7f6LlE0/AlFsb5mLyiMs5Xlp9i7MS8cx
         3rgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=Wtg/tBZiySUvdPYHEuLKdApuPPm1F5lINgCb7JIUc60=;
        b=meS4/Xsg7JlAz/eiJ1uns4CZFg3A1c3ylju5IwxqpmWiPpC38YEg7R8YmDfBfdZdkY
         DMSGvITpXbqD271lDOHj05ZaoW3rKB7Q0cjtF667EcVAy9JqkrPhzlN/iaaLMUIHpMdi
         6OH2cFmk2AOJR3hwxRkEtgBUy6nKPUMDtoFbEIislBfzvz4xEQmokXGAKNXGYFI3rfF4
         fFFO2Ipnc6T3/9MHU1+aiEUftbViZYKsrclVBgZhrvw6wBGBusVvvwFf/Z2uoZFdIBKw
         gyRtXmVjM3oTYdFA0UIHBlChoveKVOWtkuzaSYdr6QESwE+I7McDB8M5caysGNYBhRT8
         8DHg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wtg/tBZiySUvdPYHEuLKdApuPPm1F5lINgCb7JIUc60=;
        b=DO2O/+Gm4W8hHyLJQkAUGY3TQE5Ov3kaY0dhqLoNkLWOpJdWibvRZh6OHvAkbkY2v6
         PtT7BSwTVgog3VqoSt/Ldzb2Dc9o4rG1+hjW1k2Pv2ZspH29OQyi5dBv4zfMB/sIfnFG
         4tJMukEYJQwmLnpqI2YVsBbpkZgcXHK8jVUO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wtg/tBZiySUvdPYHEuLKdApuPPm1F5lINgCb7JIUc60=;
        b=sy1ap7FbG3Mzl5g/236JMG4jWyr0tcYZoHt5LX2u7o8drS2tP2e2BDqNE5e8uITWiB
         pxaRLBXJNdJXC1JuLea5f67Jkj2rrvYFT+R8p4RIzCkCOQpQxY2WpmUkDbbIEU/H3PR0
         Iy+V12XRaSRQjLlkppvRhgvwzaZsmy5/LEFvsyL8FZpTEJX8L/Y2lBl2BOm+4yvi6pK6
         iozy/tPWlOn8pmHe9DtXSNlKb58ae5Uf9bW7wtyMAAOeSj0tbHCVNwAbds0MxebPNK6s
         k4tqshkDvrHSgXzaMMH49yyJrrccCQCPX4Kd/nTGbepZHuputhpcMDWS9TCE9+K7D8Ho
         0Dog==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530OsK3Ik3+1PnNwcmGbzMaarG/9uk4hA4cyfg+8L4CsXwouyfDT
	gDKoUJRsru9+hJLqFZwnrhCQfg==
X-Google-Smtp-Source: ABdhPJwc4bUlIKTHYdbQPd2bhHDRKGcbSdpSgv73BnIHjAmccoAhogcGrXNFE6p6IpZmo3GsddJJ+g==
X-Received: by 2002:a63:8742:: with SMTP id i63mr4770197pge.328.1634437029624;
        Sat, 16 Oct 2021 19:17:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:6643:: with SMTP id z3ls4427195pgv.3.gmail; Sat, 16 Oct
 2021 19:17:08 -0700 (PDT)
X-Received: by 2002:a63:d80c:: with SMTP id b12mr16699851pgh.331.1634437028564;
        Sat, 16 Oct 2021 19:17:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634437028; cv=none;
        d=google.com; s=arc-20160816;
        b=oZo0+KO49EEbKx7Y94WDg35HFRDLeV8yl682Kv8IhTXKZJKrxeWN6S2Yhl3LF6wYEX
         z3GHaXXu96MqRkJV1h7mZfWRi/s4wIrY13cXaaxHzjD2s/E3Eyr2kU654bdX7U+5opNI
         DxJElM5+Dg44k2F/hNET/gSCLrNX7PJXvH3bXgoWUq/3MPqZ/rCN7EF+nyvBskql+BAC
         FiVHPBMQpISnRocqwvB6irQEChHSOys5r6k+Onv7qcHR+cHmhwWjpqe8yZwSGpagPNyo
         EfEu7wMWUDjPIMt6dsdmK09+jknvvAwl1ODuVRsnwzbv31kJTfcHGmzQPkNp9h2mz5fk
         NnMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=fV7wt55es3O887KqSyNg2L4d5z06f5+6gZKXYBgENbc=;
        b=S61xAHifl/xk0vPFb+ttf8e9uaewmqBt7mm29EMVgSNcryEzICioiU7Kr5Nm74lrDZ
         byJE0YpO5EZz/nLDgG0051beXjyKnXXqcpN3mo0H7H2eKbfC7fpNTELgbygZMA3ypl8y
         G8/FMmL/L6vZp5AA1SVPmEHG4RrnOVyG8gImUBvKpGZJ74ocDDhmkvMXJlg4sWLFw4dk
         vVe12ORChoqw3YwlxxHibQDnuY/xkZ8q5uunhvxPXtxI/3LRZIyueqXiOesilcHaK1lP
         iqRD85BZjT/P52R3CBI99VqrSWquKRxlK4atYesRfD2XrT9yp8PApm/RY18hXZj1ZdCC
         nqmg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id z22sor6118724plo.39.2021.10.16.19.17.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 16 Oct 2021 19:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:902:e5c7:b0:13f:1dd9:1f25 with SMTP id u7-20020a170902e5c700b0013f1dd91f25mr19485471plf.35.1634437028031;
        Sat, 16 Oct 2021 19:17:08 -0700 (PDT)
Received: from ?IPV6:2601:647:4000:d7:bf67:3ac:3e6:895b? ([2601:647:4000:d7:bf67:3ac:3e6:895b])
        by smtp.gmail.com with ESMTPSA id ng5sm8675025pjb.51.2021.10.16.19.17.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Oct 2021 19:17:07 -0700 (PDT)
Message-ID: <e567fc59-46b1-bc83-c90c-199257ff8c93@acm.org>
Date: Sat, 16 Oct 2021 19:17:05 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: [usb-storage] Re: [RFC PATCH 3/3] scsi, usb: storage: Complete the
 blk-request directly.
Content-Language: en-US
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Christoph Hellwig <hch@infradead.org>
Cc: linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Jens Axboe <axboe@kernel.dk>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-4-bigeasy@linutronix.de>
 <YWmmn4MpTSGHRVOU@infradead.org>
 <20211015161653.muq37x6mkeru6lxc@linutronix.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20211015161653.muq37x6mkeru6lxc@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted
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

On 10/15/21 09:16, Sebastian Andrzej Siewior wrote:
> On 2021-10-15 09:04:47 [-0700], Christoph Hellwig wrote:
>> Bart has been working on removing the ->scsi_done indirection, so this
>> will need to find a way to interact with that
> 
> Okay. So I just wait until it is there. Is this v5.15/16 material?

Isn't it too late to submit patches for v5.15 other than bugfixes for 
patches merged during the v5.15 merge window?

Martin Petersen, the SCSI maintainer, has been so kind to queue the 
patch series that removes the scsi_done member for the v5.16 merge 
window. So that patch series should become available soon in the 
following git repository:
git://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e567fc59-46b1-bc83-c90c-199257ff8c93%40acm.org.
