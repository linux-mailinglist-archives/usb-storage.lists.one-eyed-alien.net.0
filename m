Return-Path: <usb-storage+bncBCUJ7YGL3QFBBSGHQGMQMGQEZIG5QSQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x346.google.com (mail-ot1-x346.google.com [IPv6:2607:f8b0:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D64E5B6C29
	for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 13:04:42 +0200 (CEST)
Received: by mail-ot1-x346.google.com with SMTP id i12-20020a05683033ec00b0065409010fb1sf6376461otu.14
        for <lists+usb-storage@lfdr.de>; Tue, 13 Sep 2022 04:04:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663067081; cv=pass;
        d=google.com; s=arc-20160816;
        b=NY+Hu+aHGe4GbpfTKbHVDS9krQ1DuQDzZdmu1Ell4TYg+U01LEL9fB4GelYJaZTDRx
         3pYNYwikAo5AwBBF+yYjQPuSAyg4NDLN5reTcKsNR4lg0YOw8prU/2lssdB2CDsr9pjY
         KOwV0LSga07zq3vvqyIc2XT7Wj2XslqlWk68vnfx6QLw0HfHTp2P9ShV9E8ZllwwF01r
         QhF4b/DPMMflGMPQdITY3WLZdviMbMbD73sys3xqx5gJh0daBAUjuGmqRb+lLmZOkTKc
         R2PE8RFt2jJwWWf7QaRZfhraeLrhwItw04HtS+mBu2/CYBMym20ChZRPzcdqkDo+0cS/
         3zVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CRS4+2FuBSFglZgWr6LcMqoQottujeLd7iFoyoWfQ2E=;
        b=OkjlkC7wjfGfDqx4xNCv86fqSEj0n92fIQjjaEfNwoAPbCo0xhiWAz3fcdw9ghL3wb
         wu0Sk7xaXqIgAlAaQOrbj7cofLGjInhF3rGvGr3chwFuRPVxww8W8Qq0yRUqxqS8ycZl
         WBP24nzfa46clikOMekIwKztBtXLGiUqFpRmCH7wNm7bkLZxi3v51LnqwLtlBweYum2+
         UI3XXTk5IvTMvf2hl+82Iv89uvpWmTTXIUxJ3UC7wGRpPZ/7yvtpO4sxoSYzOK17mQ9I
         AKcEKPFZoUDHaf9q4+w9VO00fNG7f25AhJuuHYci4s839Qy1G3vkCGT13NJHFYxbcBF/
         xs0w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=QWEDd01P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=CRS4+2FuBSFglZgWr6LcMqoQottujeLd7iFoyoWfQ2E=;
        b=e9uQdhpVw/g8oLk+roGN03IpU2xZBNqpdul+fn9JKZSxsIVuThUjeB5DGTVgFCcWpW
         ft2L2aW6UGwttGyeHcv5gOolKFhTSs3o6NKmHoePEBiItPvN4KI01gqO0Ukn/PgWSAES
         Q4xvXsu6nHbAvznH09RrFeHmhOokT9o5GLD4M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=CRS4+2FuBSFglZgWr6LcMqoQottujeLd7iFoyoWfQ2E=;
        b=0AjSVO28okhJdUvkJoX3gsvTayz0Gjg2SjoBdw/NoPM14oyec52Md/u0OeNeibtiJ/
         PSr1Eccy0WrD/vlu5DBeBxYjHYeexzmRBBdaOyS0ursDua0PXAVgqOqaq+ZuX1HpYmoy
         3eD6pIKCHbaa2kkqXFBJ1zZh62UGDVaNMZkZHuQbu7++SuyBZA1glY8THznCynobaYdD
         KdvottsiXCQInuDch6V/5wUAtU1X0ohjObIsD0txgKjvLqIU1T63UD5j45dzBJnYjHWI
         eKN6wSQHEqoDEOKsuVa062UuTuhhH5K3rqExN8eASqrymUoWNGtaNaYxe7sUfHZYhaq/
         wtmA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3lm1D5Kj8K2BE+aYs+2EqYDfLMUySuF3jUWD/oeeTHnFplx1Xk
	H1wWvEHIEICjSAvI4CHG6ObMKw==
X-Google-Smtp-Source: AA6agR5US1hJoDfgPv2yo4WITnphXosKSEHlPn/UmJlUFyJ2iAGDzo+tjYvATcjLooQUx6aq7XC/2A==
X-Received: by 2002:a9d:6a11:0:b0:656:1b4:2d01 with SMTP id g17-20020a9d6a11000000b0065601b42d01mr2291103otn.61.1663067080714;
        Tue, 13 Sep 2022 04:04:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:51c3:b0:11e:47d1:a33a with SMTP id
 b3-20020a05687051c300b0011e47d1a33als5239703oaj.11.-pod-prod-gmail; Tue, 13
 Sep 2022 04:04:40 -0700 (PDT)
X-Received: by 2002:a05:6870:58a1:b0:11c:ab67:333f with SMTP id be33-20020a05687058a100b0011cab67333fmr1377969oab.103.1663067080260;
        Tue, 13 Sep 2022 04:04:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663067080; cv=none;
        d=google.com; s=arc-20160816;
        b=AJmD0tV9WpGB92TM6VMOLf1mpz7+JmiLc9Bfm/UH7vGNblummtdWiSUfpCwGRqwwzR
         gYMcUitYVSLTTdhJc3gKygYPEIWnd0zFThIds94TaHsHkEiFE6v9KlKLVEDsEEFQsKCd
         mBOxXir/4SlsXFjgIRovxlomFX6e199qXZMiGdtO2w9IBehCkIIO6k5KkwHFCsErWqN/
         9oWafgufVe3ZdE59UFbUfbrtsmjDa+VVo9mDGNclZl57UjIc2Jk5hjEjfJDbBl3jGcFQ
         DZQho8VAq95TsgD9xk2576kAe0tM+/hnXX+pS7ySBgyAVs4Y4OR/HAPyQBVuXptlwARE
         WDHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ca9drreHgOfQ9dPhtIyG8mcL3Qh2aXaVamluHD1NqEo=;
        b=dvRXWCEzxqgcoh6BjAsV7tgVVk4vtewTjhuGpPwPk0GKmA6ot4ZJIwN+zcdcNv3x0c
         6XTO66xc5IU69Ne7pNqZlzRj016yNkpJWwAgkAzwTVVBjp812EvKOPa2S8aD/wKPk2FJ
         9xG8QzJzKIwVG5ADVkk5Rq9WP9vb+Xeqd9/JOhaeDs+xAKFrhvhMc84ckR526jBLlA/b
         LL8XNjRW4nU8IuwKs61u9y6R6OeWThJRrAiAeS57pRHYI8Z1B7MS/yPnoY8UcY2FpPgJ
         l5K7BRqkBmn8KwwqC55n9HeDobv5TKDs5JE2vR9YCBoN9AFPMissniyrcaYw85Tepo4b
         IOEA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=QWEDd01P;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id a5-20020a05680804c500b0034feeab203esi566024oie.73.2022.09.13.04.04.40
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2022 04:04:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 01E9A6132D;
	Tue, 13 Sep 2022 11:04:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7E4CC433C1;
	Tue, 13 Sep 2022 11:04:38 +0000 (UTC)
Date: Tue, 13 Sep 2022 13:05:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sunghwan jung <onenowy@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] Revert "usb: storage: Add quirk for Samsung
 Fit flash"
Message-ID: <YyBj3/qTZiGUlV/3@kroah.com>
References: <20220913105059.10248-1-onenowy@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220913105059.10248-1-onenowy@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=QWEDd01P;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
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

On Tue, Sep 13, 2022 at 07:50:59PM +0900, sunghwan jung wrote:
> This reverts commit 86d92f5465958752481269348d474414dccb1552, which fix the timeout issue for "Samsung Fit Flash".
> 
> But the commit affects not only "Samsung Fit Flash" but also other usb storages that use the same controller and causes severe performance regression.

Please wrap your changelog text at 72 columns like your editor asked you
to when you made the commit.

Also, this is v2, please mark it as such and properly describe what
changed from v1 in the properly location as the documentation asks you
to.

Please fix up and send v3.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YyBj3/qTZiGUlV/3%40kroah.com.
