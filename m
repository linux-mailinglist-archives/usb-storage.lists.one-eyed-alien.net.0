Return-Path: <usb-storage+bncBD6LRVPZ6YGRBGWM4SUQMGQEYB2OJ5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B0D7D6EAF
	for <lists+usb-storage@lfdr.de>; Wed, 25 Oct 2023 16:28:44 +0200 (CEST)
Received: by mail-oi1-x247.google.com with SMTP id 5614622812f47-3b3eba1fc32sf9563799b6e.0
        for <lists+usb-storage@lfdr.de>; Wed, 25 Oct 2023 07:28:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698244122; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qx0T4WKqXhssS31gBYLS6uYB51BHCUG9ex6FTZ3GM55pHMPbRm6mDPu6KJdbTyfpVk
         gaAq2ZVEaamGHDY50akWPSGUvhW81q/pMnqoNxYRJWR/T0MBGLjB30i3OjclVcHZM6lO
         cZkmLa5sUXQ43mVW2EkOJSoLdZHG87m1xCksXGnhU4le4nNESf9/llbO5ZkmHUVBCRyS
         /YTYBtHJGC4QesFMiqdDzc5b2VBoR6Br7PRWu6jWFosnOi4mz0jXYwkPdV6OAwWgsQZv
         EAEsvk0OF5dr+LQuOhMzid2X1fhtyGxx/+vsXBwmfzOOFrU3E5Jcc2N3bEyOFTFWd4M5
         EdYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZC8I6RkOi3HWpGEXtlYHJXGsM8qpi0aGYJykIp9vMpI=;
        fh=ikAxb0vA1SsOcj5RtR7msHd4l5tzxKxDpKDBYpixuTM=;
        b=NsYUj+O77DGPU+kWvpKfONQoHwAWUose6icIJqZ7j6yGhb2B7e4N+WmpWeVH//ENcg
         uLHd/wySdlRMW6p0LWPnx3IVMZckCw+z+Xn1N8fboCvmibPMr1scW9uCoX1bB0ZLSEMC
         yRupFApcPek9jKR8gNl7uUY/CC4GN6A6SbBzgqUez8M90fM7+SjTHVcghYI4UCkZUxha
         f7E9+xhB8E22M6D1o1ltbbDXiiEWErVGckEeyQxcsq1z3J+/o4O34wdapHaJfZYLtsjh
         NCFkNgJiqPAUCx4s1qtUWW/mmUzVoSpwi+IRlngELSBVm0CguJzsqS/pObxdBrYO69hU
         M5zg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698244122; x=1698848922; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZC8I6RkOi3HWpGEXtlYHJXGsM8qpi0aGYJykIp9vMpI=;
        b=C3P64A4h8X1mx+U0FPrgQDTDvx5zSXcn7VbvfJbVezxclAgFXpl4UhtjW4N6mG78q1
         U+kPmMOrIav1ZRsm5qWbsBcb0GyCQFP6N3gHwMiLoEWnkL5CLqzdN1ZR8GyUiStAGYzB
         CiEVIdFq/PM6sr5GXZPsezUK3v1R16R41MNxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244122; x=1698848922;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZC8I6RkOi3HWpGEXtlYHJXGsM8qpi0aGYJykIp9vMpI=;
        b=nOtO8oHVEGQ65d9Rh8q3GpEsYIi4fnYfrB4/OwcdSpVgB2KCuJuaCIGjLL6fFGpCvk
         4QvMjYk4IwYKxwp2hMWin/RWUE3Q2M7J+ZzfAxTqO1Ey2Dz0VwigjQpQnDVHOMO5uvo7
         g8vWD6jvUZq+igKiLYpECwVdru/PwCKpYk0V9QTArYzQSj+nUrVeLsRCgcBSYW6lrDms
         YsajFZWmcGTc0L6xnUzM1sJ7ddaEsUfucNAksUkBh/wiRtbLcXjm0PkuQl161CbfA9h1
         Bfi/dVEqR7kcxXqPFYGpxLjVS2gN5Li3WkoJJYa2gNIgnxwutqrPguIPlW7J68l8HjFd
         shaw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxgKCONKoSvXQ2vfuzKuwFmurkwxuSxH68jOzdrPWTvjOf2zzc3
	PGqP5hLoySEc1zGYaiONtqfkCg==
X-Google-Smtp-Source: AGHT+IEuYwCWo6sZJJljoQeLLIzvz2LmjhKXo08lawUAJQag8trWwFdn7u8XCaKKtY5eLNZjKUKJGg==
X-Received: by 2002:a05:6870:698a:b0:1e9:9c34:af67 with SMTP id my10-20020a056870698a00b001e99c34af67mr18183424oab.18.1698244122553;
        Wed, 25 Oct 2023 07:28:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:90ce:b0:1c3:e0f6:4173 with SMTP id
 s14-20020a05687090ce00b001c3e0f64173ls359883oab.2.-pod-prod-08-us; Wed, 25
 Oct 2023 07:28:42 -0700 (PDT)
X-Received: by 2002:a05:6358:1809:b0:168:e9d5:bb34 with SMTP id u9-20020a056358180900b00168e9d5bb34mr6699146rwm.14.1698244121791;
        Wed, 25 Oct 2023 07:28:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698244121; cv=none;
        d=google.com; s=arc-20160816;
        b=Ypfa8l0w8MVDyzO+pIlM/Pj0C6+OGzMH9oigFUCN5II2saH7Jf3b6q2JvZWObvxbXv
         Pu1Hrp3TumLLemi0tPxbz5E4M0bi0W7zJyQB91g3r52xaphIW3yOEWR+oamgOw0/oHn1
         DQ3R/LqWkHQgnsiAmy+TsUHa0O8Gj3nzQ7Je/9Hkf59xQyHV3mSe7dSt+9g5QtMr7kvi
         murj/DwfFhxwSfnFEpgdgW28JxjHVO4AO1c1Zc2jrHSjvg+46moobnKUbORTBNhdE9iL
         qwiF19D/EjexDwKZCkqkRB9PrS/7qchikmwVGSGMpt12bvWTJZWIxmXz7aBnqYjGN9DD
         KiKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=7fe6kaLoswCIpx0VDWpLmWoca1lXGif1MeSTKraPgdo=;
        fh=ikAxb0vA1SsOcj5RtR7msHd4l5tzxKxDpKDBYpixuTM=;
        b=U/deYUBGDLbHVNbjBG4i1AHGb6UWAup+vcELi+Klvje+nwIRAeKwp7qzUzC8Inw8u0
         7jM/GBZzdOPm66Fx+G5hcU4sSpKqO476IViUSlI7TnCEFAD1IWXw21jAUYLXTCV+MVUV
         WwwunThEBrtKuB3CuojkrtthtPBvWOopEWtvV3GqDFrBCbILscOAyoXGYe1QWjJpb5iL
         RWzo38kWUfRHu+YS+Q8ermo3HdOCkq3JRCbP6mKjzjTXlzz7vyIZt6uOcCHh423w4r1t
         ZSfU7cAXZUoagn/Mp9sx2iTNLFdb2oWCyUnTvlzfZ2OJyGAGIeQ/mogkKZz43CwNYfeL
         9iqQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id oq2-20020a056214460200b0066d02306e80si8846699qvb.184.2023.10.25.07.28.41
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 25 Oct 2023 07:28:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 495484 invoked by uid 1000); 25 Oct 2023 10:28:41 -0400
Date: Wed, 25 Oct 2023 10:28:41 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Oliver Neukum <oneukum@suse.com>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
  "Li, Meng" <Meng.Li@windriver.com>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Message-ID: <8ed3dd57-120a-49d2-817b-504d2f5523fc@rowland.harvard.edu>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
 <2023102428-zit-quickness-9b73@gregkh>
 <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
 <2023102459-protector-frequency-1033@gregkh>
 <a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2@rowland.harvard.edu>
 <bdac114d-2366-407a-bfe1-fca2bb035429@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <bdac114d-2366-407a-bfe1-fca2bb035429@suse.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Wed, Oct 25, 2023 at 11:07:07AM +0200, Oliver Neukum wrote:
> On 24.10.23 21:23, Alan Stern wrote:
> > Since USB class-device drivers don't have ->shutdown callbacks (there is
> > no shutdown() method in struct usb_driver), they don't know what's going
> > on while a shutdown or reboot is in progress.  All they see is a bunch
> > of errors.
> 
> Does this solve the issue? You'd have to flush the cache on the SCSI
> device further down in the tree, if you want this done properly.

Depends on what issue you're talking about.  The purpose of the proposed 
patch was not to make sure that the reboot happens cleanly; it was to 
prevent certain error messages from showing up in the system log.

Besides, Meng Li has decided to withdraw the patch submission.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8ed3dd57-120a-49d2-817b-504d2f5523fc%40rowland.harvard.edu.
