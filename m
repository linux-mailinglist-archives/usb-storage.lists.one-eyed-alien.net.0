Return-Path: <usb-storage+bncBCFI3EWWWUDBB5524HTQKGQEPVVBRJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x348.google.com (mail-ot1-x348.google.com [IPv6:2607:f8b0:4864:20::348])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5BC368BB
	for <lists+usb-storage@lfdr.de>; Thu,  6 Jun 2019 02:25:29 +0200 (CEST)
Received: by mail-ot1-x348.google.com with SMTP id b4sf294252otf.15
        for <lists+usb-storage@lfdr.de>; Wed, 05 Jun 2019 17:25:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559780728; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEfNtXoQioEcJqOTYQV2pkRvChAM8amBdF/lBQWGc7hYhl70fpp09dBqJYKCeQG54D
         Pj9fu2SJ2ez2KP85WtYb2N9x3gmxpn7fmZprGtpZGWuYZE5E5+NiFzR9dmU1ZiYzeAiQ
         vnpp3lSeVd2AgzjX9TluC1ewvs/XB+ii8HwD/JG7rI8IW1TKhrGQt6o/Tk5ZkASwL89+
         fh3WMHsxc0eAOgw1nmAku5zpYFDwEJ21uCGbM+KW6Pfc9ZmAC38EwCjMFxQmo9MR/sf6
         qkAZFhtlnkuR/g3gkdzN9HRTrZZkyoPHavCV2lXVYRyBjZ9po4dsqDO5mivIOsGb/pfR
         xG2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=ye1rK7Y+b2zv08tbDjIRAB5gkkXuMZkWRfwoC/3Gm3A=;
        b=zvQ4kf1zKv0fJf+07zdn0+wpg9ntT8hs5Oxr/pOHnpanayen3UJomJSWw9iMGJfY8A
         tX0heHsK6Seh18qA1deqTSz79XJvAZAdzr4MC4dDdKZvh0LTBUJ3YgSTtmizZ/nW48iO
         8dwUb2k23NxGSogGDv6h+xzpWw1mgdvaKJR2pBZQN50gbnIdawr3MHAZrKOsWFPMunmZ
         NwQlg/k+ICLdksCxOOqNN3bKoo5KegEFjEqyJNOTgIlt0oitk6T0d9w6kp+8feYHHTL4
         NClI+QXwfiYygsedP99mDfJvQTX3pQi8BVt67GHYzcQgU1MnP6ejXhGPjtdmlQ+MEwAf
         vnfg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of sagigrim@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=sagigrim@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ye1rK7Y+b2zv08tbDjIRAB5gkkXuMZkWRfwoC/3Gm3A=;
        b=CywDTmO3FkmnmrXTtnpvZ7fY/dSig4kY+8Q5avGNtK9e7OT1er72BMOpThq0XjqcAk
         +a83GdC5LsnRB+/1LRxdhz5bPUw9oEtiqdPeXlLDXyijsAWAHAcT3WLdDV2retUlxv+T
         /EVJBM9KmBEQQix9uYf54AS+E4QqLz/2FKlms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ye1rK7Y+b2zv08tbDjIRAB5gkkXuMZkWRfwoC/3Gm3A=;
        b=UcrA/buThTR/y5VmXC0r4U0GX4cYkshef5KSwKv63GvvnuPM2z8B4PLhAVtHvEwONX
         E3iWyxOO93J7HRYubA9ezLxLMqbZvlqgSYiqlMNxCaz30tfplkFqQLWT1bJTRzD++GJF
         dkRzd8Ka03aI5u34vE3Lj81VKFkZmo16fvj81jZBrFnHNFIZqOTF9eiMcZILantyyGLl
         3xgwzNSCJIyI5OZpE7zMtsJgA4Xp1CPQXnpvEyVXeG/A9ztXkSXf+DNYJWlj3mijum5i
         nBzAKXJKy1jjZVJ/cVSoQE8TteNmP2/EtJSHpu5p+/KPZfeJ4A0nIdVEnFzJ5gIm1Gw9
         TDrw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAV0Zchury2MA+cqazmlJhaOiEiHJqzVS7iErzUoCK55btXp+uNy
	hOBt31PmehVGVcyHyFtaGtA=
X-Google-Smtp-Source: APXvYqycPZGetlSVo9jbPtIVcAIAnIHbSvX2TaLyGARJdUQAxUJyIEW4pdCkQP0JD7ilFdt0jUgvTQ==
X-Received: by 2002:aca:4c14:: with SMTP id z20mr10736628oia.121.1559780727944;
        Wed, 05 Jun 2019 17:25:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:47d2:: with SMTP id u201ls562508oia.2.gmail; Wed, 05 Jun
 2019 17:25:27 -0700 (PDT)
X-Received: by 2002:aca:b403:: with SMTP id d3mr10386241oif.179.1559780727619;
        Wed, 05 Jun 2019 17:25:27 -0700 (PDT)
Received: by 2002:aca:f413:0:0:0:0:0 with SMTP id s19msoih;
        Wed, 5 Jun 2019 16:35:16 -0700 (PDT)
X-Received: by 2002:aca:62c2:: with SMTP id w185mr2592108oib.110.1559777716593;
        Wed, 05 Jun 2019 16:35:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559777716; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdWPnzd7ogc3fc/R83HtnTvTKcyV+HXJq+x+0CaM7+3OhpLt5yZ2l7MJepusFU2efc
         5q1vSh3PA0CVulB3HsJv2v4wKGsm8oErKurtA/h3yrtjxBDLVeU8//lDdq9cTfC7Yvbs
         K43c0th2JIjfOMb7pvVN4BpFNJL/Qtk+X5Loq0gSA0T+uNzn3cxoPUwAVHz8p8u+wI8N
         +aPYUeeN0rJfzlDriyNxTMrraxfPPANYwU6gAiGM18sydtfo8i0Kkb4I0AomiXz+6PCY
         jbb9PvRHb6HtdoOPM8YSrfuQY7xBivhQXG5gzfszeONeHOAVge4ifRRKKJbh9yf/Ufix
         Vwfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=sP5Jo/+KivdI/bxh9Ffstcmb0kFLHw7pjLkPnap8FYc=;
        b=p0P4uYqitDquto4L0SR2FYeNSAm4YxqchOXq/x9cGNM0LqVgOA+T0bw9xJm01CEzp/
         Oo1faMtUoSJJbFvv1xh1QDMNqR/YOH4S18d8jtPRK8NZwFBEf2R2gpo1v608rHSIGlxB
         Xe1TjezsVuGddjjhc+5Z0wJ6Qt0KGPKYtAAdpQ3s8t2R4apAi+9ZMp881gZvqk49PRIP
         S1P2LYg4XYXx/VcPwLyFM/EJcKhFn4Q/2ie6SstuMAzdeynEs+rolsSrycJelg9VEeP4
         Ec9tH/a+qT2idMUuzEEywe76DHq0CrVWochYO8+pIjXe0xU3VekwoBTy7BBmgijb7GHr
         wdKQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of sagigrim@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=sagigrim@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id x205sor54406oig.34.2019.06.05.16.35.16
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 05 Jun 2019 16:35:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sagigrim@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:aca:dd08:: with SMTP id u8mr5800529oig.27.1559777716296;
        Wed, 05 Jun 2019 16:35:16 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d? ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
        by smtp.gmail.com with ESMTPSA id m32sm56535otc.55.2019.06.05.16.35.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Jun 2019 16:35:15 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH 08/13] IB/iser: set virt_boundary_mask in
 the scsi host
To: Jason Gunthorpe <jgg@ziepe.ca>, Christoph Hellwig <hch@lst.de>
Cc: Jens Axboe <axboe@kernel.dk>, Sebastian Ott <sebott@linux.ibm.com>,
 Max Gurtovoy <maxg@mellanox.com>, Bart Van Assche <bvanassche@acm.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Alan Stern
 <stern@rowland.harvard.edu>, Oliver Neukum <oneukum@suse.com>,
 linux-block@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-scsi@vger.kernel.org, megaraidlinux.pdl@broadcom.com,
 MPT-FusionLinux.pdl@broadcom.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de> <20190605202235.GC3273@ziepe.ca>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b3e46295-4257-86ad-6994-f83b736c8f40@grimberg.me>
Date: Wed, 5 Jun 2019 16:35:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605202235.GC3273@ziepe.ca>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: sagigrim@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of sagigrim@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=sagigrim@gmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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


>> This ensures all proper DMA layer handling is taken care of by the
>> SCSI midlayer.
> 
> Maybe not entirely related to this series, but it looks like the SCSI
> layer is changing the device global dma_set_max_seg_size() - at least
> in RDMA the dma device is being shared between many users, so we
> really don't want SCSI to make this value smaller.
> 
> Can we do something about this?

srp seems to do the right thing:
target_host->max_segment_size = ib_dma_max_seg_size(ibdev);

But iser does not, which means that scsi limits it to:
BLK_MAX_SEGMENT_SIZE (64k)

I can send a fix to iser.

> Wondering about other values too, and the interaction with the new
> combining stuff in umem.c

The only other values AFAICT is the dma_boundary that rdma llds don't
set...

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b3e46295-4257-86ad-6994-f83b736c8f40%40grimberg.me.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
