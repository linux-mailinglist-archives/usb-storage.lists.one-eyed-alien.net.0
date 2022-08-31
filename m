Return-Path: <usb-storage+bncBD6LRVPZ6YGRBS7CXWMAMGQEFJVRRZA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BC95A8043
	for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 16:33:53 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id ay10-20020a05620a178a00b006bbcab9d554sf11899920qkb.13
        for <lists+usb-storage@lfdr.de>; Wed, 31 Aug 2022 07:33:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661956427; cv=pass;
        d=google.com; s=arc-20160816;
        b=izHx7aKXtcoo/c3us65y+zJ2/yYY8DkMTlkOjJP78HloHVOcg9SVjHV+wxWil8dbJc
         CpSGZeNsa2lDtqIJTibsjgZUrfoL+kePCCG/pHsFCm1ffvg7wvqcQnPmNycJWX5DqvNT
         GGrToyt32t1gLBAWyHLzdRn4H2mA2DSdOiUb9HpwDHbD1URnXwOVLwAjPP/hQRnK+/Kg
         4henirI4gz0cIkGbI/AS6AWOyfFiahitvnNY3H+T7gbal/2j/+9NLmCxkffoilAg5zNR
         nN8ASgJCkCev1NN7EH2vyG089C4Vbx+1F6G3lpi5gn05q+M1tremn2bOE2jdd6soTg42
         sxpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dkTCjbvAOHlcTXom6wxnfr2NZU3/YMSW2VgDJGdyWls=;
        b=lML1O1l6nBZTXFsnlM/DWkfa88dzVG6IHp9LPknjnlYMzgtnrjgRg6L+PSx38X8cMO
         3m3Uv9eSqoRW38AXcu7s3yv6rQvcTB6DQzSwoU5SK0iQU49kMbGY3ogMsgMl4sRBt141
         buSYvra13LO0miXovYz3/L3a0XGH/zhdXQkwkfSiJIJoXjfPzWvIeus08hkKYhZuUAEs
         KdJyMaZ3lZvdSUSP8Jw/+zknuRydUXbVzCF11mfMHjsLfgoV+00Zyj+3VOOQq6xER1lS
         ZN2HbLG0I8o0qywg002h90yj0aevYx7MhpVW3VSLV67rgygl9QaHXRcDyeeSx7J8DEXq
         txqg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=dkTCjbvAOHlcTXom6wxnfr2NZU3/YMSW2VgDJGdyWls=;
        b=jevjHnL1TYa7n7RaFpwtEfgZ3PX9J1R5zSiFRKXYlnP/eRQEo+8U1fI2iTPhWqmMvi
         E8R1WeuzpDUKEXZGq9+sDHLqXxwlgWUwIHzSxmJbXXZGqRDIRnue1j4pvqF4pfMfQBbZ
         GddLrluu5NgPy7EB26qE75SmtLFI89bZ52ttg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=dkTCjbvAOHlcTXom6wxnfr2NZU3/YMSW2VgDJGdyWls=;
        b=6JHoJ3s2nYm3E3JZN1M0noy2lzOXbH3DzbJH3ghVzZ6cKNLOlF/v4ewuk2PL/ZUVpi
         Rqlaf3nqHY8AGOidmpD2HiXfwjGMzqHgslJSHpW3qURDmZg/t6Zjq4jo+Ts6XPJqeeXP
         0tm6MJLLa1panFllqS6Rw3iiGIdRHEsCxTqQUQ9ps6N+IM10B7MwLJhRAuwmwEg/C3yb
         hEjKrM+62Mdw0pgsxIiBNz/lyjAdhcdtrdCls2mW14xN9WD7kliGq0eGNDCPxM3Bv/pq
         n1pDPAEQ44jGPiAlc8mWS67Uep7E5iBd4bqFbzWslV9wJdyCqLLy9HcT7qiIeRE89rNX
         cEvA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo10zXqD6jqUjVNO/WqRRLy0QHzLYUQI6NkO0EUvaCpnUmrkCqmH
	23nbtrsFzgQBRm20kgHeuG3/qg==
X-Google-Smtp-Source: AA6agR6mSmFb2YAZ9KWngiMqZM8mF3nqOkHzc9nV4UYGNZaRqxKrQAtLzluf81wNxxFZ0F2A8DrPow==
X-Received: by 2002:a05:622a:3c7:b0:343:7056:521f with SMTP id k7-20020a05622a03c700b003437056521fmr19469223qtx.226.1661956427160;
        Wed, 31 Aug 2022 07:33:47 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:8b82:0:b0:474:651c:ec46 with SMTP id r2-20020a0c8b82000000b00474651cec46ls6656705qva.6.-pod-prod-gmail;
 Wed, 31 Aug 2022 07:33:46 -0700 (PDT)
X-Received: by 2002:a05:6214:19ee:b0:497:3135:1722 with SMTP id q14-20020a05621419ee00b0049731351722mr20208901qvc.59.1661956426472;
        Wed, 31 Aug 2022 07:33:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661956426; cv=none;
        d=google.com; s=arc-20160816;
        b=bYf3JjUUA6rkygnDC/ZOtpj0V8Q4bu1CJujhBmsVEv6qmH+gcZ92DjoWXFP3EhchCT
         +z+HExU/68ajlT6URDj41NeLJpEwTKdRw0Sb+uomJB2ED/8PIqyqxTsl7K2VeoRQqN7Q
         u5BmO4EiEo6qdZdSg1Wwvw38AGVd5js6x+cTPIub7hLpC0T2bdN2ceMcBxGgFbYLl+oQ
         yT1JiTamHZAqdLdNZScLx+eGyVwcFACnVp+h/2FY7qTtUDOJoqwjJ/3y6hXUT7tmVsLF
         TioGv4ro/HhQgUjkiT8lAhhhQSTTe2/OfTeFm0U2eKhVW/uc21dQ+wki0Gsom1LjoLLb
         inVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=QraxZS0CLAyzs91Dd4CB1yY+j84ZUFfYIJPyANxYCBY=;
        b=YKZqlz1avG7jD+2h5M9bAHewm/Qp7m+7rGE78yqA+couOWpot3gGYMBQpVYWxAgQwm
         o+G+5tlTvtobvsm7AEAkEq4ElHzpbGjEWgq0Fr0dYLKqnvEz+t3UVVGkO65vqSKaVv18
         /oSEdZw/j7jJl8EDJOMyn2GOCAda9CCMm1hvmlmKSLmvciIqeCs7yZVpJNRa6Bg1oRkf
         LqSylQHMdPxmKwgOLpByfE46xDj5AP5N0dKjK4cxZSM71spoj6SCF3bNsoTFyyEfUM1h
         s+OWeXf+CuD39CsTnF9Y9PMak1pZHLDskVhQ2sslYUXJoYbq6XxaMnCThzPU48L8fi8S
         2IxA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id dm15-20020a05620a1d4f00b006b90743c8f6si7299210qkb.19.2022.08.31.07.33.46
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 31 Aug 2022 07:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 191927 invoked by uid 1000); 31 Aug 2022 10:33:45 -0400
Date: Wed, 31 Aug 2022 10:33:45 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: zenghongling <zhongling0719@126.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
Message-ID: <Yw9xSSAse3ATVRtk@rowland.harvard.edu>
References: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1661930031-21908-1-git-send-email-zhongling0719@126.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
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

On Wed, Aug 31, 2022 at 03:13:51PM +0800, zenghongling wrote:
> The UAS mode of Thinkplus and Hiksemi is reported to fail to work on
> several platforms with the following error message:
> 
> [   39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event for disabled endpoint or incorrect stream ring
> [   39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000000 00000000 1b000000 05038000
> 
> And when running iozone will disconnect from the USB controller, then after re-connecting the device
> will be offlined and not working at all.

Are you sure these failures are caused by bugs in the devices and not 
by bugs in the xHCI controller or its driver?

What happens if you plug one of these drives into a computer running 
Windows or Mac OSX?  Do those operating systems avoid using the UAS 
protocol with the drive?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw9xSSAse3ATVRtk%40rowland.harvard.edu.
