Return-Path: <usb-storage+bncBC7M5BFO7YCRBSFHXHVQKGQE6RO4GJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 8277BA67D2
	for <lists+usb-storage@lfdr.de>; Tue,  3 Sep 2019 13:51:37 +0200 (CEST)
Received: by mail-pg1-f199.google.com with SMTP id x19sf10797327pgx.1
        for <lists+usb-storage@lfdr.de>; Tue, 03 Sep 2019 04:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567511496; cv=pass;
        d=google.com; s=arc-20160816;
        b=nUiJWtJOOaT6h5yJW4tkK9A6MNLYDD3YlGlbPtWO9m3XOLBLRnLMeZuJoGTsDbi6vn
         MW1Sn9R/4jQFKV64LWeBhJr5GhXJ1Tp+U+wNUDB+5U2RCOlWih8LkqZ6inIjgW30lPIJ
         Jbq+6390UldmCUXygQBZuHAb/wR4AH2ZDytwRl5iGSvQ7T/uIQTZDoMPnHOMB2R38PH1
         o0pK208NozI44reVWGE+5/Y6Qbjbtp7PJPLHKvIfR7HqsAp7QFeYtpHBYSnuMcxyHrob
         ku+t6zVIhx8+SFGDDlxrItvun3rWbZc73WogHOgTthpu91ZhEQ5IiR/h37U35raaQgLa
         QlHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender;
        bh=KI0Ju2ZzPnBfVyvMR/EkraYxg40yJAEMDbzF7SfxNWY=;
        b=k0nHM15fwgpRpZ6lzrbZxb6vW3BAZ3Exh4hBeoN6FeYvW2XJKHCi4qdE8xhJZjEBO2
         RVN+H2r/0TXHzVzUV3559pVxVevagrMl7rr09R2EUZJMn6fHMxXU7D6nEARqRYkYhxcW
         4aXfjfXAP4f78AtI3XJO7mceYWue6RtQQHzHWuOF+jvSuRS8Muo1XyxS09H7tCRvqAQO
         B/wFFAgFHfoMM2aQARFo9kkog0WCEqvUFaoRfa4jHQkHFhyY6oVscGK8hRUPf62R64jg
         nkGKP2VfGB7q9LmrEEvkOqkhfzLPSRoMtP3bTAAKBQfgROUCpAAQOarJVoaemqz9KkAH
         +glw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzOKPbc4;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KI0Ju2ZzPnBfVyvMR/EkraYxg40yJAEMDbzF7SfxNWY=;
        b=j+QqdrJlKvleGWXNqA7+3bBDB9BexmwZ5CL79OU0umXkfyftKtBMRGPHXvoNnW1B5K
         iYE8jPcmfha903Esc1gjcPLYor+dHkJTiXntJcaEgaMGoWzjCW2CW1cRcRtJf/DZkeH3
         P+YPMYaLWah1QxFxpx6UL1rXn9yNdaFZtiwBb5AEwPCmh4Ga4H5EVMoDfx0NHfpgeG5S
         X4nTdgaaBwOZqH0taRF96OTqOOHFyXgicqOxiFIYZ8sgcSSQ02AlDCS9+/FpbSXUKm38
         fCzP2nQ9XYoYlyLaIcfgt2bTE3LSpFf7yDzy++aYcX66Z+Gk5Owi141T7Xb+6kXfFxdi
         lThQ==
X-Gm-Message-State: APjAAAUEiqjSBsXDU9GZe8cuPacZ6ZGGQ7I84EuBgx5721y5L0DD22FI
	Mp6s5DnbRo6WCvVVXdbmTf4LXw==
X-Google-Smtp-Source: APXvYqwlimjq4xrTBuiOPVXWvPp8Bfb6sk6RJc/x6sb1PBpEOO8O1SmTpShgQL068Sm0jvOWCjIO7A==
X-Received: by 2002:a63:9e56:: with SMTP id r22mr29900622pgo.221.1567511496102;
        Tue, 03 Sep 2019 04:51:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:6b81:: with SMTP id p1ls5545285plk.6.gmail; Tue, 03
 Sep 2019 04:51:35 -0700 (PDT)
X-Received: by 2002:a17:902:4545:: with SMTP id m63mr33892956pld.45.1567511495700;
        Tue, 03 Sep 2019 04:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567511495; cv=none;
        d=google.com; s=arc-20160816;
        b=kd5V+tH2NKn5m1Qqpws9cp+X5AsLPLA6hdofPmI9g0PQB+J7GHHlIHZqllnBfNDukX
         hu79YkpdL6Q57MvNmGSHx8Dxg4OH4V9Bvl/Ymczgr3Yxtb7pBkkLN6a+PZbN9DT1AAmo
         2h+zdtNdK9ZOe4Cq1bQQWiDnc/rAbei8/p95l+KrrOnAUBs5DR1u0Imd/b0NZkLbW+tv
         rVO6u+kcNfkj6PJPJHDbLpOoVKtZYLr09FKvllLZt+eXlUP5gnUI07QdbK6xYRx4dB/N
         MR57gZS0AhyLsV3T9yvWWFnY6pHFfNIzQ1ZrXUyaMfugkL/+hinhyoVqHpl6ZfxyyFqf
         87bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=t2PxMG5OIm2u7yWMEpUqisBZ79ACocY8nzC9BY2ai8g=;
        b=Y/ZnckJTOeteaGn/677PK1nqmNwSEulzzUXjRr7amdP0FxLKlXb5pyc9vKnnLWUxh/
         skMD4rfG8GyKm+aYcLv87d8oBiSWy9dVbf7DuZiEggwj9YYMKPkmkEK+HC3sEEXQjBgp
         oWOrZn44wAohJDNWCT77bhhH4k/AE4abdqrWfEVFo6xX3GFRytvBz94XX2c7i3OJcpsy
         QUbs0p5e+rIZuMZGX28dqu/vi5H0v+i4FAIlDWIk0qf3C/L9yZpZuteGdZzMlWAKs5y8
         iPeQRACzuNKksnqYVNZtTzxWL3LoZUAk98Z5p9FjB/82XcOuZweYfN4yiELgywpmr3jy
         WhmA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzOKPbc4;
       spf=pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id x27sor16053239pfr.11.2019.09.03.04.51.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 03 Sep 2019 04:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:aa7:9303:: with SMTP id 3mr19787525pfj.29.1567511495522;
        Tue, 03 Sep 2019 04:51:35 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id r23sm7173244pjo.22.2019.09.03.04.51.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Sep 2019 04:51:34 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 3 Sep 2019 04:51:33 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Christoph Hellwig <hch@lst.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Lee Jones <lee.jones@linaro.org>,
	Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 6/6] mfd: don't select DMA_DECLARE_COHERENT
 for the sm501 and tc6393xb drivers
Message-ID: <20190903115133.GA3543@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BzOKPbc4;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Tue, Sep 03, 2019 at 10:46:15AM +0200, Christoph Hellwig wrote:
> Now that these drivers use the usb localmem pool there is no need to
> select DMA_DECLARE_COHERENT.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Tested-by: Guenter Roeck <linux@roeck-us.net>

for SM501.

> ---
>  drivers/mfd/Kconfig | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index f129f9678940..c8cbde59bbf6 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -1105,7 +1105,6 @@ config MFD_SI476X_CORE
>  config MFD_SM501
>  	tristate "Silicon Motion SM501"
>  	depends on HAS_DMA
> -	select DMA_DECLARE_COHERENT
>  	 ---help---
>  	  This is the core driver for the Silicon Motion SM501 multimedia
>  	  companion chip. This device is a multifunction device which may
> @@ -1714,7 +1713,6 @@ config MFD_TC6393XB
>  	select GPIOLIB
>  	select MFD_CORE
>  	select MFD_TMIO
> -	select DMA_DECLARE_COHERENT
>  	help
>  	  Support for Toshiba Mobile IO Controller TC6393XB
>  
> -- 
> 2.20.1
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190903115133.GA3543%40roeck-us.net.
