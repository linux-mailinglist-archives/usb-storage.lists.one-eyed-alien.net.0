Return-Path: <usb-storage+bncBCK2XL5R4APRBIONU2FQMGQEDQI4N6Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ABA42F7A8
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 18:04:50 +0200 (CEST)
Received: by mail-pf1-x447.google.com with SMTP id v13-20020a056a00148d00b0044ccf66dbd1sf5559551pfu.4
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 09:04:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634313889; cv=pass;
        d=google.com; s=arc-20160816;
        b=qEfRfXjRcnEjv0fMeHZui3RuTOidDbUY7F/zNNW5xH4E00kOtrD9o7K5kgDEEf3INo
         eAT/l/vBQkhUpDlu+9hbmXZiafoAL3HoGx54UD8vMoCdUj7rRl4o83GiH9U0+e29/K+M
         tjaQpYfk1NH1i8kHJVPP+KbBjEhC497CLW+HbI1AGbiih/ZpPFKpp88HpjiLskR/k/P/
         CbE+LwuDqmrJ7anAEZIbNyQkMqEDyiZxCCJ/tjaHTvSxzcwwJjV6nZ8NCrW4Cwyz+x/8
         J5tghIviFlM/YmfYYVE6EzrnLBwKZwErLuHIStH2VhgH5YlN0lCPSopXgm481qJCIDbr
         CpDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Oc6bqLPAshmwH2KsV1iMWodIqGduwNMXIBdd/eV/AXg=;
        b=GTxtUt5Jbe2l4CCkkqldZVIpIilu1J4uPufmxsuqLYqht4m2FDzPKchI4tXJxoDEob
         t+FibyyBA1TcJQoy8c6a++k+PoAVKvrSUd9gTNysX9xKRwcYlt/vUv11+gDK6i0cJcJQ
         BeYk0s+7MkYIcXvaBZ9EOqoBj6i1Jo/AHrroJZnmKkrZCJFnnDmf45BYnz/CVJTJhv08
         rL5EhLn852ZWjsz4unXAu7rFxmVgsGAZeniHGyydNAOSOXfzvlhRykJ49wCL8E6asp/e
         tmhsiB4m94tJZJlrSad6jhn3GbJdMtt31di01brQBLJ6yWdLA0FTva+cfYYqSYoiH3pX
         9ylw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=1Zf1lSV8;
       spf=pass (google.com: best guess record for domain of batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oc6bqLPAshmwH2KsV1iMWodIqGduwNMXIBdd/eV/AXg=;
        b=b1Ev+yiA0u0SA4hq4Ec8w17rSnOFRnZJqkABchqqJ7lsBvRXMfOwPvKwBkos4gRONt
         re3o39TBoxerhdwSaGX+FkqKq5o8avwf7rNllSB022b5rkmpE5nauGc7UQNxi7T1L4F5
         gWKMXR84C4ioMdZ/bipmqiRSpgRVn84i58zcU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Oc6bqLPAshmwH2KsV1iMWodIqGduwNMXIBdd/eV/AXg=;
        b=a7hr9FxXclk/a1ebD21/yU5wq+4MouSXlgDdY7V2d52JdrJ5MToFc6dpA/whp9PIkY
         qelekU1Meu8096Wl5Wi9/EatrAb5QPq6A00cHQfXs/QOl53hSDqS4Rz2eLK7Bcjyf5zu
         p6UB+mMgXeZkhUKHQVEguoL3/6eOeibWou18zacz2/LeCfkd1ckNph7g8ccIm24279Mj
         VLQy+X6LtmRW9QPtp8st0yCg0VM+6aMjsd0+aXxpwMoarUgCer7b8DkOqGMWqqtJ+NEn
         vrKSKe/meCTarAGLcJRZM69DPCQKozUnpOwlGQzWQO5NuTwckN8fBWA9Ch03isIBG8ub
         MzXQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533xlXKP5rBtP49XoYjw1ttIrH993eML+7HtNdMKrrCDHQWAs69j
	0au9/w8s69dEvEffO7koUDn3yg==
X-Google-Smtp-Source: ABdhPJzUkK/p5nwMQtDFiBzdya1DjOscbnAApHUmU/+aPUMlVDf5Z1c+xS/98mzW6pOB3DXGdO7qvA==
X-Received: by 2002:a17:90b:2509:: with SMTP id ns9mr28861224pjb.47.1634313889346;
        Fri, 15 Oct 2021 09:04:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a65:5945:: with SMTP id g5ls3279897pgu.0.gmail; Fri, 15 Oct
 2021 09:04:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:1352:b0:44d:4573:3ac2 with SMTP id k18-20020a056a00135200b0044d45733ac2mr12719213pfu.12.1634313888669;
        Fri, 15 Oct 2021 09:04:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634313888; cv=none;
        d=google.com; s=arc-20160816;
        b=u70SfuBK+Nn6Q5Zox9GYuDkyukDXNicuR/Hf1tltbbhbHx0zUiG8jxG100goRHbhS5
         HFT3N7LPXrnUR/vidiCdI5YzcahtMVLASWY021S2DVLtrzTVRQN9Bu16snCiRbj8VIMr
         Fxw2rzwRm/tDgeHGPe5leCF8noktNkQIedzvVGr0SB93PBGuwY0z5Ma64CtF4nzQekYU
         s7T1bA5XjtzZ+svO7I3GTqVlXNQk+YrHeNzY/JyFKxPsYe5Lghm2MGN/zGv58tEUkWVN
         WyjttsVDCvcMXk4KBT2Uep5TQ5Y9l7QAy2oeuZE+F4KusZT+p9B5UKAYQVxqSFg/X69T
         fzLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=f31w9jlCa4y93qVpkbz4atwBJoIOyvuXZWoGFNfwrio=;
        b=iSXzKcWyYvOGS3Dgfbsh7MmDV69ESljuy2V/AiTJJ4DaR4SdFae5DeYt7CZXbPsDrs
         nF7lecPK1d3HHqm0dOGCr1Nmsk/bkwFUaTNJS4s2SstOgcHN7P5zZ95gEZsWRchR8b3Q
         kjWzNLVrFZPGChHakbqWAqUIqrunyXT59agax+7MkMpIGSc1ScjGyS7yrrvrWzDq+/1U
         0b6j/SkdUojJrGM2mpkbRdYvjT8ExNah+msKGAU3qfoNEig1xPHX9gkVcA+RIlmc/zW9
         sQhGAIZzU7KDmg9Gk5VTdfTrrwSNK4vH4Tj+C+K1Iz0h/3OVm+a9K1Zj/TZ05GfwVrcQ
         Cp2g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=1Zf1lSV8;
       spf=pass (google.com: best guess record for domain of batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by mx.google.com with ESMTPS id hk6si8363035pjb.0.2021.10.15.09.04.48
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 09:04:48 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbPhP-007zTe-Fh; Fri, 15 Oct 2021 16:04:47 +0000
Date: Fri, 15 Oct 2021 09:04:47 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christoph Hellwig <hch@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [RFC PATCH 3/3] scsi, usb: storage: Complete the
 blk-request directly.
Message-ID: <YWmmn4MpTSGHRVOU@infradead.org>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-4-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211015151412.3229037-4-bigeasy@linutronix.de>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Original-Sender: hch@infradead.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=1Zf1lSV8;
       spf=pass (google.com: best guess record for domain of
 batv+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
 designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=BATV+717e4f5ff9d7c10515bf+6627+infradead.org+hch@bombadil.srs.infradead.org
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

Bart has been working on removing the ->scsi_done indirection, so this
will need to find a way to interact with that

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YWmmn4MpTSGHRVOU%40infradead.org.
