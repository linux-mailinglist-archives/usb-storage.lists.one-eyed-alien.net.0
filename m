Return-Path: <usb-storage+bncBDR5N7WPRQGRBJ42WGFQMGQECNXU64I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id 94056430A7B
	for <lists+usb-storage@lfdr.de>; Sun, 17 Oct 2021 18:19:52 +0200 (CEST)
Received: by mail-il1-x145.google.com with SMTP id b10-20020a92dcca000000b00259331f4eefsf6524047ilr.13
        for <lists+usb-storage@lfdr.de>; Sun, 17 Oct 2021 09:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634487591; cv=pass;
        d=google.com; s=arc-20160816;
        b=T4Hj94A2gXFrkGANzRDyO7BjfAVCIIF6wqQsOQmkwQsXblhE7Kl/S3yiFE2fMk2jfn
         /yETyyCT+DRc2nK7IfeacmbGFHthXbNzQGBr5U4pm1dpRdyDVcSLdRJJlVNsPneYE5/B
         o/qV0CRUAPoiWL9WqO44BgEsnwOY0mQgPp3GnS6djSlZSMBBTG0spN9x+OOvRwcAD/Yz
         c/9hkHscw+BvQmi7dFYxgcgCDXXEZ6rk4EdI5rT0yQhc/pjVEUixyUim4JMJUpDMCHYS
         jlyvBbwfRQ9eblQZBk+qDHyqWXmh9dhNBgfAUkZ9tIjG4BmGpHRalkhFjso4rS2R3HpP
         ypTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=RDjuvred6rXXScPhYXSEXPqLsqVsnugSg7MiTozxqGQ=;
        b=LEMH+ZJ2Et+ENWUjbxbW7mBIME5a9L7ndus94QBFhn0656KL1hU9F1HVdbGwhuwdjc
         xX2gwiHZuY7oEbsVXDTyI5Jvog0wxsXYA1ztDR/y8oBKMVDBMXNtsTvUZGi7VsexadFu
         qLzJ6IM2kOsBdIjMmTOYbRsfslvVm6fxDnY13bRu4EzYdvyf6aneIW2kSU09/whLJkUO
         nfsQwKccW3J7l5SpZZCA+i285ZBoLvL7dqObhtRwJCPhTCANC5z2PcBp19Heo5M0R12o
         1gf+aroxf7DVzN0qUC46C3Dj4ME9JQZPatF37OqwOGlFjZAumiYIyCcxbFvebvVbsZRo
         ReaA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112 header.b=0nNRmTW+;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RDjuvred6rXXScPhYXSEXPqLsqVsnugSg7MiTozxqGQ=;
        b=BtkhYLBe9k+oVh0hOx3Nmp/eWaBxZpXzmzsY6bBPudsuBqZapn+fCTp2afLkQWK9qT
         ky9uFopvrh+pWRS88w28ngTJEP+ZrRyxD7562tIFq8C+6YUoC5iQ78ViMg+yts0x8hJJ
         oGjHGLHRx8SxsNLZ7QJ2QQsE23xCSSNU1yJUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RDjuvred6rXXScPhYXSEXPqLsqVsnugSg7MiTozxqGQ=;
        b=Y2Ib2N5YCShKRFhXs6pdGQrS7R9wIjq83AvZQnsNhoa/TW/KEtg34RqbvuqumCuVHN
         CRK+k6AzBiFYUfztpmRBdTkt3faHKltlGTRiA3K/Fr0/M/8rcktJPiTkqRehD3lbgnWt
         vUj0j3hqSYzjFdOSY+yGyWce2PxMUWly0Alv+pLXFI/8caBPgbqhcqD3iy9dDxTrDrqb
         f+qW6+Bl6MkvAz3sMVcyBxvbByvPj7kTrfCPMTFiZlHQF/hw37FDiUc0F0RJIzBfYO3J
         XnIfSYyr9NAaM17yWiQx6DuW024lLzQEXbc0SqKb2YfSU95KcfoXUIVFX3qs9OX/evFc
         nGPA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5306xwQegRIKsC1/ppK7UiZRkgcb7prNuWCMOAcLZYWVYg0g1hfD
	Z0vCa8zs83YKiWLLoIb/SBb2Xg==
X-Google-Smtp-Source: ABdhPJzodJ86U/pMe3qE+r/Dq1Og0PDIZZc1vngyGdp4Ls1wiWy3LWo9E18hlECqSK40CBiqVQd3Iw==
X-Received: by 2002:a05:6638:2601:: with SMTP id m1mr292589jat.106.1634487591382;
        Sun, 17 Oct 2021 09:19:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6638:268e:: with SMTP id o14ls1215194jat.1.gmail; Sun,
 17 Oct 2021 09:19:50 -0700 (PDT)
X-Received: by 2002:a05:6638:d10:: with SMTP id q16mr4509419jaj.100.1634487590853;
        Sun, 17 Oct 2021 09:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634487590; cv=none;
        d=google.com; s=arc-20160816;
        b=OnPUZeK+Dncpotd6ohiPUj11b1TNcsfTojYdsm3isI5H2R1D9Ora6dgl3ZV3HMsJlu
         LGlIozay0Z23s0X+xk5lXLGc9yVrCIZs3z6RjsYHaoij/yKH4DnmcMBcGo5+HwPALJ3U
         xc9hiZYCtx3RGN9r+4BQqt2Ot8czu9nKwsbfmvAdDCXAGmHE+IwLd66/rwEAKUlcqINV
         0xIW8WcXn98tUCqmMFZp58SaEgWQ0WR14GA8EjGLJ766OZO7YYFDRydhrRc/7bs2vxct
         PI/RgEE2SbHxtuUgCbnO9DHBzaSj4ybX3gXDGIdjLxmMjbcYEKyXU8NAZHDAVOGrJ6Xh
         1V/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m98bfzlixYwHRJy9xQyd49Ys4ry64BoGTkvwZJ8uo5I=;
        b=dBAe/0uvyEb7+J0hnXrnvslPmEQMO1XHP0tcsSUEXDDZIYxzyGFtYHk+WPgnTaNy9k
         uWHzajWNB+O7sxs0Ykv77yClK16hJF8Y4Zp32sGVYOEGLP7Liw1nKv7CmKtSCUDnr+Xs
         94czJXXhvniUMVQaV7ZpeVJegR1VFKyW3WBjDNWJ+0ckbL2v4ZPVJehAw8deg9WpSsZ3
         Zi3SlPzOUJtKV5W8mmS9tDW43uvYaKuaL2oiMqEgytC6I/h0g7dhjF2mcWvkpATou0hi
         cdNr5wt+Di4YwPTYp3iA5JJ1zdG8FhBSaWEjv1KueNNKgHr88K2grqG+ETbe6IuBC+yp
         geCA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112 header.b=0nNRmTW+;
       spf=pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id o2sor5416607iow.57.2021.10.17.09.19.50
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 17 Oct 2021 09:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a05:6602:2599:: with SMTP id p25mr11374972ioo.90.1634487590516;
        Sun, 17 Oct 2021 09:19:50 -0700 (PDT)
Received: from [192.168.1.116] ([66.219.217.159])
        by smtp.gmail.com with ESMTPSA id 26sm5416212ioz.55.2021.10.17.09.19.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Oct 2021 09:19:50 -0700 (PDT)
Subject: [usb-storage] Re: [RFC PATCH 1/3] blk-mq: Add blk_mq_complete_request_direct()
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Christoph Hellwig <hch@infradead.org>
Cc: linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Ulf Hansson <ulf.hansson@linaro.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-2-bigeasy@linutronix.de>
 <YWmmULYUeo/Zd6Jl@infradead.org>
 <20211015161533.5cnhqqd3asy3e3vg@linutronix.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <951f4cde-fcc8-f5fe-845a-ccdc3f360428@kernel.dk>
Date: Sun, 17 Oct 2021 10:19:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20211015161533.5cnhqqd3asy3e3vg@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel-dk.20210112.gappssmtp.com header.s=20210112
 header.b=0nNRmTW+;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 209.85.220.41 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 10/15/21 10:15 AM, Sebastian Andrzej Siewior wrote:
> On 2021-10-15 09:03:28 [-0700], Christoph Hellwig wrote:
>> On Fri, Oct 15, 2021 at 05:14:10PM +0200, Sebastian Andrzej Siewior wrote:
>>> +void blk_mq_complete_request_direct(struct request *rq)
>>> +{
>>> +	WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
>>> +	rq->q->mq_ops->complete(rq);
>>> +}
>>
>> As this is called by the driver we known what ->complete this helper
>> would call.  So instead of doing this we could just call
>> blk_mq_set_request_complete and the actual completion helper.
>> The comment above it will need some updates of course.
> 
> So
> 	blk_mq_set_request_complete();
> 	mmc_blk_mq_complete();
> 
> for the mmc driver and no fiddling in the blk-mq then.

Just pass in the handler:

void blk_mq_complete_request_direct(struct request *rq,
				    void (*complete)(struct request *rq))
{
	WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
	complete(rq);
}

And we should probably put it in blk-mq.h so it inlines nicely, and
that'll be faster than the indirect call.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/951f4cde-fcc8-f5fe-845a-ccdc3f360428%40kernel.dk.
