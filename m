Return-Path: <usb-storage+bncBCUJ7YGL3QFBBY4T47UAKGQEAQX2WWQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D7F5B737
	for <lists+usb-storage@lfdr.de>; Mon,  1 Jul 2019 10:52:53 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id d3sf7250782pgc.9
        for <lists+usb-storage@lfdr.de>; Mon, 01 Jul 2019 01:52:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1561971172; cv=pass;
        d=google.com; s=arc-20160816;
        b=CdiOcqsq/Fcm9Y+nLvZPkbuqaDRWlq62KSljAtHc76tj1ikiB+9vbahMohjp4WQyFs
         5ZfkJ0Yq5MjJtSCBTKv6oqqse0srRlUr14uXxogSwepTS2PkF8WkgUJVAUcssLPBbkmQ
         pUeH0rGY1AdBvV8pBVuINJ7GeCczxcK20Ey2bBlExLKPEsuXRf1yugcH4CQRjqGTiuu0
         LcOfn78+YCe2ZVo5CuEmDFlK4f0MrxTgjtWcmo62Vtv+1NgysT74u0GFvpCfQhGpJ/WR
         rVXZcCTt2JnyE6fyEjsUnAa9XmlLU7agIKh/YSGNxLrQiDqrp1Og+20JxBqv4UPhI/xi
         OUew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ROMqUHxoFs7tgXyakJACaosUrljZ8MKzmv+QkfmxoIE=;
        b=ThSwOw1WEXb1vZQI+DN8RWaXyf6l8/FxVeNfE/RYlM5ynsvkKM2AFvODdMciRcFyvv
         5KShTjCMY0FdPrxOYxxSKFaq46diywMTHD4zpkbKTg1L9Mt20czslw/jl/5LMdUs1nSU
         N8BBB3s4xFQMfiMVkk74ui8AiZ7zkV9gKIpYXyggX6AfhZhbh3jJA9MsRuZOeexR4PAQ
         jGf2cLF65yTCrANKvDqmPo1S/ezti7/E77f1z5f8hCupW15M6OC0sCkSwC2TMpVy4HtL
         PbZwICumNjAXPDWvOqA/eMN2lTjfj8UU3GdD4RZxFXgbztRo/MZFL+LO6aFU32ULytjr
         skVg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K9HCOZBE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ROMqUHxoFs7tgXyakJACaosUrljZ8MKzmv+QkfmxoIE=;
        b=Xyn/zv2zMRiSlQQwLeumr1WJ75qSZxFLhtZf7WfCdxFxiJItbFTrn2UjwGsZ1hhuq8
         YHk3EBEGXjo9UYkPYe6QAdVZ3qsAL9vZtU/r+8In83eerNcvTnRsD3O2I0mSk3ReHwMY
         l9haAHJvj9WbGScEKpE3myXsgAYkW4lOGoLig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ROMqUHxoFs7tgXyakJACaosUrljZ8MKzmv+QkfmxoIE=;
        b=SyRNtJYH794X/roIDuWPwWmxmFnw+Pr/80SAvlsVLsahyJ/18VkjaF5wcU+LfB46Rc
         2fjXNFj58XGFbfNXqcido8UvL/HvimlHb+XRxp6d1SJoGz7is/GJVzmOqiwmxf6GOlHX
         7RMFdvR1fEEmQI9dCIwsu3dfoWYobefPoEtjofw0EJ8w3A9RvLFRr/U5eNnY72Zuihkj
         ZMeUn0Ic99SLJRWXMlM0tzKdlKPZIxYHfbbQcIST0aTvhGvUJNn3nbVJiq4gqeLMEZpg
         5Q1XA96M4QUfoWYoGbmK6U/AQ8ixs2GiSFwTNLTmXUu9Hh88b8sn0jY9YJASeAjg5Ctj
         I2Mw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXyVyCAs7dP8YtMSX5tLpcSTw+Ec3lvrRJOv3ffSpVNNCZ2H2j+
	QOsNaSbnzCozpoe2tb8hZukhTw==
X-Google-Smtp-Source: APXvYqzmxLegfuXRaGnGT+TKz29KIuVlm+aKjrTe2vK+wbx1i+/mb+CUnkJkwphj9zQ5kklA+YoGfA==
X-Received: by 2002:a17:90a:710c:: with SMTP id h12mr25174330pjk.36.1561971172219;
        Mon, 01 Jul 2019 01:52:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:7f86:: with SMTP id m6ls3407355pjl.4.canary-gmail;
 Mon, 01 Jul 2019 01:52:51 -0700 (PDT)
X-Received: by 2002:a17:902:a5c7:: with SMTP id t7mr24117087plq.288.1561971171633;
        Mon, 01 Jul 2019 01:52:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1561971171; cv=none;
        d=google.com; s=arc-20160816;
        b=fABiK/TukK0U1Ud/j0XEGkhEIK658zOvvfCezvZeBqie94fp4r9ljBy5RE3KAb9Prm
         b+eHc3nIShjfpG+OW/+BtqrTVAXG6hAxbQQeCNsKWaiJOUXugjVu7LsCVbfucpUcU2/X
         WT+Sh8W8P5toXzlM0XisX0nQZe2QZs5Xr7bWwR5luNyORvWeFD1I0OkfxWch8hsGGIBs
         XCSkVtkkhlUbcoCGcHw+vweGOS+MkAak0C63Czsl0mHuMpAi894J10pqLWlllZtrXB0w
         fmtQQbOilY7qP8ZfAanm0YNbA19zAtiQ67V6JS/gK4cr4ZzONu9oTZvenG0evz/pgN5V
         NdvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0PbIAUq9kjNrit3/SROp1X2idCq817AEKrkAMRLulaE=;
        b=UqdPqISjzfxW0jedpmZZac6JgnBLlxqvVtDsKzLEWvn8QWHwmfpF7OKviPmA5u5V7X
         96rLK5+40WX188cbM4nmm/o0UM33ekfAApVegUYdY9PmF8bV6c7/ca1oCe1a+V3jkrrO
         maEfwJwSt3/yBLP4UYbiUeH7112Ut3fg0KijWbPOcEbozlEivQcQYEyXLO/Na63BYwCY
         6reliC8yCa+f5i5abN/F6VQvXs9PbI5MUI5bzjisdCDtaPAi3xTEBdtnLcYMzfylGOFs
         fFRLIdndYW25R2hSXrhcHxvKj0vR3H6Z0VlMK1utmu9cMNVn7hjBPQamw6SJd2VUS87L
         1puw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K9HCOZBE;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id bh2si9901299plb.116.2019.07.01.01.52.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 01:52:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B81AA208C4;
	Mon,  1 Jul 2019 08:52:50 +0000 (UTC)
Date: Mon, 1 Jul 2019 10:52:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: JC Kuo <jckuo@nvidia.com>
Cc: linux-usb@vger.kernel.org, stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
Message-ID: <20190701085248.GA28681@kroah.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190701084848.32502-1-jckuo@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=K9HCOZBE;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Mon, Jul 01, 2019 at 04:48:48PM +0800, JC Kuo wrote:
> When usb-storage driver detects a UAS capable device, it ignores the
> device if CONFIG_USB_UAS is enabled. usb-storage driver assumes uas
> driver certainly will be loaded. However, it's possible that uas
> driver will not be loaded, for example, uas kernel module is not
> installed properly or it is in modprobe blacklist.
> 
> In case of uas driver not being loaded, the UAS capable device will
> not fallback to work at Bulk-only-transfer mode. The device just
> disappears without any notification to user/userspace.
> 
> This commit changes usb-storage driver to skip UAS capable device
> only when uas driver is already loaded to make sure the device will
> at least work with Bulk protocol.

But what happens if the driver is loaded afterward, because 'modprobe'
was called by the driver core (or it should have been, because this is a
device that supports that protocol)?

I think you just broke working systems :(

Why wouldn't the UAS driver get loaded automatically if it is configured
in the system as it is today?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190701085248.GA28681%40kroah.com.
