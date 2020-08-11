Return-Path: <usb-storage+bncBD6LRVPZ6YGRBJFWZP4QKGQELXQZJWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd47.google.com (mail-io1-xd47.google.com [IPv6:2607:f8b0:4864:20::d47])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C8D241F6C
	for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 19:53:42 +0200 (CEST)
Received: by mail-io1-xd47.google.com with SMTP id q20sf10228642iod.23
        for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 10:53:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597168421; cv=pass;
        d=google.com; s=arc-20160816;
        b=nAtmYbPzU//rokWNlqpDnyVkCLlI4+1v3aQtaom0YZQqaFSsQ6Aq+jD02kOFBVduY+
         28vASpQfE2iwbr44YetjKUTsCk2J5SHmNZ+WimO33qR1mgW1ce/29528C5bRUoMnRUVh
         F+ulQh4GFeHxFwyJmQ1uJiDllw8ihaZH7khtQGzVUczyonDSGf39orm1wTDImO0te+G3
         jwwHFZ3PFJU6AVFRUwSCtQqC4au4MttOtkUHPT5/+JbEnxloa4MD+RJKexbgHsssXxdg
         CZYZ3xpbBtVsbRJFjsCGK4c3YBD22AZJrFss9FrAX1kNVHEFV7ApnO4oxxnsZstzuDWe
         l31g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Z4Sx9EhDF0KQr/F/T8Cnmz4q/01Z5JEg+a0AzGRFM3c=;
        b=C8JaiT7tojQdiPO+VwD4/8eDYZGXB563jnRfUK+QwfdU/5b21QBucyIRXwqSnO/7Ct
         YUKkgv5kQAnkO3LquLjKLLawREgpy1u9RzMa832Yzk4ACG8AnA2BKwnDEq0NSWS3gV5j
         hhhJYaofXp+6OnED0pZJzU+bKMz0FHyjcFYU2LzhFVav1y7uj+2h+6k+eMQaMPQheWEO
         bobF2bPiRjSNVc3ezl4uJC1zv0MPvZLnIUf2FEtDlU6W6r0CuBqEUazRymo5Y02l4mbS
         JDg7ef7eUQ9ylCrBh2nG2q3sMsBl7kTpIXBWujkCjVUw6LGz74spQIumCPczJRn9QeFD
         sA+Q==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z4Sx9EhDF0KQr/F/T8Cnmz4q/01Z5JEg+a0AzGRFM3c=;
        b=DiZlbu1rmF0jadJTno/2wEzWMbOEdg7milyEFNXGMukcm1820eGvlP92G8tp10z+ZS
         7Dtrmt45jaqJg/bl705sf6DbElaUQlE4opLjPdeSc9bDPT3Q/nPVc3yBwQRW2nyR3vxH
         vzaT3YYDTRVKApc1tVpIPMnOMGWSgg/FNYNkI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z4Sx9EhDF0KQr/F/T8Cnmz4q/01Z5JEg+a0AzGRFM3c=;
        b=l9yVagfy9lDRdarg4EXGGCeooVsKnkRBQSCSXiGnZH7u8GWSPPEmKYymXHMPrsj1dT
         B7lWzvQbtlxtydM3Q8kbGlyyiXsJDG2euu8ttG4rfl9ggg71/Y8Y0juMSpLfMTM5S938
         ubbFqDdLFlRxiHiEE22RYWkFdsjQRXxGhcB4Qu0OHF6BdAmNY6hzvyVS1Kfaw7yyhRBt
         SRyngDUhUTD1FpY+cewVJAq5D2mcMm+RtbtiWoduuSQwb+GZg9up/wtKr6L4BxmON5Zr
         LHlF87223mVmW9OaslZ5DmjOXWTBWQKxKSj/GF7hfEYVFtXzKZLKyuxK5jj79yhXe6sd
         Zquw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532jVHCmcRAcXohfbo0jRj9ZpPLyBZD0BL2kPfLOiNNzrDe2W2yf
	xIKvzOSgCq7zkzJyWGqhWPYCBw==
X-Google-Smtp-Source: ABdhPJzC0bv8ucPxvaJb6owgG1zfb0KYVZ21NelOdZoVyKyzHiHKH9g8TUP/rgBuI0I8qSyA1EyX3A==
X-Received: by 2002:a92:cf52:: with SMTP id c18mr24256433ilr.44.1597168421024;
        Tue, 11 Aug 2020 10:53:41 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:108:: with SMTP id t8ls5265084ilm.7.gmail; Tue, 11
 Aug 2020 10:53:40 -0700 (PDT)
X-Received: by 2002:a92:d250:: with SMTP id v16mr22903225ilg.32.1597168420411;
        Tue, 11 Aug 2020 10:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597168420; cv=none;
        d=google.com; s=arc-20160816;
        b=SSuBj3IPfI3Xja1b08PxXNK7kMNQUZBa3yd7Q5qIFYoOiQbKiYxp1M/kYVrsRXsVim
         yurMySn9aU3g2VaswzyJAt0pMidOXICJkP6JVwaZR8DZXiKQDAvQHziWYoht5NXObFYX
         oBMiG6Cy751QtNLVmDdBtX0vK/0gbNGkaHNz0uEnjPSGk1UGcoFtM8RMgTykORyQP2ID
         2qHVO6LF0ChApcFZujbmsw2TaTOdfgacURg+USmNp78Aq0YxG0hyEaQAmbYxag05BJzN
         Kac9y3ONkeq9SJGnOJDFFOojNgUmc2Dl08m+S50BC99yr9xSlF1e3f1ID4gNRtS35NR4
         4uDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Zz6eKF0yNa/Fp8WzGJGCvqcSQy8LDn3DtaKmFniJjag=;
        b=LurjK79gqR8rfEMGj4hFv0Oc+/MKs6UCXyvU7a6H73eGW0tHnw/Cb95CDuveLPmPkf
         W3upRGsScgXm6HnMr2v7B0XSdiL5zmQHWhXVinPjruzYYNAsdYdE4z9CPFEESGpSwHcP
         uW43oHZGi5tGG1oBsTNCTBMVmuHYVtAE14nYLVCTr6Mg+2utPozsOVgmQfog/8PZ/l4D
         mjhVboeI3s5B44KY7jOQPDD3/NRJD5KaEu4u7rJul4Tn6ifYEDdejJu3bw7dLjGmZkJ8
         xFE7Oc3yXDPkmMDXE71OlReRxgwXhXKnfxopWdcaZcu331pRxaLSE3MgHyRZdKudTQvx
         q8Pw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id i10si18751702jaq.65.2020.08.11.10.53.40
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 11 Aug 2020 10:53:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 341684 invoked by uid 1000); 11 Aug 2020 13:53:38 -0400
Date: Tue, 11 Aug 2020 13:53:38 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Tom Rix <trix@redhat.com>
Cc: gregkh@linuxfoundation.org, acozzette@cs.hmc.edu,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: realtek_cr: fix return check for dma functions
Message-ID: <20200811175338.GB339805@rowland.harvard.edu>
References: <20200811151505.12222-1-trix@redhat.com>
 <20200811160348.GD335280@rowland.harvard.edu>
 <1f7d5a64-f264-4fed-bf90-b64e2693652d@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1f7d5a64-f264-4fed-bf90-b64e2693652d@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
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

On Tue, Aug 11, 2020 at 10:29:29AM -0700, Tom Rix wrote:
> 
> On 8/11/20 9:03 AM, Alan Stern wrote:
> > On Tue, Aug 11, 2020 at 08:15:05AM -0700, trix@redhat.com wrote:
> >> From: Tom Rix <trix@redhat.com>
> >>
> >> clang static analysis reports this representative problem
> >>
> >> realtek_cr.c:639:3: warning: The left expression of the compound
> >>   assignment is an uninitialized value. The computed value will
> >>   also be garbage
> >>     SET_BIT(value, 2);
> >>     ^~~~~~~~~~~~~~~~~
> >>
> >> value is set by a successful call to rts51x_read_mem()
> >>
> >> 	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
> >> 	if (retval < 0)
> >> 		return -EIO;
> >>
> >> A successful call to rts51x_read_mem returns 0, failure can
> >> return positive and negative values.  This check is wrong
> >> for a number of functions.  Fix the retval check.
> >>
> >> Fixes: 065e60964e29 ("ums_realtek: do not use stack memory for DMA")
> >> Signed-off-by: Tom Rix <trix@redhat.com>
> >> ---
> >>  drivers/usb/storage/realtek_cr.c | 36 ++++++++++++++++----------------
> >>  1 file changed, 18 insertions(+), 18 deletions(-)
> >>
> >> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> >> index 3789698d9d3c..b983753e2368 100644
> >> --- a/drivers/usb/storage/realtek_cr.c
> >> +++ b/drivers/usb/storage/realtek_cr.c
> >> @@ -481,16 +481,16 @@ static int enable_oscillator(struct us_data *us)
> >>  	u8 value;
> >>  
> >>  	retval = rts51x_read_mem(us, 0xFE77, &value, 1);
> >> -	if (retval < 0)
> >> +	if (retval != STATUS_SUCCESS)
> >>  		return -EIO;
> > Instead of changing all these call sites, wouldn't it be a lot easier 
> > just to change rts51x_read_mem() to make it always return a negative 
> > value (such as -EIO) when there's an error?
> >
> > Alan Stern
> 
> I thought about that but there was already existing (retval != 
> STATUS_SUCCESS) checks for these calls.

The only values that routine currently returns are 
USB_STOR_TRANSPORT_ERROR, -EIO, and 0.  None of the callers distinguish 
between the first two values, so you can just change the first to the 
second.

Note that STATUS_SUCCESS is simply 0.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200811175338.GB339805%40rowland.harvard.edu.
