Return-Path: <usb-storage+bncBD64ZMV5YYBRB66BV22QMGQEPOQNTEQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B9F944E7C
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 16:51:41 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-5d4fb8fc26dsf6431588eaf.0
        for <lists+usb-storage@lfdr.de>; Thu, 01 Aug 2024 07:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722523900; cv=pass;
        d=google.com; s=arc-20160816;
        b=W+rU+6CFvZfDQ9xFc7b96Dek1crI+DWSFD5slWC7ki1+wL4K538/GjgYy5ehCcGPHO
         Ks1BXLMiP34EJYKXh9LohVBvgjXgWcSPOeolCl/8I9wSFiuceruez1r7mGOdXgmeCXw2
         o/EHgMg0ZfnWuG5pztl7PvYsGBOquPSdLS60WcwFGyQ50baPgVU88cQaJyuW2oq3L3cN
         fEvMo3L5ydTMw2mHcX38HL48R6QTRPxLoh6l+27e5XXIOiYbmEO4xTDVGSHTlbz4+W60
         LGkPtT1qRhrCHIPZkqEMgGWaZGXbEMihjR2F5roUV3yo1HRFnVrgeNv4h5N21m+3WTqr
         l5oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5EgWyqXCGGOZaVgQ0U+cD5CmivVR59mxJ1yT5SgAbos=;
        fh=ypz8RDWNL28eS9n5znqQChdrt3m71Cz6y8HT0j2FhOc=;
        b=KNitBD6bArpW6FPdmTL3zfXg0bqpBTkylvWLdUUsVHtFlaxPXHDm7+BCOxVAs5pFkd
         UdpFNmo51dhQVK09+WOsvmTR5M6gmaZVIhruyersyCQ0fnrueJJXJdbfmQyyrzSlOMEV
         p+pFJsz3hHmLkpn/7T7lFYBXfiGzwt/ptJlKbaWYXNC3PJlqo7xS7uL1WWkKqYend0CT
         yPWgJ5o9q5HoG4JJXmKMU3WUqxlmRvMUGX3ldZxJTrnqKah+sKJ1NzvVy+H1d5hyZvch
         4J7toFilqHU670T4OgERcu1oRG8iCc7Kygje1aKClS7tDb4GTUjAq9/4AfTflmx8n8CG
         F/nA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=EHK6hatB;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722523900; x=1723128700; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5EgWyqXCGGOZaVgQ0U+cD5CmivVR59mxJ1yT5SgAbos=;
        b=DCCE+Fu87NfeJayM0Yzr5i8Qp1nN2Qeuc70zmJzOUWXuyjBVfoahre/tF3/r7YIe4z
         GWYMCc21q9oe4UR+WlHiF08sw/98Wt6qq8m59XR5ANI2HqeTZWIYUG4mlRA10080eATL
         K7KWHpFwDLJ0KJJDBwSAnXVhERIMihIW1H/08=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722523900; x=1723128700;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5EgWyqXCGGOZaVgQ0U+cD5CmivVR59mxJ1yT5SgAbos=;
        b=aSF1UOy8Gg++RAdGS7PGLkaN6LC+ETSWlY//bWqSQq1b38cw8ldCyPruJoh7AzG6pz
         c1IwRNOFzAKXYgGwtQBsUUzNNleoKvJJtUpXND+jyr4Zt3CF0RewB5oOWCMXcTN9JX2v
         Q78QF6FMbrAhDG41yj6zMjd57Z826gZAmdo3L0QsklRLFiJHUWTzFxZIZPaiLXZtypNc
         h9CEgnf+B3hfTUMlQoSDC0lArv3sAHGfretTKGfRJp/wMuMfhwHiFwhtz6PDJVKjy2SD
         kWvNRrTxtwME1hJYOa0wQrJG9LFNv6UOqxQxVzVu2TeLaKqUQEGXU8asLPk0iAfRdjKB
         xoQA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWq62yDYDRGqGaswGRf1deT2Hb/bh/0ZrJ3GIdmBfY8VPHzqurkXQf3CD0nNbTBluLiVhDwMZWx0bDRx7YwGM9i+X1ym4Vxsc/y
X-Gm-Message-State: AOJu0Yzbj7m54YhQcbh1x2izrQSdwXIgtqLhPjd3becPx0+rxaiYjSnI
	O0v0AFDTYVPaChk1QbPEjg17dxxAD+bLrIUwOYzNo5KCskiUILnI5WG/EzBAM4o=
X-Google-Smtp-Source: AGHT+IGWrddv0fmkgSThYMoku6V7vXzjqd4mxLuL0+w6fbK+CmXAx+wNIy1IZyWtDDweZJJtJKBWXA==
X-Received: by 2002:a05:6820:2220:b0:5b9:e7db:1cf8 with SMTP id 006d021491bc7-5d6636e4af5mr444592eaf.4.1722523899550;
        Thu, 01 Aug 2024 07:51:39 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:d2c8:0:b0:5c6:92d5:d6be with SMTP id 006d021491bc7-5d5ae936e4els8120913eaf.1.-pod-prod-09-us;
 Thu, 01 Aug 2024 07:51:38 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXJ9nwk/cy0L+ovTeJBTbkXN0ZO2CHhQpZ5XlNbCLf+P6WF6KQl0prU6GXaypY18ri0SXy5DgOX+FvcUbsXtf+0G/JJTo6qMlAiJUrOLmtRcQnVnFs=
X-Received: by 2002:a05:6830:6688:b0:709:450b:a3aa with SMTP id 46e09a7af769-709b99612e6mr375618a34.21.1722523898710;
        Thu, 01 Aug 2024 07:51:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722523898; cv=none;
        d=google.com; s=arc-20160816;
        b=Sd+qoMlN3xnmQOvJnprebNIuon18MueJOm9YRUjG4vr43qDs4R4knfONlD38TGU3wJ
         E9weG7wp893IgqqWo5aiHz2LvGMCbwYU7vS/OlQx7f4k7DGdTC5ecjKma0YNff30/WXD
         PjeBURmIf+97FwGtikXEEmyqJFg2/bfJaigzQFWn9VDyWRoCrZrEhCNOeM/13MBW+BxD
         ctDDmbISXvCiaI/VIqq7psA4qk740L10gTBG27A7GoJPWzcWrnTxpu9evdeOff5DcseQ
         I+m6B+w8dKWXarFZLvAPUNlmN2ggydJ7RHMnFyfGEe39oDfMzvz/yUH7iaxHKbxv+fxw
         DUXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eg0bXkfAj/+Bepz1s51Vu2b4PmWBXCOAEfolPp84uSo=;
        fh=LgC6e7bJifS7yzSnMPUje74Dd6h/QF+MSBXuCcWrq8w=;
        b=fdzP4qqs7a0SqhgT6ue8wFURo0lj+OCBTpVRMYYuFXkPfoMaPYoCkOlbvmWpzhf5AC
         xNwlxVtnCOfKLASUG89JvnQaQrushWPat29zQc/kMm0p97RGyplVHlu+W4jkmG5X4uje
         YL522XCW+Rab5Tu2O4vhavUrZQSfS+WWSkRQkdW8qJmabdWS/6Jv34VtaEZSQ9F2v3H2
         flJWVpxhzwHwQYd0X9nAKyCytxCCOh7HM1hi9zIBwDbXpPiuopccXiqMg77+yBEDdnKZ
         GWG7cVk8OrE6FfiDXQiYnQaIJ3JwD3HpWMNEttLSs878n0McYWupxrvvcClUpe7mVSQL
         XQkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=EHK6hatB;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 46e09a7af769-7095ae9db9asor2784665a34.14.2024.08.01.07.51.38
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 01 Aug 2024 07:51:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXwOYGFruCgbfiT8kn0I40g5puRLBBKKpk8tLERIdeqolJikDNGBZ2hZ3NaDYeqH9txSOlA1SI5rqz5ySrSX/8kdRDijERgNvxXcL8bL+RyQH7EQNQ=
X-Received: by 2002:a05:6830:628a:b0:709:2677:3435 with SMTP id 46e09a7af769-709b321d108mr403607a34.15.1722523898211;
        Thu, 01 Aug 2024 07:51:38 -0700 (PDT)
Received: from rowland.harvard.edu (nat-65-112-8-24.harvard-secure.wrls.harvard.edu. [65.112.8.24])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a20d6426f4sm159025485a.8.2024.08.01.07.51.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 07:51:37 -0700 (PDT)
Date: Thu, 1 Aug 2024 10:51:35 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Oliver Neukum <oneukum@suse.com>
Cc: Abhishek Tamboli <abhishektamboli9@gmail.com>,
	gregkh@linuxfoundation.org, usb-storage@lists.one-eyed-alien.net,
	linux-usb@vger.kernel.org, skhan@linuxfoundation.org,
	dan.carpenter@linaro.org, rbmarliere@gmail.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: storage: ene_ub6250: Fix right shift warnings
Message-ID: <890e0ed1-25c3-414e-9e8e-f5925fe8c778@rowland.harvard.edu>
References: <20240729182348.451436-1-abhishektamboli9@gmail.com>
 <e72cc56a-3066-4cb8-848d-bfe27a48c095@suse.com>
 <ZqkpOQIjcBSAg8rC@embed-PC.myguest.virtualbox.org>
 <5d7870b0-6b63-430b-8885-2509b33dc78a@suse.com>
 <804a6d40-73a4-4af6-944b-95e9324d7429@rowland.harvard.edu>
 <Zqp8vbbIC8E/XrQY@embed-PC.myguest.virtualbox.org>
 <b35a344a-018b-44ae-975a-7767a3d5b6ec@rowland.harvard.edu>
 <f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f5d4711f-9b4a-457c-b68c-c2e9aefbe4a8@suse.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=EHK6hatB;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Thu, Aug 01, 2024 at 08:54:18AM +0200, 'Oliver Neukum' via USB Mass Storage on Linux wrote:
> 
> 
> On 31.07.24 20:19, Alan Stern wrote:
> > On Wed, Jul 31, 2024 at 11:34:45PM +0530, Abhishek Tamboli wrote:
> > > On Wed, Jul 31, 2024 at 10:04:33AM -0400, Alan Stern wrote:
> 
> Hi,
> 
> I should make my reasoning clearer.
> 
> > > > Replacing the variable with a constant won't make much difference.  The
> > > > compiler will realize that bl_len has a constant value and will generate
> > > > appropriate code anyway.  I think just changing the type is a fine fix.
> 
> While that is absolutely true, it kind of removes the reason for the patch
> in the first place. The code gcc generates is unlikely to be changed.
> 
> We are reacting to a warning an automatic tool generates. That is a good thing.
> We should have clean code. The question is how we react to such a report.
> It just seems to me that if we fix such a warning, the code should really be clean
> after that. Just doing the minimum that will make the checker shut up is
> no good.

With this fix, the code seems clean to me.  It may not be as short as 
possible, but it's clean.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/890e0ed1-25c3-414e-9e8e-f5925fe8c778%40rowland.harvard.edu.
