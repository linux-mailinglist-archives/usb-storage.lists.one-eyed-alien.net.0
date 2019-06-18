Return-Path: <usb-storage+bncBCWLFYFHWUPBBPH2ULUAKGQEGLNX7QA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id EE80C49E3E
	for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 12:30:21 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id x17sf741629qkf.14
        for <lists+usb-storage@lfdr.de>; Tue, 18 Jun 2019 03:30:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560853820; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxRdTQDha1L1hRq3RaExtp9L1RWV1c2/SzEPFTWFc/tTRCkVjfhllJiSwKbu45nArs
         Yc5IhXUX+wqh17e9fdIdGUGik2ZG4tG5CiJgZtgnmdxlWmXpXTPeQKvWQ/TE2gdTfJLG
         SwGXfqNTzdFdna75n/eJeC3MNhhZVb9wrytyxfwmxIQ8glwTkjoB/NNuVqrErDXtLhnp
         Jj3jQ6jWWGXvte7TXXQcwq/ALpdBF9hx7EDkLdzg4NSYowQS3PlolHxXKuw37/B7Alh9
         HJPY6l+CpcgQ8ivTkOWJiuy7FnAPc57+TsAaK0SJL9jFOFpCebSa80OkmpbbZFDQ9QZw
         /2qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fm0KHdD3ZItvOsu8DBUk6T0kTZClWfqpjqEcxzF+STg=;
        b=pYs9hDGgo6P5xfLE561VEbUDbciHrYUyaWSmapykSRhrZbWrg73dZzZ5vpaFnP9RXh
         vFVnZz1NZX26Ew5NrdbpEnf5r01cTx+glL/y8bG8wrrpByuEGKvNWUdRxXGYZv54QA7K
         cDA20nHnuc5s6xfZf+EA91G8ZR4NVaoO1fZIFNAFN/THOVeRntPMwW5aQVDIY0bm4Ih2
         TDLN49QjG4jJBRe7uzEne64qsh5QgInpOxFi/IZWWAIMBeAif2M831ZlptQEG3yh49QJ
         JTjOBFa2RIfjFp4wqo/uzEJwPuHHFDeTPCAHA3sxgA/kGj0XVCtgsmjyMeV8/okk0Eyp
         w14g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GDTAByqq;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fm0KHdD3ZItvOsu8DBUk6T0kTZClWfqpjqEcxzF+STg=;
        b=dJXaoFb3wPWdzX1NWawWOXojrZBkx5pWxctokSw0+g64VBkQEnJS7QvAIR2ZsFnbD6
         bsXfpQ27DvIqoOlewRBNju4hGANOISGIXQn8wHhJOWI/UMGw7vy7W7PmTXZoLM98Rjlk
         cSic7KLhL9zORzyP/boqoTxg3Kb4v6slKbwk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fm0KHdD3ZItvOsu8DBUk6T0kTZClWfqpjqEcxzF+STg=;
        b=ZxuPhJZ4w1kdipLRgjU6nOTBgFTtLGADXeIAUxG5GFqFxZizki7vfGqHzYqLxQjrzr
         C+xVDNC4Qz7kcLGLWdH6/6nIWTfsU8GSlB+r9Omn3JFl9vOK/Sl7a0La7oRum68QVy2S
         kwRo+o3/g7lDV3WbQGgPKpNHfVeKe4P8HqSCOveiRB/Tyl5d14G9pNoJ7LYLiq7YNpU2
         KgxdmLnpa56YYoE3zObCrrZdMwBaEmEBBIN8wgjn8LzT7cNeKNcEorqi6K9DO8rQwyMS
         lxl6CxUsaTyKqEyat1wmEQxmbvOoNnsnvynYoFRRKc8aWqYuFKNq7mAxYedyLMoFLXAk
         pcQw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWDigVxt3Ema/rE0qTyH7GMPU64130UHFU8Yhh3AuibieTK6dcE
	1OOkXehsBGJ0kopu75y8t1mJ5Q==
X-Google-Smtp-Source: APXvYqx24QC+xShc/mSCqObdkuUq5t2ehGHawfmFV2eMSZMyufFfZWQ25OofQ6sc5E7IsAh2o0lU4A==
X-Received: by 2002:ac8:4442:: with SMTP id m2mr19299377qtn.107.1560853820448;
        Tue, 18 Jun 2019 03:30:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:7743:: with SMTP id s64ls98410qkc.15.gmail; Tue, 18 Jun
 2019 03:30:20 -0700 (PDT)
X-Received: by 2002:a37:a094:: with SMTP id j142mr2289501qke.2.1560853820125;
        Tue, 18 Jun 2019 03:30:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560853820; cv=none;
        d=google.com; s=arc-20160816;
        b=LECe0WcB4C60rVbarmt6FqWP49utRXzds2ixc6CGMTlt0SR/XGdoIVdlQM9OnR89LG
         ixZ39I9+oVwoy02T0xinMihFd9qS9Bv7yORdyJvr2zltN5/Q4j9SnUzdVoh6x0HppALU
         loKGq6iG2lYDiE1/suDRpmM6S/08ANWC6el8rP2mOCw55tWdzWOmnfE9iSw+OmbCVVDs
         27kZQ0wevHR4JPjXDFy9E9sZazlXutg/M0nwfbqK/PrA4yNEYLVx5P0Z6/9iir2WBBjx
         rFXImjIV4cgFKnzBPQWUWlQj5AeQCJ/RKrkKRinm9prXgUuQvKlm17UM6d7TpmTmmfxw
         5Yqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wtQ3H/RqcO/beRnWTkfjA8r0vVjyM6yxlkekBWvD7LM=;
        b=KO0xmNGuhtmejH7SzPmxMPqulue5n6bl0sFhdqYdKq8XzvMVME/UV4y4g31a4spVSd
         qHfryZnees2m/sorRVGPHQNV1CxgE9itDKq4xJmiR6CwwpRKi1iylLKhiiTc6jR0jXiz
         BohOkxw+lJnSo+1U009VyEhuo+QuiNzLS4Xek0SoP8gwKWqiWs9cb6OyXwxVOjHEYF1t
         d7TCUZEh5Bg1Bldtu+ywk9fXPDjR4st6mw7R4dg0RTwI/AWNM1wwiI4ty22nQTxTeXhw
         0ZTQjeOlmOaIfx7HpYHnQp56C+3McS/yzUDfaXGQJ3PBM7KTzCIymc7uGuYb+bg2fmSM
         mMzw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GDTAByqq;
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id m44sor4092673qvc.70.2019.06.18.03.30.20
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 18 Jun 2019 03:30:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a0c:df8a:: with SMTP id w10mr15422264qvl.140.1560853819843;
        Tue, 18 Jun 2019 03:30:19 -0700 (PDT)
Received: from geeko ([186.212.50.252])
        by smtp.gmail.com with ESMTPSA id z126sm8586992qkb.7.2019.06.18.03.30.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 18 Jun 2019 03:30:18 -0700 (PDT)
Date: Tue, 18 Jun 2019 07:30:04 -0300
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	Alan Stern <stern@rowland.harvard.edu>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH 2/2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190618103001.GA9372@geeko>
References: <20190618013146.21961-1-marcos.souza.org@gmail.com>
 <20190618013146.21961-3-marcos.souza.org@gmail.com>
 <20190618064947.GB22457@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618064947.GB22457@kroah.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=GDTAByqq;       spf=pass
 (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jun 18, 2019 at 08:49:47AM +0200, Greg Kroah-Hartman wrote:
> On Mon, Jun 17, 2019 at 10:31:46PM -0300, Marcos Paulo de Souza wrote:
> > If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> > be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> > 
> > Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> > ---
> >  drivers/usb/storage/scsiglue.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> Where is patch 1/2 of this series?

You can find it here:
https://lore.kernel.org/lkml/20190618013146.21961-2-marcos.souza.org@gmail.com/

> 
> confused,
> 
> greg k-h

-- 
Thanks,
Marcos

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190618103001.GA9372%40geeko.
