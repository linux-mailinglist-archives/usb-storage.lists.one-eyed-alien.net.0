Return-Path: <usb-storage+bncBD3JNNMDTMEBB2UEVWFQMGQEVSWIN7A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B01043050F
	for <lists+usb-storage@lfdr.de>; Sat, 16 Oct 2021 23:21:48 +0200 (CEST)
Received: by mail-pl1-x646.google.com with SMTP id k1-20020a170902c40100b0013f47bac4d8sf4432932plk.14
        for <lists+usb-storage@lfdr.de>; Sat, 16 Oct 2021 14:21:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634419306; cv=pass;
        d=google.com; s=arc-20160816;
        b=cxAhplnA9DDlMnc3MWcHJp785tOnl9wewcz/m97V90OtzkaVSm+FenJTfLMYLmQ4Kx
         zm31q2wX+SW3VDPURM861quTZSFexji9/y+W2+Wejw9V+c6k0HAAn7+/wxHkzWjDtMm4
         FhmXBQMvZLT/5VDYBcF6KqVu2ZVQNyexFno03TZ+HOXrrdhqnKXc91ySZK8WYTj93za7
         2UiLcAhx/KwsQgEBECQthAcrXFDFRB60WNVwGSb0wfXzCboYOd+d9CC4No3qyNwLWzzo
         SWTx6DX0Lyi9+bu0AsvrzMVd4n8UqC9+Z0z4FoSyvieS1zyTuYnTL/WiCkpKlCJgr1qI
         8xIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=PtcOs5K11UsKQbQL4QHTPT6pchFNJoC8OndMdR+Uhy4=;
        b=zGbMJSkPXB4+1pDXh+9bUdZ5vFO1SCUBoQPvLj6ny1PvwGNuuCsrTs9FUWIy5fxAR0
         dhtqzj2Y8uTTsKPOG6XoQofl9uLHvi4Uige+SpeHw4HiSbIPnFOuSD81L8wILk3LBv9G
         2APooJ66qEzRsFvOIIecV79DX21e360LEDx/LETFRYaKS/13yZBUo0f9RaVqEFmgxPNT
         hKoBdUeVtN+UXU53BhSYLP00qzshKq2vAAIFtLbRfvE9LyDETLqKHXbq+sja7+ZZha8A
         SNQmg0tGGChd2iM8jEgnEUR2WCtfwHNU0qgb3NoU9QKfaJgQjY0QMpdca94kgL9oXXEQ
         hWxQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PtcOs5K11UsKQbQL4QHTPT6pchFNJoC8OndMdR+Uhy4=;
        b=ER2WxdeTYtjnUOsq5u/u3MehUG3WqMv/ASbFuizrbzvv7URS6mnOD3pUcaNOxo2KJQ
         TNRNZGuWLqS3a7yDZYsgoLz1RihQcP1cAJvOgOaS22qv1aCHGEi6fQzp4XPPB05Mq5CT
         vI8VjF7nQRBpI+AfEHAiIx2Nlu8Uwif9oPa2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PtcOs5K11UsKQbQL4QHTPT6pchFNJoC8OndMdR+Uhy4=;
        b=MTpat4prV+x6X43ucQhc8Xwba7IcuAGvbB1Oznnig2QZxwBGMkOP6YPaPnWoJ5Yf93
         n1tsOT/aqqDCq7f9jFEWdAs3CKBGNZei3W9OR4GcYQ6Yk16C7lwtH0qDFsnZG75PxMnr
         XeyUTvN/VdnBZp8fqxDbHZqAbzPLAMpqALvMKrnTMMOj0P+kYc+GUqk9qGHKjL2saU0U
         iwy5vkat93PcXx0fdeMMCE+nwL6nMyMYmCBdNVQEj022XSc9+dTbbdma/Z2JhLNyGp3A
         AqoFWmvxDTrGlegI6jE/D2KjRjxBNTjMd3Q2KPZ/y6z+bdySK+80XFXuQaOr71Xs4Ytp
         A3Tw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533QOqWNob6eGYFpARI6LDAlN88Ke9eaiW7RJ3crcqEQmEC8QdUd
	MWqnaMWC0/mbi1ICuxJrvUUpBw==
X-Google-Smtp-Source: ABdhPJwHHB/gSFRgi5Q6JML/ueK+mVDwCwG/3cCpSskP8q+QFjgRz2a3PaKF/wR6OjueNTsxO+9Zdw==
X-Received: by 2002:a17:90b:f10:: with SMTP id br16mr37613115pjb.67.1634419306413;
        Sat, 16 Oct 2021 14:21:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:241:: with SMTP id j1ls6468259plh.8.gmail; Sat, 16
 Oct 2021 14:21:41 -0700 (PDT)
X-Received: by 2002:a17:902:ba85:b0:13e:c846:c92e with SMTP id k5-20020a170902ba8500b0013ec846c92emr18353817pls.57.1634419301176;
        Sat, 16 Oct 2021 14:21:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634419301; cv=none;
        d=google.com; s=arc-20160816;
        b=spWoq/3APC9X0kHp6VMQshEIGXKlPhmzEzA2YYPPbaEddOpPqXAuVyTUrrw0x3Znhe
         RXZu0L7Wv3rLl4ndwmvbyss9PeI2nkxj6gaNaMd0JWymAHn6FHC5xO9YfuO+X+5aOgl2
         T1Kak8cW2QAqVhp6X22qBLhbWuE/l+l9f59MRPcF1op1v3VywLuUNRjnZQpeYhoZHtIM
         y3ajfu0zmsfto8uFcUWYzMGk2cDdRScJ6TBeREaxJuJERNfucSNOUiMGo5jU19dnSYX7
         LMzKZrVxC/R7JSJlAZ/xUVpKMuPYySQWCFEPQyZq1Rr9r4g/VvunKZQVecH4szKuZSMx
         vCtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=pP45eXzz1JfHD3xUyRKD/lLddvhCQLEQjybOQXsKJZk=;
        b=jtG0E8KFSiKAW8kduiWmgd7vbBWI6oVB6cvt/S6P/ZeycNACWxkAH6y5jB318yFtHJ
         KyVUyk+6suQj8yA1CZWrY3olnKYAMMChZ9/CgI/ln8Hovf8ewKUf2/OilqfPe0polq2x
         oAn445M7BB0fu/WP2RaVD/oqCMoS40DcKrOIUnHSU5VqtaPrnh3Huo1XU/H89sQ4hCGB
         sNn2JXSOD7NVM2CBxNYP/8VwnraBkBz9mxmmDzIzJ5xYItLuJ4PQKWknd/q47Zal6wBJ
         t3NHWKVw4BymaqMuq7oW/3DvEJCWJncuIPxJy5pfmdeemGAQdCCEAsYbjJvsv1x2OriT
         bnMw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id r65sor5075705pfc.58.2021.10.16.14.21.41
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 16 Oct 2021 14:21:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a63:3481:: with SMTP id b123mr15521900pga.230.1634419300624;
        Sat, 16 Oct 2021 14:21:40 -0700 (PDT)
Received: from ?IPV6:2601:647:4000:d7:f0a3:eba0:b940:fc7c? ([2601:647:4000:d7:f0a3:eba0:b940:fc7c])
        by smtp.gmail.com with ESMTPSA id k3sm14836806pjg.43.2021.10.16.14.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Oct 2021 14:21:39 -0700 (PDT)
Message-ID: <a6354cfb-753a-8376-b96c-f35fda9b9b8a@acm.org>
Date: Sat, 16 Oct 2021 14:21:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: [usb-storage] Re: [RFC PATCH 3/3] scsi, usb: storage: Complete the
 blk-request directly.
Content-Language: en-US
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Christoph Hellwig <hch@infradead.org>, Thomas Gleixner <tglx@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-4-bigeasy@linutronix.de>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20211015151412.3229037-4-bigeasy@linutronix.de>
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

On 10/15/21 08:14, Sebastian Andrzej Siewior wrote:
> +static inline void scsi_done(struct scsi_cmnd *scmd)
> +{
> +	scmd->scsi_done(scmd);
> +}

How about leaving out this function definition and open-coding it into 
its callers?

Additionally, please rebase this patch series on top of "[PATCH v3 
00/88] Call scsi_done() directly" 
(https://lore.kernel.org/linux-scsi/20211007202923.2174984-1-bvanassche@acm.org/ 
or https://github.com/bvanassche/linux/tree/scsi-remove-done-callback). 
Otherwise Linus will have to resolve a very complicated merge conflict.

Thank you,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a6354cfb-753a-8376-b96c-f35fda9b9b8a%40acm.org.
