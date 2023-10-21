Return-Path: <usb-storage+bncBCUJ7YGL3QFBBROMZ2UQMGQEOHCPWMY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x345.google.com (mail-ot1-x345.google.com [IPv6:2607:f8b0:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9F87D1C84
	for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 12:21:59 +0200 (CEST)
Received: by mail-ot1-x345.google.com with SMTP id 46e09a7af769-6ce26047c6esf2420700a34.2
        for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 03:21:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697883718; cv=pass;
        d=google.com; s=arc-20160816;
        b=nHjXMVGQgfejAc7Ipoyy+Emz7oPzEFjFFUhesgK8LJgvOb96h/FTTXKdnP8L0GhSh/
         5rYUyslPUAxq4acZKdxs4p+7rL7b4jMX2l22jEAWJKnvAiKaN0RBGwye3Oa68MPsZQcr
         RDof7UKjsXhidwA9F+V+FGHmSV+40kpx0cZJYjlL6RL5kXmeVrL0BHKvg6k7niQKXFqh
         hdCqm2IRVyqXMxhdUYB3r4j+fFzjhX9K9uRt1WwYldxpvALbiziidXBiXa1OTtzQJ456
         fMOSxfsy7vhH2O8337Nx0aB+qY2sPdnByq97IEJr8USmKC2BeWP23AwcMXdEeNWR+VIp
         WDfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fXjzKoqDKezYdnM2pkuTZ2e1aGH52SFNrrYyYAA7fjo=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=IXOldhNTujeXd1Th1uQYLOyUDASbKg9fej3whE0PDrCda5YNz0vWP4GXkDfYtZuni8
         uCvbL+QT/nXnfMRjie2pAc+H9Vqezpg69a3FFWxPDUqqZd4ZySbBsNI8QLOy0GnmpIXq
         3IaZE1rYXzZ0kYs6xb/fcRlxijFPnSaPN+0smOLaNl+hqiPRoLdHpyIYPUIv/5gZHKV1
         Bu90PCL3Rs6b0kSUjGa8B4TwW5W3fcBhckFA+Ma7mYd3PpV7rRW+ZVEvq+iFlFkIssaj
         vm5ipWjxUCoZVEU2/Ka/HZpAJbFwt+IMhL4uUt7Hd32/wx5WihOlFlMXyBjMM0jsLYeA
         +9tw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=wlOdTiTJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697883718; x=1698488518; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fXjzKoqDKezYdnM2pkuTZ2e1aGH52SFNrrYyYAA7fjo=;
        b=l1Pxl35tL7a30N/vqSLHBKT/D7B4iPNaGfiieh0zK89aYp6UCfpd5o4B4o0OYFKOTP
         Mez62yGVHezWKgBap87Dt2HPpQ6/Hoxs2qbG3vYMj2037Y5X3XKV4dFXJOTSzLcraOVc
         FETRgC78NhxyzGHmGSrQtHFzb4loUXIUC5syA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697883718; x=1698488518;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fXjzKoqDKezYdnM2pkuTZ2e1aGH52SFNrrYyYAA7fjo=;
        b=FwNNQFsf9/mz9qCgbK6dEK6rShA2t8AR2LuyA2y0kDttwlr5hjXfy5sQK7SrGH+vig
         oe1R5LXCIVK8AzqDl2oYAH3Dokdd4LGUZVWksB8fGaYvns9PLESNN0iJm3YR6lpn+/Gg
         DOWeglBJS9dpk/ZuRXAGhCvSN9lhTGvljiXNadpVr+zsAVsN2IlC8vBAw6NNFGcpTTZH
         AyQriSzRnPKYk4We7oUI+1NTmFpoJDzJIfLIbmfb9zzdHHcja6T4Crbh8rB4poggEEWf
         DAPQPpqA6LQmSmF1cZ8rntccFzQ+hrpqJGsDg4r3Yn5WOzWjKZJjggCk0qzMqsDRxhR2
         UjLQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yzhrfpmp6/XOYlV1l1hPyPWGQaz81rmjXGPYnT2PRD6ha2Dzydq
	duN6G3bLzN607DHlN3aAsULCdA==
X-Google-Smtp-Source: AGHT+IEa4iTXyQQkdWx5CtQjYKIDF3t/YIhGJTDmNwcq3b5ytr3/DYW1ZTFyqLJ4bjlnMwxaYdJShA==
X-Received: by 2002:a05:6830:140e:b0:6ce:2c8e:79f0 with SMTP id v14-20020a056830140e00b006ce2c8e79f0mr4521594otp.21.1697883717968;
        Sat, 21 Oct 2023 03:21:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:49c4:0:b0:581:e260:9936 with SMTP id z187-20020a4a49c4000000b00581e2609936ls1564186ooa.2.-pod-prod-09-us;
 Sat, 21 Oct 2023 03:21:57 -0700 (PDT)
X-Received: by 2002:a05:6808:188:b0:3a7:4876:6044 with SMTP id w8-20020a056808018800b003a748766044mr4397550oic.52.1697883717170;
        Sat, 21 Oct 2023 03:21:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697883717; cv=none;
        d=google.com; s=arc-20160816;
        b=hrQuXD6jclw58f2XZr4D/rOoeTg34BVPxqJfvVXWAYCzWc3TwhWT7woYA1yeA2Y3+c
         rT3NxqcZEY8Ec9oPiuZA7tLzNJSd33iW2AUIIqHQxmQo8MyKoAQ1Iu9pcdzIbbGcJUsQ
         TkVDD+yf4L2EndZBIctNSUnmyrP46ZhOwfdMZYCLCAmh3AX31H9bUzfAJ4gwJQyioTU0
         G1SqhmHo40ZwaWhj8w5myVLFJ6MKB33BukqsLoaGbrhR4YmRN2Xaxr6nNgoVYYB+EdLE
         ojinzsciTZaMXLjM8oKqo5w0uy0LXbzWxeaXCDnndJJOt/9GHsaAJSutoT01bjrzV8vw
         ePuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=f0IPcu0EBQGwwkEz7QG7aohMAPqf3PAZhvq2LNhT1LU=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=XjPzHVEn1P4JI4e4+UlzFoO738y4x7R/3H/Xw5l3o2cbFxjlfe75Ct2SDXhJWuwHsC
         DJX3m2qs/ED3UQqOJiNt7wKQBhFvUusB/O/0Ze9jSO8EwUnN6Fhu0OuompuSO30N2Rxc
         YlPrqJVNGYzNghIhTLR1iy4Sf2jakkZ0MxLpi7UJjlor33Ji1nFmUoqY5ugxzVZdSBzs
         aG+2kjkg425k4vt7Mj86ila/9hGlZ7cz5j/IejELFjpenBg3Mv2H9gHWgWVjQOap3K/w
         yRVikiFr6qQLBKrKe0ZnsiwzHC9dlidrM3J0/jykOjXA7azABu0noSS14a6wC7rRw7H+
         jecA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=wlOdTiTJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id eq19-20020a056808449300b003ab823d5d6fsi1162521oib.294.2023.10.21.03.21.57
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 03:21:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E52D860F14;
	Sat, 21 Oct 2023 10:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36119C433C8;
	Sat, 21 Oct 2023 10:21:56 +0000 (UTC)
Date: Sat, 21 Oct 2023 12:21:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org, stern@rowland.harvard.edu,
	oneukum@suse.com
Subject: [usb-storage] Re: [PATCH 5/7] usb-storage,uas: do not convert
 device_info for 64-bit platforms
Message-ID: <2023102110-waviness-corny-7bd6@gregkh>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <20231016072604.40179-6-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231016072604.40179-6-gmazyland@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=wlOdTiTJ;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Oct 16, 2023 at 09:26:02AM +0200, Milan Broz wrote:
> This patch optimizes the previous one for 64-bit platforms,

What is "previous one"?  We don't know that when we go and look at the
changelog in the future.

> where
> unsigned long is 64-bit, so we do not need to convert quirk flags
> to 32-bit index.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>

Why not just do it properly the first time?  You are fixing up a patch
that you added, which should not be needed.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102110-waviness-corny-7bd6%40gregkh.
