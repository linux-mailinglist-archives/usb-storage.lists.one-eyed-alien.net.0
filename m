Return-Path: <usb-storage+bncBCUJ7YGL3QFBBTGB5PUAKGQEHFJYMFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0595C87C
	for <lists+usb-storage@lfdr.de>; Tue,  2 Jul 2019 06:42:54 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id g21sf10142492pfb.13
        for <lists+usb-storage@lfdr.de>; Mon, 01 Jul 2019 21:42:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562042573; cv=pass;
        d=google.com; s=arc-20160816;
        b=lEQK1+w+Lz/pCO8GNOhTml0U2h1wbGyoRQYpnLpCadO8pcSJynF+Hd2ACQSru/KyeD
         dgTOecAbzK87Ill3Igb0sEOjwCDijRoe9Riu0mD5W5VfMDTL7estIQf4mGWP6d8R0JVu
         qWz/8jrTVuGVkSzUm6/SvjhU5X2mULC+Vj7KTh08RC6IfMMWHmHypqJhLy/707otKUKq
         QHE4TwrWIewytrA60BZbDRsombfRqWZ52CBqkwxkWRukoT8jaNamd1PiR+K5WeN2bFIf
         jTSMDd7LG1J0HFKgJvsQANwwR8TfWldfq/hTiAlmtsefVZ2tNrotHTKVgBk55WE3MflN
         Aejg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AyFiCYr8PHYsr1BWi6rU1+/wDX7FPpofrVvZKwiYdHE=;
        b=PQsG/jipxa97p3AFraRtfe2g9eNS4tv+4K79T1VX5hET6giJgb01Vm7Mb40BUe0tKK
         TyddV4iaHhZwaJIFy2/wdngrOxivVHgno5U/ybIHHunk8ghbzEoHrYFzqIZo4rLKCBjM
         hTX9WJK7S9VMroZwz6IIqzFMsMAejd3LYeKG51mRH7N+gcwXiScwJ+10h9//b8HAaUVr
         ArTPF1bGk1Q+FidVNMeyCn2UhCT56xPyQYLw2SkKWmAvM/YmLX/1i5dWRoBABJyWQEel
         bTS9RglvCzMnCTCptQOq0bI6ZzgJjthw34LpAzT8fjhVWnI63DcnSvoKaZkTJHlnt1au
         CCxw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BRtCNkd0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AyFiCYr8PHYsr1BWi6rU1+/wDX7FPpofrVvZKwiYdHE=;
        b=OLZcB8kC2U6nQESMwTWJUzobD1772jo9wA/9jcNFLD4+ccvcRIVw6iVZou1eQeB8Ab
         Y6+jhpLje5PtJchcJ7RC6sJh9ptEdJjdYmMzkNxu0d9Mz9NHtQ07ptz1DLNeyV6/etLI
         Dr3edC5JHLfbozC/GrJDRr876Nxg8+3B4/nWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AyFiCYr8PHYsr1BWi6rU1+/wDX7FPpofrVvZKwiYdHE=;
        b=mQjRocnO4mSQdU6mcDbrQg8A6UTbcT1wksWu2KmXsesZ2pqbYrkTBp78uj2A4uhmd+
         dvJPrv3EFAVLbQaD+fPDHmeoFcRM1m/N/Xk+l9BKxeFvTxGB0+EoYkQPpP8vJLCTCOBa
         3yLJmhvEXHw8Tarh5I4e9tYG9zWWx4Jcyrclg9XhJQLyIBIxSr9bBI4OOkumVb0pODXZ
         nds+sWpF0DrCbN6t6RXn+NVWABPmqD+CLe/xJC3lGg3ICysV+glRoqUhiCtjIlZLfnYv
         j63PXjAVmELB1hKm+pBUlREGgqPRFGx2aaLJ5tiRXmGWDTOUAr2Sn1PQYT3TwfggbhGz
         CBbA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWo/uARDDtRyLWj0ilt3YjEY6JfZfAtFJiI0t/FzASL3hy6oCvS
	/fKJsalQHcaeCnC9P8AEHaLTzQ==
X-Google-Smtp-Source: APXvYqyjewgO/OEn/ONtA53U7TjfeJefp0MTZlY038I1OClutH0SL5pRVKMCiyLDyRgwT05Mmv93Uw==
X-Received: by 2002:a63:db4b:: with SMTP id x11mr28208953pgi.254.1562042572655;
        Mon, 01 Jul 2019 21:42:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:5f87:: with SMTP id t129ls2288097pfb.8.gmail; Mon, 01
 Jul 2019 21:42:52 -0700 (PDT)
X-Received: by 2002:a63:db4b:: with SMTP id x11mr28208920pgi.254.1562042572123;
        Mon, 01 Jul 2019 21:42:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562042572; cv=none;
        d=google.com; s=arc-20160816;
        b=UaC7x1pjubQQ6flrdOcsPgIEHyCHaP5qiHOGOi/TUnfd4GlYiJQGr4jvwUBmtGVqza
         B4wmsw5bVAUwITfEoOnfFsIICa4xdBX80z1R9bPN+PuERYks/nAca2A1TacpE6Tlgcci
         elLny+XsvzHz4dWpVBuScoilQLHmC364zYs4nttg2WEir6XdUhUNK94tZRtck9hFuFmR
         cGL9Ga2aCGWIHaHPjdXDsHEKM0xQUSvxe0OssuLOkly/8ZdjgGlYF+Q64hOHx8h97Heh
         9Sb3HA8u6Z0sbegjwZlEErbh4+KF2MlaNU2iA4vnBDBNiGD698hLkrCDr5rILzEPsnNl
         M1zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=D7qPbo9lG1iLSMjWRCGX95frXOW0hZt+dYVxg0to+6w=;
        b=K495YtgCXPhztQOnsyvOnTtdDHrBArnMPK3qk8i1+jfpRuBbLWkUSf06WKKagC+0GZ
         WuC3YLFcmk7GqIsxXUi+TvEGHbKRCkiIIrsPrwDPyh6d4piA7iBtAIyzuQCIutKRQ9Ud
         BFa1QgI5fFSbucV9DdAo3cWCfpK+yyqQQkxUANNfCBNNmE2PQ4mVK6HygMB5Z+396rS6
         u6DQe3Ug9T75QpKZ19vDdq6MsO5ymDzyO0o/B3tVIO45/MspmBR7KgmN9OH7q2chrhlj
         ZYqxeLMI/BU4squlyOntM44PqSFT7f71Ha+9Bd/ORNSprBTDF9fL4WvtXKuFxXGgue03
         jaHQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BRtCNkd0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id a10si12839513pfc.55.2019.07.01.21.42.52
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Jul 2019 21:42:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5B129208C4;
	Tue,  2 Jul 2019 04:42:51 +0000 (UTC)
Date: Tue, 2 Jul 2019 06:42:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: JC Kuo <jckuo@nvidia.com>
Cc: linux-usb@vger.kernel.org, stern@rowland.harvard.edu,
	usb-storage@lists.one-eyed-alien.net, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH] usb: storage: skip only when uas driver is loaded
Message-ID: <20190702044249.GA694@kroah.com>
References: <20190701084848.32502-1-jckuo@nvidia.com>
 <20190701085248.GA28681@kroah.com>
 <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8e8e8703-8620-b625-4917-bbb8d999caa4@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BRtCNkd0;       spf=pass
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

On Tue, Jul 02, 2019 at 10:36:59AM +0800, JC Kuo wrote:
> On 7/1/19 4:52 PM, Greg KH wrote:
> > On Mon, Jul 01, 2019 at 04:48:48PM +0800, JC Kuo wrote:
> >> When usb-storage driver detects a UAS capable device, it ignores the
> >> device if CONFIG_USB_UAS is enabled. usb-storage driver assumes uas
> >> driver certainly will be loaded. However, it's possible that uas
> >> driver will not be loaded, for example, uas kernel module is not
> >> installed properly or it is in modprobe blacklist.
> >>
> >> In case of uas driver not being loaded, the UAS capable device will
> >> not fallback to work at Bulk-only-transfer mode. The device just
> >> disappears without any notification to user/userspace.
> >>
> >> This commit changes usb-storage driver to skip UAS capable device
> >> only when uas driver is already loaded to make sure the device will
> >> at least work with Bulk protocol.
> > 
> > But what happens if the driver is loaded afterward, because 'modprobe'
> > was called by the driver core (or it should have been, because this is a
> > device that supports that protocol)?
> If uas driver is loaded after usb-storage driver probed the device,
> the device will still work with Bulk-only protocol, though it can't
> make uses of streams.

Which is not a good thing, and is what the original code was there to
prevent happening.

> > I think you just broke working systems :(
> > 
> > Why wouldn't the UAS driver get loaded automatically if it is configured
> > in the system as it is today?
> An user might want to completely disable uas for some reason so he/she
> adds "blacklist uas" to modprobe conf file. I think in case of this,
> usb-storage driver has to enable this device with the legacy Bulk-only
> protocol instead of ignoring the device.

Why would they want to do that?  Where are people doing this in ways
that breaks their systems?

> As an alternative to this patch, I thought I could get uas driver
> loaded before usb-storage driver so I tried moving the functions in
> drivers/usb/storage/uas-detect.h into uas.c and letting usb-storage
> links uas_use_uas_driver() of uas.ko. However, that didn't work
> because uas driver actually depends on usb-storage driver for
> usb_stor_adjust_quirks(). There will be a recursive dependency.
> 
> Please let me know if there is better approach to avoid the issue.

If users blacklist the uas driver, that's their choice and they should
rebuild their kernel :)

Or better yet, talk to us to get the issue fixed for why they would want
to blacklist such a driver.

As it is, this patch is not acceptable.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190702044249.GA694%40kroah.com.
