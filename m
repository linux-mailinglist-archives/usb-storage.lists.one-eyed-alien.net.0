Return-Path: <usb-storage+bncBDGIV3UHVAGBBKGSU2FQMGQEKCEXPRQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd47.google.com (mail-io1-xd47.google.com [IPv6:2607:f8b0:4864:20::d47])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BBA42F7DE
	for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 18:15:38 +0200 (CEST)
Received: by mail-io1-xd47.google.com with SMTP id l17-20020a05660227d100b005d6609eb90esf5030725ios.16
        for <lists+usb-storage@lfdr.de>; Fri, 15 Oct 2021 09:15:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634314537; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0PWxuwZaJHHLGej1siQ7fEcEj2ewy0C1lAqjjv43QBBU2LogXGz3cqtJqK2GYk20d
         7abCYiThZRft8lqriHHgMPjkfLE7oDIcSzBH8vFBVRRVrMQVkbfqcdk3RT+baWS8DvNA
         E5haLB1gwhraE8XDhEuRL5TYTzWM/CTIvC422vl78jUjyaF/ulnsZkzhfF7IbRnm746n
         J2ymisay1DN6QPxI6bktgywMXNIg10xCJNVU3CG6UZXtXgfoa6sbdwWnoyRdcWsS216K
         1vqCqkIwya+iwKpZxrgM/OUKlmABAUKoTtiykKgrvuVEkMQjdGY5R5C4Fu0bfEJeuJoe
         p3NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vsBlXpNE2dE6hcYwNvRvOJmYTwVWETjlrZTsV1b/0wI=;
        b=QJ+8xipD7M2tMQkRmdF+nL8ShHYkrft6xZe0RSkZBaI2V+wQzaQzE8TSLucp7khbGT
         6jWi9ZTUrFA6IRxWGFn4wVJMpOGbqpR+fFpvJVbdO0ECzWLRJB74b3Qyq6xIgMmPtpMN
         bNeo/d9tSpt6S8sPfPGaMRCpznUCvZRyq6SfICF3dPhMh/Ism8rsBnWQuszmI+yjEIHJ
         rt4cwo8+AKJ8ME7S+Xvhxq4VNhA8CtyDhT/dx60sAI2fVgfYgJwwTS5J8KStuF8GZXal
         XpoPBV5DH62AnWWU6CxInC/OAlgmU4g8AH/6tcxjMJo5N+VE1MCP903+fDpuMAlQvul8
         LsjQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=q0ROeP04;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vsBlXpNE2dE6hcYwNvRvOJmYTwVWETjlrZTsV1b/0wI=;
        b=M0W/hnc3/D/N+IYFSKlOTBbOwtixDe2sHJvLWMMiPN3AXFx2V9AEHq9w9NUM9RIU+b
         9hhmmdQnXKVt/jA9Z6Nz+9oukP+ByXepU+P7lVfekFNbWvh55ptcYicIX+rLQ5hw/8+S
         k6XppZqAmiAvssdWGOeXdZH5OsUKIOvbhVXl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vsBlXpNE2dE6hcYwNvRvOJmYTwVWETjlrZTsV1b/0wI=;
        b=5NOdm1oAFp7rzBXaPS4EqswqA7UKixN9O5BZW404Jdwld5GDEcy19u7645ydpqumTg
         iZRdtzSnFNDLlSLdGP2HjhGVNurRCdt9vVS6neghKUGocMryzOrcLImrsVaytD4FZbp2
         1CZ170z9i23uvJ6C+G9OKq+VD+YWAVY7DHsNyRKrt3/bniUr+WTixTVYUnQtRGL5HQm2
         KzfeM0cf5b7veVbnVMulZEfW63hCRXdo9jcEsYdbZmW4st8Tx4laEc4xybL51xeRJTn/
         3wQYYoNjLB5xwk3o+JSjk2NUrqgmQFLJQfYcdtUMuLM5hpYSd9DA4jSzaRwIdeAzpeab
         A0WA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532JKuMY4wGyGBCn2HbWL9wgVDaV4eMa2f1GaUv4WQhbqLVdB+oR
	k31TRIK7hN2QA3kJv+ekL1KchA==
X-Google-Smtp-Source: ABdhPJwxVI3OIEQy4txKXBFFnt5BJk16FT6K6NZJj8OH0+x+abVYrAaD2ApXKdgNwB32ywoM5F0lrw==
X-Received: by 2002:a05:6602:2b8d:: with SMTP id r13mr4314417iov.211.1634314536916;
        Fri, 15 Oct 2021 09:15:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a6b:7b03:: with SMTP id l3ls1869218iop.5.gmail; Fri, 15 Oct
 2021 09:15:36 -0700 (PDT)
X-Received: by 2002:a05:6602:2c91:: with SMTP id i17mr4464768iow.20.1634314536487;
        Fri, 15 Oct 2021 09:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634314536; cv=none;
        d=google.com; s=arc-20160816;
        b=iGz9lLEf5Ue5iuxtfBDL3JoF0pSAqMyCUlyD+lU0NABx6k37xG7Tu8Hu3WSMAWhRTv
         1hch1u/zd85JpLsvoK5lqysXSkhxzIJo2Xd7P4O68q/3GZNcPP7N3ZJ1A2gr+ZHUsIic
         6gkfPc2sRlF/sR6cVyMjVsw8Njnr9NvgKzRfAhPGNPPmuztl2Azm9xFT6B80UpiO9FrR
         uEYi9924XrfBRKqzA/1Zu2ZYwww4138loMOXO+xQWemLJ5+HnXAf+H0n+5uAL4hlVRti
         PuLZBXDu6W5FGrFYBbrW9rlrYis0uOsWBapXgByHUp4UMLQOETxyHhYrFGEA2qpQfD0D
         9nGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:dkim-signature:date;
        bh=kMbTcK15uIz0HsQ3WSvQXeugdE8BLrV8aOC8u6pdZ/8=;
        b=NpaY8U/Ii1HeUilJ8QOQjGatS9UjTJXBLnqVI5eSDOETRSizWnNdlXc8xt4/DhzNEB
         Gc10mD5PLHxghuBJUi3t/k6wTm95ohyo6O4ZHgUGEfoNYDsHb60HOgh497qkEHdz0gku
         vPw3+ezaXbM6AE/QyETWs1X2/x91A3WPOd4m3nS3DRhH+82HOf2fhFWT7WjskzguxThg
         8v+Cj4a2FFLmsyQi4joQ12OlUKakdrVSHGEJ/Iok4heGMPhLKBA8gvAi31JlFeNVIHjB
         8zCmW9CGrIySW7youP3gWPMbUmaF7D9vU0GoJ6twzvQ/Pg2nsjq0/AVRXcOwK4nqNKFf
         IrPw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=q0ROeP04;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by mx.google.com with ESMTPS id b8si8542840ios.88.2021.10.15.09.15.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 09:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Date: Fri, 15 Oct 2021 18:15:33 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Christoph Hellwig <hch@infradead.org>
Cc: linux-block@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, Jens Axboe <axboe@kernel.dk>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [usb-storage] Re: [RFC PATCH 1/3] blk-mq: Add blk_mq_complete_request_direct()
Message-ID: <20211015161533.5cnhqqd3asy3e3vg@linutronix.de>
References: <20211015151412.3229037-1-bigeasy@linutronix.de>
 <20211015151412.3229037-2-bigeasy@linutronix.de>
 <YWmmULYUeo/Zd6Jl@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YWmmULYUeo/Zd6Jl@infradead.org>
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=q0ROeP04;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 bigeasy@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=bigeasy@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On 2021-10-15 09:03:28 [-0700], Christoph Hellwig wrote:
> On Fri, Oct 15, 2021 at 05:14:10PM +0200, Sebastian Andrzej Siewior wrote:
> > +void blk_mq_complete_request_direct(struct request *rq)
> > +{
> > +	WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
> > +	rq->q->mq_ops->complete(rq);
> > +}
> 
> As this is called by the driver we known what ->complete this helper
> would call.  So instead of doing this we could just call
> blk_mq_set_request_complete and the actual completion helper.
> The comment above it will need some updates of course.

So
	blk_mq_set_request_complete();
	mmc_blk_mq_complete();

for the mmc driver and no fiddling in the blk-mq then.

Sebastian

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20211015161533.5cnhqqd3asy3e3vg%40linutronix.de.
